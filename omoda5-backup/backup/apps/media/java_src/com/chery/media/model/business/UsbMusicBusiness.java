package com.chery.media.model.business;

import android.car.Car;
import android.content.Context;
import android.content.DialogInterface;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.caradapter.carapi.interfaces.IPowerListener;
import com.chery.media.C0632R;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.StableMediaPlayer;
import com.chery.media.model.business.UsbScannerBusiness;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.util.Utils;
import com.chery.media.view.dialog.Dialog_SingleText;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class UsbMusicBusiness {
    public static final int FAST_PLAY_BACKWARD = -1;
    public static final int FAST_PLAY_FORWARD = 1;
    public static final int FAST_PLAY_NONE = 0;
    private static final int FAST_PLAY_STEP = 8000;
    private static final int FAST_PLAY_STEP_FREQ = 1000;
    public static final int PLAYLIST_ALL = 0;
    public static final int PLAYLIST_CUSTOM = 2;
    public static final int PLAYLIST_FOLDER = 1;
    public static final int PLAY_MODE_RANDOM = 1;
    public static final int PLAY_MODE_SEQ = 2;
    public static final int PLAY_MODE_SINGLE = 0;
    private static final String TAG = CarLog.concatTag("MEDIA", UsbMusicBusiness.class);
    private static UsbMusicBusiness instance;
    private AudioManager audioManager;
    private Context context;
    private Dialog_SingleText errorDialog;
    private Handler handler;
    private StableMediaPlayer musicPlayer;
    private Runnable runSaveRestoreInfo;
    private int currentUsb = -1;
    private List<OnCurrentUsbListener> currentUsbListeners = new ArrayList();
    private HashMap<Integer, PlayInfo> playInfoMap = new HashMap<>();
    private PlayInfo defaultPlayInfo = new PlayInfo(-1);
    private List<OnPlaylistInfoListener> playlistInfoListeners = new ArrayList();
    private List<OnPlayingInfoListener> playingInfoListeners = new ArrayList();
    private List<OnPlayModeListener> playModeListeners = new ArrayList();

    public interface OnCurrentUsbListener {
        void onCurrentUsbChanged(int r1);
    }

    public interface OnPlayModeListener {
        void onPlayModeChanged(int r1, int r2);
    }

    public interface OnPlayingInfoListener {
        void onDurationChanged(int r1, long j);

        void onFastPlayStatusChanged(int r1, int r2);

        void onPlayingStateChanged(int r1, boolean z);

        void onPositionChanged(int r1, long j);
    }

    public interface OnPlaylistInfoListener {
        void onCurrentPlayingChanged(int r1, MediaDef.UsbMusicInfo usbMusicInfo);

        void onPlaylistChanged(int r1, int r2, List<MediaDef.UsbMusicInfo> list);
    }

    private boolean canPlayByAudioFocus(int r2) {
        return r2 == 1 || r2 == 2;
    }

    public void addCurrentUsbListener(OnCurrentUsbListener onCurrentUsbListener) {
        if (this.currentUsbListeners.contains(onCurrentUsbListener)) {
            return;
        }
        this.currentUsbListeners.add(onCurrentUsbListener);
    }

    public void removeCurrentUsbListener(OnCurrentUsbListener onCurrentUsbListener) {
        this.currentUsbListeners.remove(onCurrentUsbListener);
    }

    private static class PlayInfo {
        public static final int RESTORE_END = 2;
        public static final int RESTORE_NONE = 0;
        public static final int RESTORE_RESET = 3;
        public static final int RESTORE_START = 1;
        public AudioManager.OnAudioFocusChangeListener audioFocusChangeListener;
        public AudioFocusRequest audioFocusRequest;
        public int audioFocusSource;
        public MediaDef.UsbMusicInfo currentPlaying;
        public Runnable fastPlayRun;
        public String playlistKey;
        public String usbName;
        public int usbType;
        public int playlistType = 0;
        public List<MediaDef.UsbMusicInfo> playlist = new ArrayList();
        public List<MediaDef.UsbMusicInfo> randomPlaylist = new ArrayList();
        public List<String> errorlist = new ArrayList();
        public boolean isPlaying = false;
        public long duration = 0;
        public long position = 0;
        public int audioFocus = -1;
        public boolean canPlay = false;
        public boolean playOnCanPlay = false;
        public int fastPlayStatus = 0;
        public int playMode = 2;
        public RestoreInfo restoreInfo = new RestoreInfo();
        public int restoreState = 0;

        public PlayInfo(int r4) {
            this.usbType = r4;
            this.usbName = MediaDef.getUsbName(r4);
        }

        public static class RestoreInfo {
            public String mountPath;
            public String playingMusic;
            public String playlistKey;
            public int playlistType = 0;
            public boolean isPlaying = false;
            public long position = 0;
            public int playMode = 2;

            public String toString() {
                return "RestoreInfo{mountPath='" + this.mountPath + "', playlistType=" + this.playlistType + ", playlistKey='" + this.playlistKey + "', playingMusic='" + this.playingMusic + "', isPlaying=" + this.isPlaying + ", position=" + this.position + ", playMode=" + this.playMode + '}';
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PlayInfo getPlayInfo(int r3) {
        if (this.playInfoMap.containsKey(Integer.valueOf(r3))) {
            return this.playInfoMap.get(Integer.valueOf(r3));
        }
        return this.defaultPlayInfo;
    }

    public void addPlaylistInfoListener(OnPlaylistInfoListener onPlaylistInfoListener) {
        if (this.playlistInfoListeners.contains(onPlaylistInfoListener)) {
            return;
        }
        this.playlistInfoListeners.add(onPlaylistInfoListener);
    }

    public void removePlaylistInfoListener(OnPlaylistInfoListener onPlaylistInfoListener) {
        this.playlistInfoListeners.remove(onPlaylistInfoListener);
    }

    public void addPlayingInfoListener(OnPlayingInfoListener onPlayingInfoListener) {
        if (this.playingInfoListeners.contains(onPlayingInfoListener)) {
            return;
        }
        this.playingInfoListeners.add(onPlayingInfoListener);
    }

    public void removePlayingInfoListener(OnPlayingInfoListener onPlayingInfoListener) {
        this.playingInfoListeners.remove(onPlayingInfoListener);
    }

    public void addPlayModeListener(OnPlayModeListener onPlayModeListener) {
        if (this.playModeListeners.contains(onPlayModeListener)) {
            return;
        }
        this.playModeListeners.add(onPlayModeListener);
    }

    public void removePlayModeListener(OnPlayModeListener onPlayModeListener) {
        this.playModeListeners.remove(onPlayModeListener);
    }

    public static UsbMusicBusiness getInstance() {
        if (instance == null) {
            instance = new UsbMusicBusiness();
        }
        return instance;
    }

    public void init(Context context) {
        PFLog.m25d(TAG, "init");
        this.context = context;
        this.handler = new Handler();
        this.audioManager = (AudioManager) this.context.getSystemService(Car.AUDIO_SERVICE);
        StableMediaPlayer stableMediaPlayer = new StableMediaPlayer("music");
        this.musicPlayer = stableMediaPlayer;
        stableMediaPlayer.init();
        this.musicPlayer.addCallbackListener(new StableMediaPlayer.CallbackListener() { // from class: com.chery.media.model.business.UsbMusicBusiness.1
            @Override // com.chery.media.model.business.StableMediaPlayer.CallbackListener
            public void onMediaChanged(int r1, String str) {
            }

            @Override // com.chery.media.model.business.StableMediaPlayer.CallbackListener
            public void onVideoSizeNotify(int r1, int r2, int r3) {
            }

            @Override // com.chery.media.model.business.StableMediaPlayer.CallbackListener
            public void onStateChanged(final int r10, int r11, final String str) {
                PlayInfo playInfo = UsbMusicBusiness.this.getPlayInfo(r10);
                PFLog.m25d(UsbMusicBusiness.TAG, String.format("onStateChanged %s %s %s current:%s", Integer.valueOf(r10), Integer.valueOf(r11), str, playInfo.currentPlaying));
                UsbMusicBusiness.this.setPlayingState(r10, r11 == 2);
                if (r11 == 4) {
                    if (playInfo.currentPlaying != null && playInfo.currentPlaying.path.equals(str) && playInfo.canPlay) {
                        if (UsbMusicBusiness.this.getPlayInfo(r10).playMode != 0) {
                            MediaDef.UsbMusicInfo nextMusic = UsbMusicBusiness.this.getNextMusic(r10);
                            if (nextMusic != null) {
                                PFLog.m25d(UsbMusicBusiness.TAG, String.format("nextMusic:%s", nextMusic));
                                UsbMusicBusiness.this.changeCurrentPlaying(r10, nextMusic);
                                UsbMusicBusiness.this.play(r10);
                                return;
                            }
                            return;
                        }
                        UsbMusicBusiness.this.seekTo(r10, 0L);
                        UsbMusicBusiness.this.play(r10);
                        return;
                    }
                    return;
                }
                if (r11 == 5 && playInfo.currentPlaying != null && playInfo.currentPlaying.path.equals(str)) {
                    if (!playInfo.errorlist.contains(str)) {
                        playInfo.errorlist.add(str);
                    }
                    if (playInfo.canPlay) {
                        if (UsbMusicBusiness.this.errorDialog == null) {
                            UsbMusicBusiness.this.errorDialog = new Dialog_SingleText(UsbMusicBusiness.this.context);
                            UsbMusicBusiness.this.errorDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.chery.media.model.business.UsbMusicBusiness.1.1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public void onDismiss(DialogInterface dialogInterface) {
                                    UsbMusicBusiness.this.errorDialog = null;
                                }
                            });
                            UsbMusicBusiness.this.errorDialog.showText(UsbMusicBusiness.this.context.getString(C0632R.string.media_usb_music_play_error), PathInterpolatorCompat.MAX_NUM_POINTS);
                        } else {
                            UsbMusicBusiness.this.errorDialog.show(PathInterpolatorCompat.MAX_NUM_POINTS);
                        }
                        UsbMusicBusiness.this.handler.postDelayed(new Runnable() { // from class: com.chery.media.model.business.UsbMusicBusiness.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                PlayInfo playInfo2 = UsbMusicBusiness.this.getPlayInfo(r10);
                                if (playInfo2.currentPlaying != null && playInfo2.currentPlaying.path.equals(str) && playInfo2.canPlay) {
                                    if (playInfo2.errorlist.size() < playInfo2.playlist.size()) {
                                        MediaDef.UsbMusicInfo nextMusic2 = UsbMusicBusiness.this.getNextMusic(r10);
                                        if (nextMusic2 == null || nextMusic2 == UsbMusicBusiness.this.getPlayInfo(r10).currentPlaying) {
                                            return;
                                        }
                                        PFLog.m25d(UsbMusicBusiness.TAG, String.format("nextMusic:%s", nextMusic2));
                                        UsbMusicBusiness.this.changeCurrentPlaying(r10, nextMusic2);
                                        UsbMusicBusiness.this.play(r10);
                                        return;
                                    }
                                    PFLog.m25d(UsbMusicBusiness.TAG, String.format("errorlist size(%s) >= playlist size(%s)", Integer.valueOf(playInfo2.errorlist.size()), Integer.valueOf(playInfo2.playlist.size())));
                                }
                            }
                        }, 500L);
                    }
                }
            }

            @Override // com.chery.media.model.business.StableMediaPlayer.CallbackListener
            public void onDurationChanged(int r1, long j) {
                UsbMusicBusiness.this.setDuration(r1, j);
            }

            @Override // com.chery.media.model.business.StableMediaPlayer.CallbackListener
            public void onPositionChanged(int r2, long j) {
                int r0 = UsbMusicBusiness.this.getPlayInfo(r2).fastPlayStatus;
                if (r0 == 0) {
                    UsbMusicBusiness.this.setPosition(r2, j);
                } else {
                    PFLog.m25d(UsbMusicBusiness.TAG, String.format("fastPlayStatus %s, not to setPosition", Integer.valueOf(r0)));
                }
            }
        });
        this.musicPlayer.addSeekCompleteListener(new StableMediaPlayer.OnSeekCompleteListener() { // from class: com.chery.media.model.business.UsbMusicBusiness.2
            @Override // com.chery.media.model.business.StableMediaPlayer.OnSeekCompleteListener
            public void onSeekComplete(int r2, long j) {
                UsbMusicBusiness.this.setPosition(r2, j);
                if (UsbMusicBusiness.this.getPlayInfo(r2).fastPlayStatus == 0) {
                    UsbMusicBusiness.this.saveRestoreInfo(r2, false);
                }
            }
        });
        for (int r9 = 0; r9 <= 0; r9++) {
            this.playInfoMap.put(Integer.valueOf(r9), new PlayInfo(r9));
        }
        int currentSource = this.audioManager.getCurrentSource();
        PFLog.m25d(TAG, "getCurrentSource : " + currentSource);
        int lastSource = this.audioManager.getLastSource();
        PFLog.m25d(TAG, "getLastSource : " + lastSource);
        Iterator<Integer> it = this.playInfoMap.keySet().iterator();
        while (it.hasNext()) {
            final int r2 = it.next().intValue();
            final PlayInfo playInfo = this.playInfoMap.get(Integer.valueOf(r2));
            this.musicPlayer.addPlayer(r2);
            playInfo.audioFocusSource = MediaDef.getUsbMusicAudioSource(r2);
            playInfo.audioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.chery.media.model.business.UsbMusicBusiness.3
                @Override // android.media.AudioManager.OnAudioFocusChangeListener
                public void onAudioFocusChange(int r5) {
                    PFLog.m25d(UsbMusicBusiness.TAG, String.format("%s onAudioFocusChange %d", playInfo.usbName, Integer.valueOf(r5)));
                    UsbMusicBusiness.this.setAudioFocus(r2, r5);
                }
            };
            Bundle bundle = new Bundle();
            bundle.putInt("key_car_source_type", playInfo.audioFocusSource);
            playInfo.audioFocusRequest = new AudioFocusRequest.Builder(1).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).addBundle(bundle).build()).setOnAudioFocusChangeListener(playInfo.audioFocusChangeListener).build();
            playInfo.canPlay = checkCanPlay(r2);
            if (currentSource == playInfo.audioFocusSource || (currentSource == 0 && lastSource == playInfo.audioFocusSource)) {
                requestAudioFocus(r2);
            }
            readRestoreInfo(r2);
        }
        UsbScannerBusiness.getInstance().addUsbDeviceInfoListener(new UsbScannerBusiness.OnUsbDeviceInfoListener() { // from class: com.chery.media.model.business.UsbMusicBusiness.4
            @Override // com.chery.media.model.business.UsbScannerBusiness.OnUsbDeviceInfoListener
            public void onMountStatusChanged(int r3, boolean z) {
                PlayInfo playInfo2 = UsbMusicBusiness.this.getPlayInfo(r3);
                if (z) {
                    playInfo2.restoreState = 0;
                    return;
                }
                if (playInfo2.restoreState != 0) {
                    UsbMusicBusiness.this.saveRestoreInfo(r3, true);
                }
                UsbMusicBusiness.this.changePlaylist(r3, 0, null);
                if (r3 == UsbMusicBusiness.this.currentUsb) {
                    UsbMusicBusiness.this.setCurrentUsb(-1);
                }
            }

            @Override // com.chery.media.model.business.UsbScannerBusiness.OnUsbDeviceInfoListener
            public void onScanInfoUpdate(int r10, int r11) {
                if (r11 == 34 || r11 == 35) {
                    MediaDef.UsbDeviceInfo usbDeviceInfo = UsbScannerBusiness.getInstance().getUsbDeviceInfo(r10);
                    if (usbDeviceInfo.musicsCount > 0) {
                        if (UsbMusicBusiness.this.currentUsb == -1) {
                            UsbMusicBusiness.this.setCurrentUsb(r10);
                        }
                        PlayInfo playInfo2 = UsbMusicBusiness.this.getPlayInfo(r10);
                        if (playInfo2.restoreState == 0) {
                            if (!usbDeviceInfo.mountPath.equals(playInfo2.restoreInfo.mountPath)) {
                                PFLog.m25d(UsbMusicBusiness.TAG, "mountPath not match, clear restore info");
                                playInfo2.restoreInfo = new PlayInfo.RestoreInfo();
                                playInfo2.restoreInfo.mountPath = usbDeviceInfo.mountPath;
                                playInfo2.restoreState = 3;
                                UsbMusicBusiness.this.setPlayMode(r10, 2);
                            } else {
                                playInfo2.restoreState = 1;
                                UsbMusicBusiness.this.setPlayMode(r10, playInfo2.restoreInfo.playMode);
                            }
                        }
                        if (playInfo2.restoreState == 3) {
                            UsbMusicBusiness.this.changePlaylist(r10, 0, null);
                            PFLog.m25d(UsbMusicBusiness.TAG, "restore reset end");
                            playInfo2.restoreState = 2;
                            UsbMusicBusiness.this.saveRestoreInfo(r10, false);
                            return;
                        }
                        if (playInfo2.restoreState == 1) {
                            PFLog.m25d(UsbMusicBusiness.TAG, "restore playlist");
                            UsbMusicBusiness.this.changePlaylist(r10, playInfo2.restoreInfo.playlistType, playInfo2.restoreInfo.playlistKey);
                            if (playInfo2.playlist.isEmpty()) {
                                if (r11 == 35) {
                                    PFLog.m25d(UsbMusicBusiness.TAG, "restore playlist failed, set all musics");
                                    UsbMusicBusiness.this.changePlaylist(r10, 0, null);
                                } else {
                                    PFLog.m25d(UsbMusicBusiness.TAG, "restore playlist next time");
                                }
                            }
                            if (playInfo2.currentPlaying == null) {
                                if (playInfo2.restoreInfo.playingMusic == null || playInfo2.restoreInfo.playingMusic.isEmpty()) {
                                    PFLog.m25d(UsbMusicBusiness.TAG, "restored music info invalid");
                                    UsbMusicBusiness.this.changeCurrentPlaying(r10, 0);
                                } else {
                                    UsbMusicBusiness.this.changeCurrentPlaying(r10, playInfo2.restoreInfo.playingMusic);
                                    if (playInfo2.currentPlaying != null) {
                                        PFLog.m25d(UsbMusicBusiness.TAG, "restore music success");
                                        PFLog.m25d(UsbMusicBusiness.TAG, "restore music position " + playInfo2.restoreInfo.position);
                                        UsbMusicBusiness.this.musicPlayer.seekTo(r10, playInfo2.restoreInfo.position);
                                        if (UsbMusicBusiness.this.musicPlayer.getActivatedKey() != r10) {
                                            UsbMusicBusiness.this.setPosition(r10, playInfo2.restoreInfo.position);
                                        }
                                    } else if (r11 == 35) {
                                        PFLog.m25d(UsbMusicBusiness.TAG, "restore music failed, set first");
                                        UsbMusicBusiness.this.changeCurrentPlaying(r10, 0);
                                    } else {
                                        PFLog.m25d(UsbMusicBusiness.TAG, "restore music next time");
                                    }
                                }
                            }
                            if (playInfo2.currentPlaying != null) {
                                PFLog.m25d(UsbMusicBusiness.TAG, "restore music play " + playInfo2.restoreInfo.isPlaying);
                                if (playInfo2.restoreInfo.isPlaying) {
                                    if (playInfo2.canPlay) {
                                        UsbMusicBusiness.this.play(r10);
                                    } else {
                                        playInfo2.playOnCanPlay = true;
                                    }
                                } else {
                                    playInfo2.playOnCanPlay = false;
                                }
                                PFLog.m25d(UsbMusicBusiness.TAG, "restore end");
                                playInfo2.restoreState = 2;
                                UsbMusicBusiness.this.saveRestoreInfo(r10, false);
                                return;
                            }
                            return;
                        }
                        if (playInfo2.restoreState == 2) {
                            PFLog.m25d(UsbMusicBusiness.TAG, "update playlist");
                            UsbMusicBusiness.this.changePlaylist(r10, playInfo2.playlistType, playInfo2.playlistKey);
                        }
                    }
                }
            }
        });
        CarAdapterUse.addCarPowerClientListener(new IPowerListener() { // from class: com.chery.media.model.business.UsbMusicBusiness.5
            @Override // com.chery.caradapter.carapi.interfaces.IPowerListener
            public void onStateChanged(final int r3) {
                UsbMusicBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.UsbMusicBusiness.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int r0 = r3;
                        if (r0 == 11) {
                            UsbMusicBusiness.this.updateCanPlay();
                            return;
                        }
                        if (r0 == 12 || r0 == 15 || r0 == 19) {
                            int currentSource2 = UsbMusicBusiness.this.audioManager.getCurrentSource();
                            PFLog.m25d(UsbMusicBusiness.TAG, "getCurrentSource : " + currentSource2);
                            int lastSource2 = UsbMusicBusiness.this.audioManager.getLastSource();
                            PFLog.m25d(UsbMusicBusiness.TAG, "getLastSource : " + lastSource2);
                            if (currentSource2 == 0 || currentSource2 == 100) {
                                Iterator it2 = UsbMusicBusiness.this.playInfoMap.keySet().iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    int r22 = ((Integer) it2.next()).intValue();
                                    if (lastSource2 == ((PlayInfo) UsbMusicBusiness.this.playInfoMap.get(Integer.valueOf(r22))).audioFocusSource) {
                                        UsbMusicBusiness.this.requestAudioFocus(r22);
                                        break;
                                    }
                                }
                            }
                            UsbMusicBusiness.this.updateCanPlay();
                        }
                    }
                });
            }
        });
    }

    public boolean requestAudioFocus(int r7) {
        PlayInfo playInfo = getPlayInfo(r7);
        PFLog.m25d(TAG, "requestAudioFocus " + playInfo.usbName);
        if (playInfo.audioFocusRequest == null) {
            PFLog.m25d(TAG, "audioFocusRequest null");
            return false;
        }
        int r0 = this.audioManager.requestAudioFocus(playInfo.audioFocusRequest);
        PFLog.m25d(TAG, String.format("requestAudioFocus ret:%d", Integer.valueOf(r0)));
        if (r0 != 1) {
            return false;
        }
        setAudioFocus(r7, 1);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentUsb(int r4) {
        if (r4 == this.currentUsb) {
            return;
        }
        PFLog.m25d(TAG, "setCurrentUsb : " + getPlayInfo(r4).usbName);
        this.currentUsb = r4;
        Iterator<OnCurrentUsbListener> it = this.currentUsbListeners.iterator();
        while (it.hasNext()) {
            it.next().onCurrentUsbChanged(r4);
        }
    }

    public int getCurrentUsb() {
        return this.currentUsb;
    }

    public List<MediaDef.UsbMusicInfo> getPlaylist(int r2) {
        return new ArrayList(getPlayInfo(r2).playlist);
    }

    public int getPlaylistType(int r1) {
        return getPlayInfo(r1).playlistType;
    }

    public void changePlaylist(int r5, int r6, String str) {
        PFLog.m25d(TAG, String.format("changePlaylist usb:%s playlistType:%d playlistKey:%s", getPlayInfo(r5).usbName, Integer.valueOf(r6), str));
        if (r6 == 0) {
            changePlaylist(r5, r6, str, UsbScannerBusiness.getInstance().getMusics(r5));
        } else {
            if (r6 != 1) {
                return;
            }
            MediaDef.UsbFolderInfo folderInfo = UsbScannerBusiness.getInstance().getFolderInfo(r5, str);
            changePlaylist(r5, r6, str, folderInfo != null ? folderInfo.musicInfos : new ArrayList<>());
        }
    }

    public void changePlaylist(int r8, int r9, String str, List<MediaDef.UsbMusicInfo> list) {
        PlayInfo playInfo = getPlayInfo(r8);
        boolean z = true;
        PFLog.m25d(TAG, String.format("changePlaylist usb:%s playlistType:%d playlist size:%d", playInfo.usbName, Integer.valueOf(r9), Integer.valueOf(list.size())));
        if (r9 == playInfo.playlistType && isPlaylistSame(list, playInfo.playlist)) {
            PFLog.m25d(TAG, "playlist no change!");
            return;
        }
        playInfo.playlistType = r9;
        playInfo.playlistKey = str;
        playInfo.playlist.clear();
        playInfo.playlist.addAll(list);
        playInfo.randomPlaylist = Utils.generateRandomList(list);
        playInfo.errorlist.clear();
        ArrayList arrayList = new ArrayList(list);
        Iterator<OnPlaylistInfoListener> it = this.playlistInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onPlaylistChanged(r8, r9, arrayList);
        }
        if (playInfo.currentPlaying != null) {
            if (playInfo.playlist.isEmpty()) {
                setCurrentPlaying(r8, (MediaDef.UsbMusicInfo) null);
            } else if (!playInfo.playlist.contains(playInfo.currentPlaying)) {
                int r92 = 0;
                while (true) {
                    if (r92 >= playInfo.playlist.size()) {
                        z = false;
                        break;
                    }
                    MediaDef.UsbMusicInfo usbMusicInfo = playInfo.playlist.get(r92);
                    if (usbMusicInfo.path.equals(playInfo.currentPlaying.path)) {
                        setCurrentPlaying(r8, usbMusicInfo);
                        break;
                    }
                    r92++;
                }
                if (!z) {
                    setCurrentPlaying(r8, (MediaDef.UsbMusicInfo) null);
                }
            }
        }
        saveRestoreInfo(r8, false);
    }

    private boolean isPlaylistSame(List<MediaDef.UsbMusicInfo> list, List<MediaDef.UsbMusicInfo> list2) {
        if (list == list2) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        for (int r1 = 0; r1 < list.size(); r1++) {
            if (!list.get(r1).path.equals(list2.get(r1).path)) {
                return false;
            }
        }
        return true;
    }

    private void setCurrentPlaying(int r6, MediaDef.UsbMusicInfo usbMusicInfo) {
        PlayInfo playInfo = getPlayInfo(r6);
        if (usbMusicInfo == playInfo.currentPlaying) {
            return;
        }
        if (usbMusicInfo != null && playInfo.currentPlaying != null && usbMusicInfo.path.equals(playInfo.currentPlaying.path)) {
            PFLog.m25d(TAG, "info is same");
            return;
        }
        PFLog.m25d(TAG, String.format("setCurrentPlaying usb:%s currentPlaying:%s", playInfo.usbName, usbMusicInfo));
        playInfo.currentPlaying = usbMusicInfo;
        if (usbMusicInfo != null) {
            setDuration(r6, usbMusicInfo.duration);
            this.musicPlayer.setMedia(r6, usbMusicInfo.path);
        } else {
            this.musicPlayer.setMedia(r6, null);
        }
        Iterator<OnPlaylistInfoListener> it = this.playlistInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onCurrentPlayingChanged(r6, usbMusicInfo);
        }
        saveRestoreInfo(r6, false);
    }

    public MediaDef.UsbMusicInfo getCurrentPlaying(int r1) {
        return getPlayInfo(r1).currentPlaying;
    }

    public int getCurrentPlayingPosition(int r1) {
        PlayInfo playInfo = getPlayInfo(r1);
        return playInfo.playlist.indexOf(playInfo.currentPlaying);
    }

    public void changeCurrentPlaying(int r6, MediaDef.UsbMusicInfo usbMusicInfo) {
        PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("to changeCurrentPlaying usb:%s musicInfo:%s", playInfo.usbName, usbMusicInfo));
        if (playInfo.playlist.contains(usbMusicInfo)) {
            setCurrentPlaying(r6, usbMusicInfo);
        } else if (usbMusicInfo != null) {
            changeCurrentPlaying(r6, usbMusicInfo.path);
        }
    }

    public void changeCurrentPlaying(int r6, String str) {
        PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("to changeCurrentPlaying usb:%s musicPath:%s", playInfo.usbName, str));
        for (MediaDef.UsbMusicInfo usbMusicInfo : playInfo.playlist) {
            if (usbMusicInfo.path.equals(str)) {
                setCurrentPlaying(r6, usbMusicInfo);
                return;
            }
        }
    }

    public void changeCurrentPlaying(int r6, int r7) {
        PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("to changeCurrentPlaying usb:%s index:%s", playInfo.usbName, Integer.valueOf(r7)));
        if (r7 < 0 || r7 >= playInfo.playlist.size()) {
            return;
        }
        setCurrentPlaying(r6, playInfo.playlist.get(r7));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayingState(int r7, boolean z) {
        PlayInfo playInfo = getPlayInfo(r7);
        if (z == playInfo.isPlaying) {
            return;
        }
        PFLog.m25d(TAG, String.format("setPlayingState usb:%s playingState:%s", playInfo.usbName, Boolean.valueOf(z)));
        playInfo.isPlaying = z;
        Iterator<OnPlayingInfoListener> it = this.playingInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onPlayingStateChanged(r7, z);
        }
        saveRestoreInfo(r7, false);
    }

    public boolean isPlaying(int r1) {
        return getPlayInfo(r1).isPlaying;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDuration(int r6, long j) {
        PlayInfo playInfo = getPlayInfo(r6);
        if (j == playInfo.duration) {
            return;
        }
        PFLog.m25d(TAG, String.format("setDuration usb:%s duration:%d", playInfo.usbName, Long.valueOf(j)));
        playInfo.duration = j;
        Iterator<OnPlayingInfoListener> it = this.playingInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onDurationChanged(r6, j);
        }
    }

    public long getDuration(int r1) {
        return getPlayInfo(r1).duration;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPosition(int r4, long j) {
        PlayInfo playInfo = getPlayInfo(r4);
        if (j == playInfo.position) {
            return;
        }
        playInfo.position = j;
        Iterator<OnPlayingInfoListener> it = this.playingInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onPositionChanged(r4, j);
        }
    }

    public long getPosition(int r1) {
        return getPlayInfo(r1).position;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAudioFocus(int r6, int r7) {
        PlayInfo playInfo = getPlayInfo(r6);
        if (r7 == playInfo.audioFocus) {
            return;
        }
        PFLog.m25d(TAG, String.format("setAudioFocus usb:%s focus:%d", playInfo.usbName, Integer.valueOf(r7)));
        playInfo.audioFocus = r7;
        updateCanPlay(r6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCanPlay() {
        Iterator<Integer> it = this.playInfoMap.keySet().iterator();
        while (it.hasNext()) {
            updateCanPlay(it.next().intValue());
        }
    }

    private void updateCanPlay(int r7) {
        PlayInfo playInfo = this.playInfoMap.get(Integer.valueOf(r7));
        boolean zCheckCanPlay = checkCanPlay(r7);
        if (zCheckCanPlay == playInfo.canPlay) {
            return;
        }
        PFLog.m25d(TAG, String.format("updateCanPlay usb:%s canPlay:%s", playInfo.usbName, Boolean.valueOf(zCheckCanPlay)));
        playInfo.canPlay = zCheckCanPlay;
        if (zCheckCanPlay) {
            if (playInfo.playOnCanPlay) {
                play(r7);
            }
        } else {
            playInfo.playOnCanPlay = playInfo.isPlaying;
            stopFastPlay(r7);
            pause(r7);
        }
    }

    private boolean checkCanPlay(int r6) {
        PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("checkCanPlay[%s]", playInfo.usbName));
        int currentPowerMode = CarAdapterUse.getCarPowerClient().getCurrentPowerMode();
        if (currentPowerMode != 12 && currentPowerMode != 15 && currentPowerMode != 19) {
            PFLog.m25d(TAG, String.format("checkCanPlay[%s] power(%d) not run", playInfo.usbName, Integer.valueOf(currentPowerMode)));
            return false;
        }
        if (!canPlayByAudioFocus(playInfo.audioFocus)) {
            PFLog.m25d(TAG, String.format("checkCanPlay[%s] no audio focus", playInfo.usbName));
            return false;
        }
        PFLog.m25d(TAG, String.format("checkCanPlay[%s] true", playInfo.usbName));
        return true;
    }

    public void play(int r7) {
        PlayInfo playInfo = getPlayInfo(r7);
        PFLog.m25d(TAG, String.format("play %s canPlay:%s", playInfo.usbName, Boolean.valueOf(playInfo.canPlay)));
        if (playInfo.currentPlaying == null) {
            if (playInfo.playlist.isEmpty()) {
                PFLog.m25d(TAG, String.format("%s playlist is empty!", playInfo.usbName));
                return;
            }
            changeCurrentPlaying(r7, 0);
        }
        setCurrentUsb(r7);
        if (playInfo.canPlay) {
            int volumeGroupIdForUsage = CarAdapterUse.getCarVolumeClient().getVolumeGroupIdForUsage(1);
            if (CarAdapterUse.getCarVolumeClient().getGroupMute(volumeGroupIdForUsage)) {
                CarAdapterUse.getCarVolumeClient().setGroupMute(volumeGroupIdForUsage, false, 0);
            }
            this.musicPlayer.activePlayer(r7);
            if (this.musicPlayer.getState(r7) == 5) {
                this.musicPlayer.setMedia(r7, playInfo.currentPlaying.path);
                this.musicPlayer.seekTo(r7, playInfo.position);
            }
            this.musicPlayer.play(r7);
            return;
        }
        playInfo.playOnCanPlay = true;
        if (canPlayByAudioFocus(playInfo.audioFocus)) {
            return;
        }
        requestAudioFocus(r7);
    }

    public void pause(int r5) {
        PFLog.m25d(TAG, String.format("pause %s", getPlayInfo(r5).usbName));
        this.musicPlayer.pause(r5);
    }

    public void playPause(int r5) {
        PFLog.m25d(TAG, String.format("playPause %s", getPlayInfo(r5).usbName));
        if (isPlaying(r5)) {
            pause(r5);
        } else {
            play(r5);
        }
    }

    public void setPlayOnCanPlay(int r4, boolean z) {
        PlayInfo playInfo = getPlayInfo(r4);
        PFLog.m25d(TAG, String.format("setPlayOnCanPlay %s %s", playInfo.usbName, Boolean.valueOf(z)));
        playInfo.playOnCanPlay = z;
    }

    public void playNext(int r7) {
        MediaDef.UsbMusicInfo nextMusic;
        PlayInfo playInfo = getPlayInfo(r7);
        PFLog.m25d(TAG, String.format("playNext %s", playInfo.usbName));
        if (playInfo.playlist.isEmpty() || (nextMusic = getNextMusic(r7)) == null) {
            return;
        }
        PFLog.m25d(TAG, String.format("nextMusic:%s", nextMusic));
        if (nextMusic == playInfo.currentPlaying) {
            seekTo(r7, 0L);
        } else {
            changeCurrentPlaying(r7, nextMusic);
        }
        play(r7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.chery.media.model.business.MediaDef.UsbMusicInfo getNextMusic(int r3) {
        /*
            r2 = this;
            com.chery.media.model.business.UsbMusicBusiness$PlayInfo r2 = r2.getPlayInfo(r3)
            int r3 = r2.playMode
            r0 = 1
            if (r3 == 0) goto L30
            if (r3 == r0) goto Lf
            r1 = 2
            if (r3 == r1) goto L30
            goto L51
        Lf:
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r3 = r2.randomPlaylist
            boolean r3 = r3.isEmpty()
            if (r3 != 0) goto L51
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r3 = r2.randomPlaylist
            com.chery.media.model.business.MediaDef$UsbMusicInfo r1 = r2.currentPlaying
            int r3 = r3.indexOf(r1)
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r1 = r2.randomPlaylist
            int r3 = r3 + r0
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r2 = r2.randomPlaylist
            int r2 = r2.size()
            int r3 = r3 % r2
            java.lang.Object r2 = r1.get(r3)
            com.chery.media.model.business.MediaDef$UsbMusicInfo r2 = (com.chery.media.model.business.MediaDef.UsbMusicInfo) r2
            goto L52
        L30:
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r3 = r2.playlist
            boolean r3 = r3.isEmpty()
            if (r3 != 0) goto L51
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r3 = r2.playlist
            com.chery.media.model.business.MediaDef$UsbMusicInfo r1 = r2.currentPlaying
            int r3 = r3.indexOf(r1)
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r1 = r2.playlist
            int r3 = r3 + r0
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r2 = r2.playlist
            int r2 = r2.size()
            int r3 = r3 % r2
            java.lang.Object r2 = r1.get(r3)
            com.chery.media.model.business.MediaDef$UsbMusicInfo r2 = (com.chery.media.model.business.MediaDef.UsbMusicInfo) r2
            goto L52
        L51:
            r2 = 0
        L52:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.UsbMusicBusiness.getNextMusic(int):com.chery.media.model.business.MediaDef$UsbMusicInfo");
    }

    public void playPrior(int r7) {
        MediaDef.UsbMusicInfo priorMusic;
        PlayInfo playInfo = getPlayInfo(r7);
        PFLog.m25d(TAG, String.format("playPrior %s", playInfo.usbName));
        if (playInfo.playlist.isEmpty() || (priorMusic = getPriorMusic(r7)) == null) {
            return;
        }
        PFLog.m25d(TAG, String.format("priorMusic:%s", priorMusic));
        if (priorMusic == playInfo.currentPlaying) {
            seekTo(r7, 0L);
        } else {
            changeCurrentPlaying(r7, priorMusic);
        }
        play(r7);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.chery.media.model.business.MediaDef.UsbMusicInfo getPriorMusic(int r3) {
        /*
            r2 = this;
            com.chery.media.model.business.UsbMusicBusiness$PlayInfo r2 = r2.getPlayInfo(r3)
            int r3 = r2.playMode
            r0 = 1
            if (r3 == 0) goto L3b
            if (r3 == r0) goto Lf
            r1 = 2
            if (r3 == r1) goto L3b
            goto L67
        Lf:
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r3 = r2.randomPlaylist
            boolean r3 = r3.isEmpty()
            if (r3 != 0) goto L67
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r3 = r2.randomPlaylist
            com.chery.media.model.business.MediaDef$UsbMusicInfo r1 = r2.currentPlaying
            int r3 = r3.indexOf(r1)
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r1 = r2.randomPlaylist
            if (r3 > 0) goto L2b
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r2 = r2.randomPlaylist
            int r2 = r2.size()
            int r2 = r2 - r0
            goto L34
        L2b:
            int r3 = r3 - r0
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r2 = r2.randomPlaylist
            int r2 = r2.size()
            int r2 = r3 % r2
        L34:
            java.lang.Object r2 = r1.get(r2)
            com.chery.media.model.business.MediaDef$UsbMusicInfo r2 = (com.chery.media.model.business.MediaDef.UsbMusicInfo) r2
            goto L68
        L3b:
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r3 = r2.playlist
            boolean r3 = r3.isEmpty()
            if (r3 != 0) goto L67
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r3 = r2.playlist
            com.chery.media.model.business.MediaDef$UsbMusicInfo r1 = r2.currentPlaying
            int r3 = r3.indexOf(r1)
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r1 = r2.playlist
            if (r3 > 0) goto L57
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r2 = r2.playlist
            int r2 = r2.size()
            int r2 = r2 - r0
            goto L60
        L57:
            int r3 = r3 - r0
            java.util.List<com.chery.media.model.business.MediaDef$UsbMusicInfo> r2 = r2.playlist
            int r2 = r2.size()
            int r2 = r3 % r2
        L60:
            java.lang.Object r2 = r1.get(r2)
            com.chery.media.model.business.MediaDef$UsbMusicInfo r2 = (com.chery.media.model.business.MediaDef.UsbMusicInfo) r2
            goto L68
        L67:
            r2 = 0
        L68:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.UsbMusicBusiness.getPriorMusic(int):com.chery.media.model.business.MediaDef$UsbMusicInfo");
    }

    public void seekTo(int r5, long j) {
        PFLog.m25d(TAG, String.format("seek %s %s", getPlayInfo(r5).usbName, Long.valueOf(j)));
        this.musicPlayer.seekTo(r5, j);
    }

    public void fastBackward(final int r6) {
        final PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("fastBackward %s", playInfo.usbName));
        if (playInfo.currentPlaying == null || !playInfo.canPlay || playInfo.fastPlayStatus == -1) {
            return;
        }
        if (playInfo.fastPlayRun != null) {
            this.handler.removeCallbacks(playInfo.fastPlayRun);
        }
        playInfo.fastPlayRun = new Runnable() { // from class: com.chery.media.model.business.UsbMusicBusiness.6
            @Override // java.lang.Runnable
            public void run() {
                if (playInfo.position > 8000) {
                    UsbMusicBusiness.this.seekTo(r6, playInfo.position - 8000);
                    UsbMusicBusiness.this.setPosition(r6, playInfo.position - 8000);
                    UsbMusicBusiness.this.play(r6);
                    UsbMusicBusiness.this.handler.postDelayed(this, 1000L);
                    return;
                }
                UsbMusicBusiness.this.seekTo(r6, 0L);
                UsbMusicBusiness.this.setPosition(r6, 0L);
                UsbMusicBusiness.this.play(r6);
                UsbMusicBusiness.this.setFastPlayStatus(r6, 0);
                UsbMusicBusiness.this.handler.removeCallbacks(this);
                playInfo.fastPlayRun = null;
            }
        };
        this.handler.postDelayed(playInfo.fastPlayRun, 1000L);
        setFastPlayStatus(r6, -1);
    }

    public void fastForward(final int r7) {
        final PlayInfo playInfo = getPlayInfo(r7);
        PFLog.m25d(TAG, String.format("fastForward %s", playInfo.usbName));
        if (playInfo.currentPlaying == null || !playInfo.canPlay || playInfo.fastPlayStatus == 1) {
            return;
        }
        if (playInfo.fastPlayRun != null) {
            this.handler.removeCallbacks(playInfo.fastPlayRun);
        }
        playInfo.fastPlayRun = new Runnable() { // from class: com.chery.media.model.business.UsbMusicBusiness.7
            @Override // java.lang.Runnable
            public void run() {
                if (playInfo.position + 8000 < playInfo.duration) {
                    UsbMusicBusiness.this.seekTo(r7, playInfo.position + 8000);
                    UsbMusicBusiness.this.setPosition(r7, playInfo.position + 8000);
                    UsbMusicBusiness.this.play(r7);
                    UsbMusicBusiness.this.handler.postDelayed(this, 1000L);
                    return;
                }
                if (playInfo.playMode == 0) {
                    UsbMusicBusiness.this.seekTo(r7, 0L);
                    UsbMusicBusiness.this.setPosition(r7, 0L);
                    UsbMusicBusiness.this.play(r7);
                } else {
                    UsbMusicBusiness.this.playNext(r7);
                }
                UsbMusicBusiness.this.setFastPlayStatus(r7, 0);
                UsbMusicBusiness.this.handler.removeCallbacks(this);
                playInfo.fastPlayRun = null;
            }
        };
        this.handler.postDelayed(playInfo.fastPlayRun, 1000L);
        setFastPlayStatus(r7, 1);
    }

    public void stopFastPlay(int r6) {
        PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("stopFastPlay %s", playInfo.usbName));
        if (playInfo.fastPlayStatus == 0) {
            return;
        }
        if (playInfo.fastPlayRun != null) {
            this.handler.removeCallbacks(playInfo.fastPlayRun);
            playInfo.fastPlayRun = null;
        }
        setFastPlayStatus(r6, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFastPlayStatus(int r7, int r8) {
        PlayInfo playInfo = getPlayInfo(r7);
        if (r8 == playInfo.fastPlayStatus) {
            return;
        }
        PFLog.m25d(TAG, String.format("setFastPlayStatus %s %d", playInfo.usbName, Integer.valueOf(r8)));
        playInfo.fastPlayStatus = r8;
        if (playInfo.fastPlayStatus == 0) {
            saveRestoreInfo(r7, false);
        }
        Iterator<OnPlayingInfoListener> it = this.playingInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onFastPlayStatusChanged(r7, r8);
        }
    }

    public int getFastPlayStatus(int r1) {
        return getPlayInfo(r1).fastPlayStatus;
    }

    public int getPlayMode(int r1) {
        return getPlayInfo(r1).playMode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayMode(int r7, int r8) {
        PlayInfo playInfo = getPlayInfo(r7);
        if (r8 == playInfo.playMode) {
            return;
        }
        PFLog.m25d(TAG, String.format("setPlayMode %s %d", playInfo.usbName, Integer.valueOf(r8)));
        playInfo.playMode = r8;
        Iterator<OnPlayModeListener> it = this.playModeListeners.iterator();
        while (it.hasNext()) {
            it.next().onPlayModeChanged(r7, r8);
        }
        saveRestoreInfo(r7, false);
    }

    public void changePlayMode(int r6, int r7) {
        PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("changePlayMode %s %d", playInfo.usbName, Integer.valueOf(r7)));
        if (r7 == playInfo.playMode) {
            return;
        }
        setPlayMode(r6, r7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveRestoreInfo(int r7, boolean z) {
        final PlayInfo playInfo = getPlayInfo(r7);
        PFLog.m25d(TAG, String.format("saveRestoreInfo %s force:%s", playInfo.usbName, Boolean.valueOf(z)));
        if (!z) {
            if (playInfo.restoreState != 0 && playInfo.restoreState != 2) {
                PFLog.m25d(TAG, "restore state not none or end, ignore!");
                return;
            } else if (!UsbScannerBusiness.getInstance().getUsbDeviceInfo(r7).mounted) {
                PFLog.m25d(TAG, "usb not mounted, ignore!");
                return;
            }
        }
        UsbScannerBusiness.getInstance().getUsbDeviceInfo(r7);
        playInfo.restoreInfo.playlistType = playInfo.playlistType;
        playInfo.restoreInfo.playlistKey = playInfo.playlistKey;
        MediaDef.UsbMusicInfo currentPlaying = getCurrentPlaying(r7);
        playInfo.restoreInfo.playingMusic = currentPlaying != null ? currentPlaying.path : null;
        if (playInfo.canPlay) {
            playInfo.restoreInfo.isPlaying = playInfo.isPlaying;
        } else {
            playInfo.restoreInfo.isPlaying = playInfo.playOnCanPlay;
        }
        playInfo.restoreInfo.position = playInfo.position;
        playInfo.restoreInfo.playMode = playInfo.playMode;
        Runnable runnable = this.runSaveRestoreInfo;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
        final String json = new Gson().toJson(playInfo.restoreInfo);
        Runnable runnable2 = new Runnable() { // from class: com.chery.media.model.business.UsbMusicBusiness.8
            @Override // java.lang.Runnable
            public void run() {
                MediaBusiness.getInstance().getIoThread().addRunnable(new Runnable() { // from class: com.chery.media.model.business.UsbMusicBusiness.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PFLog.m25d(UsbMusicBusiness.TAG, String.format("do saveRestoreInfo %s", playInfo.usbName));
                        PFLog.m25d(UsbMusicBusiness.TAG, "restoreInfo : " + json);
                        Utils.writeToInternalFile(UsbMusicBusiness.this.context, String.format("%s_music_restore_info.txt", playInfo.usbName), json.getBytes(), false);
                    }
                });
            }
        };
        this.runSaveRestoreInfo = runnable2;
        this.handler.postDelayed(runnable2, 500L);
    }

    private void readRestoreInfo(int r6) {
        PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("readRestoreInfo %s", playInfo.usbName));
        byte[] fromInternalFile = Utils.readFromInternalFile(this.context, String.format("%s_music_restore_info.txt", playInfo.usbName));
        if (fromInternalFile == null || fromInternalFile.length <= 0) {
            return;
        }
        String str = new String(fromInternalFile);
        PFLog.m25d(TAG, "readRestoreInfo : " + str);
        try {
            playInfo.restoreInfo = (PlayInfo.RestoreInfo) new Gson().fromJson(str, new TypeToken<PlayInfo.RestoreInfo>() { // from class: com.chery.media.model.business.UsbMusicBusiness.9
            }.getType());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
