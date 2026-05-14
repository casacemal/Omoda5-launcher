package com.chery.media.model.business;

import android.car.Car;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.util.Size;
import android.view.SurfaceHolder;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.caradapter.carapi.interfaces.IAvmEngineListener;
import com.chery.caradapter.carapi.interfaces.IBasicListener;
import com.chery.caradapter.carapi.interfaces.IPowerListener;
import com.chery.caradapter.carapi.interfaces.IVolumeListener;
import com.chery.common.PageConstants;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.StableMediaPlayer;
import com.chery.media.model.business.UsbScannerBusiness;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.util.Utils;
import com.chery.setting.BrightnessAIDLTool;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class VideoBusiness {
    private static final int FAST_PLAY_BACKWARD = -1;
    private static final int FAST_PLAY_FORWARD = 1;
    private static final int FAST_PLAY_NONE = 0;
    private static final int FAST_PLAY_STEP = 5000;
    public static final int PLAYLIST_ALL = 0;
    public static final int PLAYLIST_FOLDER = 1;
    private static final String TAG = CarLog.concatTag("MEDIA", VideoBusiness.class);
    private static VideoBusiness instance;
    public AudioManager.OnAudioFocusChangeListener audioFocusChangeListener;
    public AudioFocusRequest audioFocusRequest;
    private AudioManager audioManager;
    private Context context;
    private Handler handler;
    private Runnable runSaveRestoreInfo;
    private SurfaceHolder surfaceHolder;
    private ContentObserver vehicleSpeedLimitObserver;
    private StableMediaPlayer videoPlayer;
    private int currentUsb = -1;
    private List<OnCurrentUsbListener> currentUsbListeners = new ArrayList();
    public int audioFocusSource = 16;
    public int audioFocus = -1;
    private HashMap<Integer, PlayInfo> playInfoMap = new HashMap<>();
    private PlayInfo defaultPlayInfo = new PlayInfo(-1);
    private List<OnPlaylistInfoListener> playlistInfoListeners = new ArrayList();
    private List<OnPlayingInfoListener> playingInfoListeners = new ArrayList();
    private boolean speedLimitSetting = false;
    private boolean speedLimitView = false;
    private boolean speedLimitPlay = false;
    private List<SpeedLimitListener> speedLimitListeners = new ArrayList();
    private Runnable runReleaseSpeedLimitCover = new Runnable() { // from class: com.chery.media.model.business.VideoBusiness.1
        @Override // java.lang.Runnable
        public void run() {
            VideoBusiness.this.setSpeedLimitView(false);
        }
    };
    private Runnable runReleaseSpeedLimitPlay = new Runnable() { // from class: com.chery.media.model.business.VideoBusiness.2
        @Override // java.lang.Runnable
        public void run() {
            VideoBusiness.this.setSpeedLimitPlay(false);
        }
    };
    private boolean uiEnablePlay = false;
    private int volume = 0;
    private List<OnVolumeListener> volumeListeners = new ArrayList();
    private int brightness = 0;
    private List<OnBrightnessListener> brightnessListeners = new ArrayList();
    private boolean avmActive = false;

    public interface OnBrightnessListener {
        void onBrightnessChanged(int r1);
    }

    public interface OnCurrentUsbListener {
        void onCurrentUsbChanged(int r1);
    }

    public interface OnPlayingInfoListener {
        void onDurationChanged(int r1, long j);

        void onPlayingStateChanged(int r1, int r2);

        void onPositionChanged(int r1, long j);

        void onVideoSizeNotify(int r1, Size size);
    }

    public interface OnPlaylistInfoListener {
        void onCurrentPlayingChanged(int r1, MediaDef.UsbVideoInfo usbVideoInfo);

        void onPlaylistChanged(int r1, int r2, List<MediaDef.UsbVideoInfo> list);
    }

    public interface OnVolumeListener {
        void onVolumeChanged(int r1);
    }

    public interface SpeedLimitListener {
        void onSpeedLimitPlayChanged(boolean z);

        void onSpeedLimitSettingChanged(boolean z);

        void onSpeedLimitViewChanged(boolean z);
    }

    private boolean canPlayByAudioFocus(int r2) {
        return r2 == 1 || r2 == 2;
    }

    public int getBrightnessMax() {
        return 10;
    }

    public int getBrightnessMin() {
        return 1;
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
        private MediaDef.UsbVideoInfo currentPlaying;
        public Runnable fastPlayRun;
        public String playlistKey;
        public String usbName;
        public int usbType;
        public int playlistType = 0;
        public List<MediaDef.UsbVideoInfo> playlist = new ArrayList();
        public List<String> errorlist = new ArrayList();
        public int playingState = 0;
        public boolean isPlaying = false;
        public long duration = 0;
        public long position = 0;
        public Size videoSize = new Size(0, 0);
        public boolean canPlay = false;
        public boolean expectedPlay = false;
        public boolean playOnCanPlay = false;
        public int fastPlayStatus = 0;
        public RestoreInfo restoreInfo = new RestoreInfo();
        public int restoreState = 0;

        public PlayInfo(int r4) {
            this.usbType = r4;
            this.usbName = MediaDef.getUsbName(r4);
        }

        public static class RestoreInfo {
            public String mountPath;
            public String playingVideo;
            public String playlistKey;
            public int playlistType = 0;
            public boolean isPlaying = false;
            public long position = 0;

            public String toString() {
                return "RestoreInfo{mountPath='" + this.mountPath + "', playlistType=" + this.playlistType + ", playlistKey='" + this.playlistKey + "', playingVideo='" + this.playingVideo + "', isPlaying=" + this.isPlaying + ", position=" + this.position + '}';
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

    public void addSpeedLimitListener(SpeedLimitListener speedLimitListener) {
        if (this.speedLimitListeners.contains(speedLimitListener)) {
            return;
        }
        this.speedLimitListeners.add(speedLimitListener);
    }

    public void removeSpeedLimitListener(SpeedLimitListener speedLimitListener) {
        this.speedLimitListeners.remove(speedLimitListener);
    }

    public void addVolumeListener(OnVolumeListener onVolumeListener) {
        if (this.volumeListeners.contains(onVolumeListener)) {
            return;
        }
        this.volumeListeners.add(onVolumeListener);
    }

    public void removeVolumeListener(OnVolumeListener onVolumeListener) {
        this.volumeListeners.remove(onVolumeListener);
    }

    public void addBrightnessListener(OnBrightnessListener onBrightnessListener) {
        if (this.brightnessListeners.contains(onBrightnessListener)) {
            return;
        }
        this.brightnessListeners.add(onBrightnessListener);
    }

    public void removeBrightnessListener(OnBrightnessListener onBrightnessListener) {
        this.brightnessListeners.remove(onBrightnessListener);
    }

    public static VideoBusiness getInstance() {
        if (instance == null) {
            instance = new VideoBusiness();
        }
        return instance;
    }

    public void init(Context context) {
        PFLog.m25d(TAG, "init");
        this.context = context;
        this.handler = new Handler();
        this.audioManager = (AudioManager) this.context.getSystemService(Car.AUDIO_SERVICE);
        StableMediaPlayer stableMediaPlayer = new StableMediaPlayer("video");
        this.videoPlayer = stableMediaPlayer;
        stableMediaPlayer.init();
        this.videoPlayer.addCallbackListener(new StableMediaPlayer.CallbackListener() { // from class: com.chery.media.model.business.VideoBusiness.3
            @Override // com.chery.media.model.business.StableMediaPlayer.CallbackListener
            public void onMediaChanged(int r1, String str) {
            }

            @Override // com.chery.media.model.business.StableMediaPlayer.CallbackListener
            public void onStateChanged(final int r9, int r10, final String str) {
                MediaDef.UsbVideoInfo changeNextVideo;
                PlayInfo playInfo = VideoBusiness.this.getPlayInfo(r9);
                PFLog.m25d(VideoBusiness.TAG, String.format("onStateChanged %s %s %s current:%s", Integer.valueOf(r9), Integer.valueOf(r10), str, playInfo.currentPlaying));
                VideoBusiness.this.setPlayingState(r9, r10);
                if (r10 == 4) {
                    if (playInfo.currentPlaying == null || !playInfo.currentPlaying.path.equals(str) || !playInfo.canPlay || (changeNextVideo = VideoBusiness.this.getChangeNextVideo(r9)) == null) {
                        return;
                    }
                    PFLog.m25d(VideoBusiness.TAG, String.format("nextVideo:%s", changeNextVideo));
                    VideoBusiness.this.changeCurrentPlaying(r9, changeNextVideo);
                    VideoBusiness.this.play(r9);
                    return;
                }
                if (r10 == 5 && playInfo.currentPlaying != null && playInfo.currentPlaying.path.equals(str)) {
                    if (!playInfo.errorlist.contains(str)) {
                        playInfo.errorlist.add(str);
                    }
                    if (playInfo.canPlay) {
                        VideoBusiness.this.handler.postDelayed(new Runnable() { // from class: com.chery.media.model.business.VideoBusiness.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                PlayInfo playInfo2 = VideoBusiness.this.getPlayInfo(r9);
                                if (playInfo2.currentPlaying != null && playInfo2.currentPlaying.path.equals(str) && playInfo2.canPlay) {
                                    if (playInfo2.errorlist.size() < playInfo2.playlist.size()) {
                                        MediaDef.UsbVideoInfo changeNextVideo2 = VideoBusiness.this.getChangeNextVideo(r9);
                                        if (changeNextVideo2 == null || changeNextVideo2 == VideoBusiness.this.getPlayInfo(r9).currentPlaying) {
                                            return;
                                        }
                                        PFLog.m25d(VideoBusiness.TAG, String.format("nextVideo:%s", changeNextVideo2));
                                        VideoBusiness.this.changeCurrentPlaying(r9, changeNextVideo2);
                                        VideoBusiness.this.play(r9);
                                        return;
                                    }
                                    PFLog.m25d(VideoBusiness.TAG, String.format("errorlist size(%s) >= playlist size(%s)", Integer.valueOf(playInfo2.errorlist.size()), Integer.valueOf(playInfo2.playlist.size())));
                                }
                            }
                        }, 1000L);
                    }
                }
            }

            @Override // com.chery.media.model.business.StableMediaPlayer.CallbackListener
            public void onDurationChanged(int r1, long j) {
                VideoBusiness.this.setDuration(r1, j);
            }

            @Override // com.chery.media.model.business.StableMediaPlayer.CallbackListener
            public void onPositionChanged(int r2, long j) {
                int r0 = VideoBusiness.this.getPlayInfo(r2).fastPlayStatus;
                if (r0 == 0) {
                    VideoBusiness.this.setPosition(r2, j);
                } else {
                    PFLog.m25d(VideoBusiness.TAG, String.format("fastPlayStatus %s, not to setPosition", Integer.valueOf(r0)));
                }
            }

            @Override // com.chery.media.model.business.StableMediaPlayer.CallbackListener
            public void onVideoSizeNotify(int r2, int r3, int r4) {
                VideoBusiness.this.notifyVideoSize(r2, new Size(r3, r4));
            }
        });
        this.videoPlayer.addSeekCompleteListener(new StableMediaPlayer.OnSeekCompleteListener() { // from class: com.chery.media.model.business.VideoBusiness.4
            @Override // com.chery.media.model.business.StableMediaPlayer.OnSeekCompleteListener
            public void onSeekComplete(int r2, long j) {
                VideoBusiness.this.setPosition(r2, j);
                if (VideoBusiness.this.getPlayInfo(r2).fastPlayStatus == 0) {
                    VideoBusiness.this.saveRestoreInfo(r2, false);
                }
            }
        });
        for (int r0 = 0; r0 <= 0; r0++) {
            this.playInfoMap.put(Integer.valueOf(r0), new PlayInfo(r0));
        }
        Iterator<Integer> it = this.playInfoMap.keySet().iterator();
        while (it.hasNext()) {
            int r1 = it.next().intValue();
            PlayInfo playInfo = this.playInfoMap.get(Integer.valueOf(r1));
            this.videoPlayer.addPlayer(r1);
            playInfo.canPlay = checkCanPlay(r1);
            readRestoreInfo(r1);
        }
        this.audioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.chery.media.model.business.VideoBusiness.5
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int r6) {
                PFLog.m25d(VideoBusiness.TAG, String.format("onAudioFocusChange %d", Integer.valueOf(r6)));
                VideoBusiness.this.setAudioFocus(r6);
            }
        };
        Bundle bundle = new Bundle();
        bundle.putInt("key_car_source_type", this.audioFocusSource);
        this.audioFocusRequest = new AudioFocusRequest.Builder(1).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).addBundle(bundle).build()).setOnAudioFocusChangeListener(this.audioFocusChangeListener).build();
        int currentSource = this.audioManager.getCurrentSource();
        PFLog.m25d(TAG, "getCurrentSource : " + currentSource);
        int lastSource = this.audioManager.getLastSource();
        PFLog.m25d(TAG, "getLastSource : " + lastSource);
        int r3 = this.audioFocusSource;
        if (currentSource == r3 || (currentSource == 0 && lastSource == r3)) {
            requestAudioFocus();
        }
        UsbScannerBusiness.getInstance().addUsbDeviceInfoListener(new UsbScannerBusiness.OnUsbDeviceInfoListener() { // from class: com.chery.media.model.business.VideoBusiness.6
            @Override // com.chery.media.model.business.UsbScannerBusiness.OnUsbDeviceInfoListener
            public void onMountStatusChanged(int r32, boolean z) {
                PlayInfo playInfo2 = VideoBusiness.this.getPlayInfo(r32);
                if (z) {
                    playInfo2.restoreState = 0;
                    return;
                }
                if (playInfo2.restoreState != 0) {
                    VideoBusiness.this.saveRestoreInfo(r32, true);
                }
                VideoBusiness.this.changePlaylist(r32, 0, null);
                if (r32 == VideoBusiness.this.currentUsb) {
                    VideoBusiness.this.setCurrentUsb(-1);
                }
            }

            @Override // com.chery.media.model.business.UsbScannerBusiness.OnUsbDeviceInfoListener
            public void onScanInfoUpdate(int r9, int r10) {
                if (r10 == 34 || r10 == 35) {
                    MediaDef.UsbDeviceInfo usbDeviceInfo = UsbScannerBusiness.getInstance().getUsbDeviceInfo(r9);
                    if (usbDeviceInfo.videosCount > 0) {
                        if (VideoBusiness.this.currentUsb == -1) {
                            VideoBusiness.this.setCurrentUsb(r9);
                        }
                        PlayInfo playInfo2 = VideoBusiness.this.getPlayInfo(r9);
                        if (VideoBusiness.this.audioManager.getCurrentSource() == 0 && VideoBusiness.this.audioManager.getLastSource() == VideoBusiness.this.audioFocusSource) {
                            VideoBusiness.this.requestAudioFocus();
                        }
                        if (playInfo2.restoreState == 0) {
                            if (!usbDeviceInfo.mountPath.equals(playInfo2.restoreInfo.mountPath)) {
                                PFLog.m25d(VideoBusiness.TAG, "mountPath not match, clear restore info");
                                playInfo2.restoreInfo = new PlayInfo.RestoreInfo();
                                playInfo2.restoreInfo.mountPath = usbDeviceInfo.mountPath;
                                playInfo2.restoreState = 3;
                            } else {
                                playInfo2.restoreState = 1;
                            }
                        }
                        if (playInfo2.restoreState == 3) {
                            VideoBusiness.this.changePlaylist(r9, 0, null);
                            PFLog.m25d(VideoBusiness.TAG, "restore reset end");
                            playInfo2.restoreState = 2;
                            VideoBusiness.this.saveRestoreInfo(r9, false);
                            return;
                        }
                        if (playInfo2.restoreState == 1) {
                            PFLog.m25d(VideoBusiness.TAG, "restore playlist");
                            VideoBusiness.this.changePlaylist(r9, playInfo2.restoreInfo.playlistType, playInfo2.restoreInfo.playlistKey);
                            if (playInfo2.playlist.isEmpty()) {
                                if (r10 == 35) {
                                    PFLog.m25d(VideoBusiness.TAG, "restore playlist failed, set all videos");
                                    VideoBusiness.this.changePlaylist(r9, 0, null);
                                } else {
                                    PFLog.m25d(VideoBusiness.TAG, "restore playlist next time");
                                }
                            }
                            if (playInfo2.currentPlaying == null) {
                                if (playInfo2.restoreInfo.playingVideo == null || playInfo2.restoreInfo.playingVideo.isEmpty()) {
                                    PFLog.m25d(VideoBusiness.TAG, "restored video info invalid");
                                    VideoBusiness.this.changeCurrentPlaying(r9, 0);
                                } else {
                                    VideoBusiness.this.changeCurrentPlaying(r9, playInfo2.restoreInfo.playingVideo);
                                    if (playInfo2.currentPlaying != null) {
                                        PFLog.m25d(VideoBusiness.TAG, "restore video success");
                                        PFLog.m25d(VideoBusiness.TAG, "restore video position " + playInfo2.restoreInfo.position);
                                        VideoBusiness.this.videoPlayer.seekTo(r9, playInfo2.restoreInfo.position);
                                        if (VideoBusiness.this.videoPlayer.getActivatedKey() != r9) {
                                            VideoBusiness.this.setPosition(r9, playInfo2.restoreInfo.position);
                                        }
                                    } else if (r10 == 35) {
                                        PFLog.m25d(VideoBusiness.TAG, "restore video failed, set first");
                                        VideoBusiness.this.changeCurrentPlaying(r9, 0);
                                    } else {
                                        PFLog.m25d(VideoBusiness.TAG, "restore video next time");
                                    }
                                }
                            }
                            if (playInfo2.currentPlaying != null) {
                                PFLog.m25d(VideoBusiness.TAG, "restore end");
                                playInfo2.restoreState = 2;
                                VideoBusiness.this.saveRestoreInfo(r9, false);
                                return;
                            }
                            return;
                        }
                        if (playInfo2.restoreState == 2) {
                            PFLog.m25d(VideoBusiness.TAG, "update playlist");
                            VideoBusiness.this.changePlaylist(r9, playInfo2.playlistType, playInfo2.playlistKey);
                        }
                    }
                }
            }
        });
        CarAdapterUse.addCarVolumeClientListener(new IVolumeListener() { // from class: com.chery.media.model.business.VideoBusiness.7
            @Override // com.chery.caradapter.carapi.interfaces.IVolumeListener
            public void onGroupMuteChanged(int r12, int r2, int r32) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IVolumeListener
            public void onMasterMuteChanged(int r12, int r2) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IVolumeListener
            public void onGroupVolumeChanged(int r4, int r5, int r6) {
                PFLog.m25d(VideoBusiness.TAG, "onGroupVolumeChanged zoneId:" + r4 + " groupId:" + r5 + " flags:" + r6);
                if (r5 == 0) {
                    VideoBusiness.this.setVolume(CarAdapterUse.getCarVolumeClient().getGroupVolume(r5));
                }
            }
        });
        setVolume(CarAdapterUse.getCarVolumeClient().getGroupVolume(0));
        BrightnessAIDLTool.getInstance().init(this.context);
        BrightnessAIDLTool.getInstance().addBrightnessListener(new BrightnessAIDLTool.BrightnessListener() { // from class: com.chery.media.model.business.VideoBusiness.8
            @Override // com.chery.setting.BrightnessAIDLTool.BrightnessListener
            public void onConnected() {
                VideoBusiness.this.setBrightness(BrightnessAIDLTool.getInstance().getBrightness());
            }

            @Override // com.chery.setting.BrightnessAIDLTool.BrightnessListener
            public void onBrightnessChanged(int r5) {
                PFLog.m25d(VideoBusiness.TAG, String.format("brightness onChange %d", Integer.valueOf(r5)));
                VideoBusiness.this.setBrightness(r5);
            }
        });
        CarAdapterUse.addCarPowerClientListener(new IPowerListener() { // from class: com.chery.media.model.business.VideoBusiness.9
            @Override // com.chery.caradapter.carapi.interfaces.IPowerListener
            public void onStateChanged(final int r32) {
                VideoBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.VideoBusiness.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int r02 = r32;
                        if (r02 == 11) {
                            VideoBusiness.this.updateCanPlay();
                            return;
                        }
                        if (r02 == 12 || r02 == 15 || r02 == 19) {
                            int currentSource2 = VideoBusiness.this.audioManager.getCurrentSource();
                            PFLog.m25d(VideoBusiness.TAG, "getCurrentSource : " + currentSource2);
                            int lastSource2 = VideoBusiness.this.audioManager.getLastSource();
                            PFLog.m25d(VideoBusiness.TAG, "getLastSource : " + lastSource2);
                            if ((currentSource2 == 0 || currentSource2 == 100) && lastSource2 == VideoBusiness.this.audioFocusSource) {
                                VideoBusiness.this.requestAudioFocus();
                            }
                            VideoBusiness.this.updateCanPlay();
                        }
                    }
                });
            }
        });
        String string = Settings.System.getString(this.context.getContentResolver(), PageConstants.SystemSettings.VIDEO_SPEED_LIMITED);
        PFLog.m25d(TAG, "video_speed_limited:" + string);
        setSpeedLimitSetting(PageConstants.SystemSettings.CLOSE.equals(string) ^ true);
        final Uri uriFor = Settings.System.getUriFor(PageConstants.SystemSettings.VIDEO_SPEED_LIMITED);
        this.vehicleSpeedLimitObserver = new ContentObserver(new Handler()) { // from class: com.chery.media.model.business.VideoBusiness.10
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                super.onChange(z, uri);
                if (uri.equals(uriFor)) {
                    VideoBusiness.this.setSpeedLimitSetting(!PageConstants.SystemSettings.CLOSE.equals(Settings.System.getString(r0.context.getContentResolver(), PageConstants.SystemSettings.VIDEO_SPEED_LIMITED)));
                }
            }
        };
        this.context.getContentResolver().registerContentObserver(uriFor, true, this.vehicleSpeedLimitObserver);
        float vehicleSpeed = CarAdapterUse.getCarBasicClient().getVehicleSpeed();
        PFLog.m25d(TAG, "vehicleSpeed:" + vehicleSpeed);
        if (CarAdapterUse.getCarConfigInfoClient().isPartNumberBrazil()) {
            setSpeedLimitView(vehicleSpeed > 5.0f);
            setSpeedLimitPlay(vehicleSpeed > 5.0f);
        } else if (CarAdapterUse.getCarConfigInfoClient().isRudderRight()) {
            setSpeedLimitView(vehicleSpeed > 0.0f);
        } else {
            setSpeedLimitView(vehicleSpeed > 15.0f);
        }
        CarAdapterUse.addCarBasicClientListener(new IBasicListener() { // from class: com.chery.media.model.business.VideoBusiness.11
            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onAutoFoldSts(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onAutoLockSts(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onCWCChargingSts(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onCWCPhoneForgottenMsg(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onCWCPhoneForgottenSts(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onCWCWorkingSts(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onCtpKeyVoiceRemind(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onDMSSts(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onDayNightModeLight(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onICMBrightness(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onIcmTimeChanged(String str) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onKeySts(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onLightDetectedSts(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onPLGMaxPosition(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onRemoteLockFeedbackSts(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onSSMStatus(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onScreenOverTemperature(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onSrfSts(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onTrunkSts(int r12) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onWindowSts(int r12, int r2) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IBasicListener
            public void onVehicleSpeed(float f) {
                VideoBusiness.this.onVehicleSpeedChanged(f);
            }
        });
        CarAdapterUse.addAvmEngineListener(new IAvmEngineListener() { // from class: com.chery.media.model.business.VideoBusiness.12
            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onAvmVersion(byte[] bArr) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onCalibrationStatus(byte[] bArr) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onDataStorage(byte[] bArr) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onEngineerMode(byte[] bArr) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onLogSettings(byte[] bArr) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onSimulateOthers(byte[] bArr) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onViewParams(byte[] bArr) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onViewStatus(byte[] bArr) {
            }

            @Override // com.chery.caradapter.carapi.interfaces.IAvmEngineListener
            public void onEnterExitState(byte[] bArr) {
                VideoBusiness videoBusiness = VideoBusiness.this;
                boolean z = false;
                if (bArr != null && bArr.length >= 1 && bArr[0] == 1) {
                    z = true;
                }
                videoBusiness.setAvmActive(z);
            }
        });
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.chery.media.model.business.VideoBusiness.13
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (intent.getAction().equals("com.chery.media.test.speed") && intent.hasExtra("speed")) {
                    VideoBusiness.this.onVehicleSpeedChanged(Integer.valueOf(intent.getStringExtra("speed")).intValue());
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.chery.media.test.speed");
        this.context.registerReceiver(broadcastReceiver, intentFilter);
    }

    public boolean requestAudioFocus() {
        int r0 = this.audioManager.requestAudioFocus(this.audioFocusRequest);
        PFLog.m25d(TAG, String.format("requestAudioFocus ret:%d", Integer.valueOf(r0)));
        if (r0 != 1) {
            return false;
        }
        setAudioFocus(1);
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

    public List<MediaDef.UsbVideoInfo> getPlaylist(int r2) {
        return new ArrayList(getPlayInfo(r2).playlist);
    }

    public int getPlaylistType(int r1) {
        return getPlayInfo(r1).playlistType;
    }

    public void changePlaylist(int r5, int r6, String str) {
        PFLog.m25d(TAG, String.format("changePlaylist usb:%s playlistType:%d playlistKey:%s", getPlayInfo(r5).usbName, Integer.valueOf(r6), str));
        if (r6 == 0) {
            changePlaylist(r5, r6, str, UsbScannerBusiness.getInstance().getVideos(r5));
        } else {
            if (r6 != 1) {
                return;
            }
            MediaDef.UsbFolderInfo folderInfo = UsbScannerBusiness.getInstance().getFolderInfo(r5, str);
            changePlaylist(r5, r6, str, folderInfo != null ? folderInfo.videoInfos : new ArrayList<>());
        }
    }

    private void changePlaylist(int r8, int r9, String str, List<MediaDef.UsbVideoInfo> list) {
        PlayInfo playInfo = getPlayInfo(r8);
        String str2 = TAG;
        Object[] objArr = new Object[3];
        objArr[0] = playInfo.usbName;
        boolean z = true;
        objArr[1] = Integer.valueOf(r9);
        objArr[2] = Integer.valueOf(list != null ? list.size() : 0);
        PFLog.m25d(str2, String.format("changePlaylist usb:%s playlistType:%d playlist size:%d", objArr));
        if (r9 == playInfo.playlistType && isPlaylistSame(list, playInfo.playlist)) {
            PFLog.m25d(TAG, "playlist no change!");
            return;
        }
        playInfo.playlistType = r9;
        playInfo.playlistKey = str;
        playInfo.playlist.clear();
        if (list != null) {
            playInfo.playlist.addAll(list);
        }
        playInfo.errorlist.clear();
        ArrayList arrayList = list != null ? new ArrayList(list) : new ArrayList();
        Iterator<OnPlaylistInfoListener> it = this.playlistInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onPlaylistChanged(r8, r9, arrayList);
        }
        if (playInfo.currentPlaying != null) {
            if (!playInfo.playlist.isEmpty()) {
                if (!playInfo.playlist.contains(playInfo.currentPlaying)) {
                    int r92 = 0;
                    while (true) {
                        if (r92 >= playInfo.playlist.size()) {
                            z = false;
                            break;
                        }
                        MediaDef.UsbVideoInfo usbVideoInfo = playInfo.playlist.get(r92);
                        if (usbVideoInfo.path.equals(playInfo.currentPlaying.path)) {
                            setCurrentPlaying(r8, usbVideoInfo);
                            break;
                        }
                        r92++;
                    }
                    if (!z) {
                        setCurrentPlaying(r8, (MediaDef.UsbVideoInfo) null);
                    }
                }
            } else {
                setCurrentPlaying(r8, (MediaDef.UsbVideoInfo) null);
            }
        }
        saveRestoreInfo(r8, false);
    }

    private boolean isPlaylistSame(List<MediaDef.UsbVideoInfo> list, List<MediaDef.UsbVideoInfo> list2) {
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

    private void setCurrentPlaying(int r6, MediaDef.UsbVideoInfo usbVideoInfo) {
        PlayInfo playInfo = getPlayInfo(r6);
        if (usbVideoInfo == playInfo.currentPlaying) {
            return;
        }
        if (usbVideoInfo != null && playInfo.currentPlaying != null && usbVideoInfo.path.equals(playInfo.currentPlaying.path)) {
            PFLog.m25d(TAG, "info is same");
            return;
        }
        PFLog.m25d(TAG, String.format("setCurrentPlaying usb:%s currentPlaying:%s", playInfo.usbName, usbVideoInfo));
        playInfo.currentPlaying = usbVideoInfo;
        if (usbVideoInfo != null) {
            setDuration(r6, usbVideoInfo.duration);
            this.videoPlayer.setMedia(r6, usbVideoInfo.path);
        } else {
            this.videoPlayer.setMedia(r6, null);
        }
        playInfo.expectedPlay = false;
        setPosition(r6, 0L);
        Iterator<OnPlaylistInfoListener> it = this.playlistInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onCurrentPlayingChanged(r6, usbVideoInfo);
        }
        saveRestoreInfo(r6, false);
    }

    public MediaDef.UsbVideoInfo getCurrentPlaying(int r1) {
        return getPlayInfo(r1).currentPlaying;
    }

    public void changeCurrentPlaying(int r6, MediaDef.UsbVideoInfo usbVideoInfo) {
        PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("to changeCurrentPlaying usb:%s videoInfo:%s", playInfo.usbName, usbVideoInfo));
        if (playInfo.playlist.contains(usbVideoInfo)) {
            setCurrentPlaying(r6, usbVideoInfo);
        } else if (usbVideoInfo != null) {
            changeCurrentPlaying(r6, usbVideoInfo.path);
        }
    }

    public void changeCurrentPlaying(int r6, String str) {
        PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("to changeCurrentPlaying usb:%s videoPath:%s", playInfo.usbName, str));
        for (MediaDef.UsbVideoInfo usbVideoInfo : playInfo.playlist) {
            if (usbVideoInfo.path.equals(str)) {
                setCurrentPlaying(r6, usbVideoInfo);
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
    public void setPlayingState(int r8, int r9) {
        PlayInfo playInfo = getPlayInfo(r8);
        if (r9 == playInfo.playingState) {
            return;
        }
        PFLog.m25d(TAG, String.format("setPlayingState usb:%s %s", playInfo.usbName, Integer.valueOf(r9)));
        playInfo.playingState = r9;
        Iterator<OnPlayingInfoListener> it = this.playingInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onPlayingStateChanged(r8, r9);
        }
        setIsPlaying(r8, r9 == 2);
    }

    public int getPlayingState(int r1) {
        return getPlayInfo(r1).playingState;
    }

    private void setIsPlaying(int r6, boolean z) {
        PlayInfo playInfo = getPlayInfo(r6);
        if (z == playInfo.isPlaying) {
            return;
        }
        PFLog.m25d(TAG, String.format("setIsPlaying usb:%s %s", playInfo.usbName, Boolean.valueOf(z)));
        playInfo.isPlaying = z;
        saveRestoreInfo(this.currentUsb, false);
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
    public void notifyVideoSize(int r6, Size size) {
        PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("notifyVideoSize usb:%s size:%s", playInfo.usbName, size));
        playInfo.videoSize = size;
        Iterator<OnPlayingInfoListener> it = this.playingInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onVideoSizeNotify(r6, size);
        }
    }

    public Size getVideoSize(int r2) {
        PlayInfo playInfo = getPlayInfo(r2);
        if ((playInfo.videoSize.getWidth() == 0 || playInfo.videoSize.getHeight() == 0) && playInfo.currentPlaying != null) {
            return new Size(playInfo.currentPlaying.width, playInfo.currentPlaying.height);
        }
        return playInfo.videoSize;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAudioFocus(int r5) {
        if (r5 == this.audioFocus) {
            return;
        }
        PFLog.m25d(TAG, String.format("setAudioFocus focus:%d", Integer.valueOf(r5)));
        this.audioFocus = r5;
        updateCanPlay();
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
            playInfo.playOnCanPlay = playInfo.expectedPlay;
            stopFastPlay(r7);
            pause(r7);
        }
    }

    private boolean checkCanPlay(int r6) {
        PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("checkCanPlay[%s]", playInfo.usbName));
        if (!this.uiEnablePlay) {
            PFLog.m25d(TAG, String.format("checkCanPlay[%s] ui does't enable play", playInfo.usbName));
            return false;
        }
        if (this.surfaceHolder == null) {
            PFLog.m25d(TAG, String.format("checkCanPlay[%s] surfaceHolder null", playInfo.usbName));
            return false;
        }
        if (!canPlayByAudioFocus(this.audioFocus)) {
            PFLog.m25d(TAG, String.format("checkCanPlay[%s] no audio focus", playInfo.usbName));
            return false;
        }
        int currentPowerMode = CarAdapterUse.getCarPowerClient().getCurrentPowerMode();
        if (currentPowerMode != 12 && currentPowerMode != 15 && currentPowerMode != 19) {
            PFLog.m25d(TAG, String.format("checkCanPlay power(%d) not run", Integer.valueOf(currentPowerMode)));
            return false;
        }
        if (this.avmActive) {
            PFLog.m25d(TAG, "checkCanPlay avm active");
            return false;
        }
        if (CarAdapterUse.getCarConfigInfoClient().isPartNumberBrazil()) {
            if (this.speedLimitPlay) {
                PFLog.m25d(TAG, "checkCanPlay brazil area speedLimitPlay");
                return false;
            }
        } else if (this.speedLimitSetting && this.speedLimitPlay) {
            PFLog.m25d(TAG, "checkCanPlay speedLimitSetting or speedLimitPlay");
            return false;
        }
        PFLog.m25d(TAG, String.format("checkCanPlay[%s] true", playInfo.usbName));
        return true;
    }

    public void setUiEnablePlay(boolean z) {
        if (z == this.uiEnablePlay) {
            return;
        }
        PFLog.m25d(TAG, "setUiEnablePlay " + z);
        this.uiEnablePlay = z;
        updateCanPlay();
    }

    public void setSurfaceHolder(SurfaceHolder surfaceHolder) {
        PFLog.m25d(TAG, "setSurfaceHolder " + surfaceHolder);
        this.surfaceHolder = surfaceHolder;
        this.videoPlayer.setSurfaceHolder(surfaceHolder);
        updateCanPlay();
    }

    public void play(int r7) {
        PlayInfo playInfo = getPlayInfo(r7);
        PFLog.m25d(TAG, String.format("play %s canPlay:%s", playInfo.usbName, Boolean.valueOf(playInfo.canPlay)));
        setCurrentUsb(r7);
        if (playInfo.canPlay) {
            int volumeGroupIdForUsage = CarAdapterUse.getCarVolumeClient().getVolumeGroupIdForUsage(1);
            if (CarAdapterUse.getCarVolumeClient().getGroupMute(volumeGroupIdForUsage)) {
                CarAdapterUse.getCarVolumeClient().setGroupMute(volumeGroupIdForUsage, false, 0);
            }
            this.videoPlayer.activePlayer(r7);
            if (this.videoPlayer.getState(r7) == 5) {
                this.videoPlayer.setMedia(r7, playInfo.currentPlaying.path);
                this.videoPlayer.seekTo(r7, playInfo.position);
            }
            this.videoPlayer.play(r7);
            playInfo.expectedPlay = true;
            return;
        }
        playInfo.playOnCanPlay = true;
        if (canPlayByAudioFocus(this.audioFocus)) {
            return;
        }
        requestAudioFocus();
    }

    public void pause(int r6) {
        PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("pause %s", playInfo.usbName));
        this.videoPlayer.pause(r6);
        playInfo.expectedPlay = false;
    }

    public void freeze(int r6) {
        PlayInfo playInfo = getPlayInfo(r6);
        PFLog.m25d(TAG, String.format("freeze %s", playInfo.usbName));
        this.videoPlayer.deactivePlayer(r6);
        playInfo.expectedPlay = false;
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
        MediaDef.UsbVideoInfo changeNextVideo;
        PlayInfo playInfo = getPlayInfo(r7);
        PFLog.m25d(TAG, String.format("playNext %s", playInfo.usbName));
        if (playInfo.playlist.isEmpty() || (changeNextVideo = getChangeNextVideo(r7)) == null) {
            return;
        }
        PFLog.m25d(TAG, String.format("nextVideo:%s", changeNextVideo));
        if (changeNextVideo == playInfo.currentPlaying) {
            seekTo(r7, 0L);
        } else {
            changeCurrentPlaying(r7, changeNextVideo);
        }
        play(r7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaDef.UsbVideoInfo getChangeNextVideo(int r2) {
        PlayInfo playInfo = getPlayInfo(r2);
        int r22 = playInfo.playlist.indexOf(playInfo.currentPlaying);
        if (playInfo.playlist.isEmpty()) {
            return null;
        }
        return playInfo.playlist.get((r22 + 1) % playInfo.playlist.size());
    }

    public void playPrior(int r7) {
        MediaDef.UsbVideoInfo changePriorVideo;
        PlayInfo playInfo = getPlayInfo(r7);
        PFLog.m25d(TAG, String.format("playPrior %s", playInfo.usbName));
        if (playInfo.playlist.isEmpty() || (changePriorVideo = getChangePriorVideo(r7)) == null) {
            return;
        }
        PFLog.m25d(TAG, String.format("priorVideo:%s", changePriorVideo));
        if (changePriorVideo == playInfo.currentPlaying) {
            seekTo(r7, 0L);
        } else {
            changeCurrentPlaying(r7, changePriorVideo);
        }
        play(r7);
    }

    private MediaDef.UsbVideoInfo getChangePriorVideo(int r2) {
        PlayInfo playInfo = getPlayInfo(r2);
        int r22 = playInfo.playlist.indexOf(playInfo.currentPlaying);
        if (playInfo.playlist.isEmpty()) {
            return null;
        }
        return playInfo.playlist.get(r22 <= 0 ? playInfo.playlist.size() - 1 : (r22 - 1) % playInfo.playlist.size());
    }

    public void seekTo(int r5, long j) {
        PFLog.m25d(TAG, String.format("seek %s %s", getPlayInfo(r5).usbName, Long.valueOf(j)));
        this.videoPlayer.seekTo(r5, j);
    }

    public void seekTo(int r5, long j, int r8) {
        PFLog.m25d(TAG, String.format("seek %s %s %s", getPlayInfo(r5).usbName, Long.valueOf(j), Integer.valueOf(r8)));
        this.videoPlayer.seekTo(r5, j, r8);
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
        playInfo.fastPlayRun = new Runnable() { // from class: com.chery.media.model.business.VideoBusiness.14
            @Override // java.lang.Runnable
            public void run() {
                if (playInfo.position > 5000) {
                    VideoBusiness.this.seekTo(r6, playInfo.position - 5000, 0);
                    VideoBusiness.this.play(r6);
                    VideoBusiness.this.handler.postDelayed(this, 1000L);
                } else {
                    VideoBusiness.this.seekTo(r6, 0L);
                    VideoBusiness.this.play(r6);
                    VideoBusiness.this.setFastPlayStatus(r6, 0);
                    VideoBusiness.this.handler.removeCallbacks(this);
                    playInfo.fastPlayRun = null;
                }
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
        playInfo.fastPlayRun = new Runnable() { // from class: com.chery.media.model.business.VideoBusiness.15
            @Override // java.lang.Runnable
            public void run() {
                if (playInfo.position + 5000 < playInfo.duration) {
                    VideoBusiness.this.seekTo(r7, playInfo.position + 5000, 1);
                    VideoBusiness.this.play(r7);
                    VideoBusiness.this.handler.postDelayed(this, 1000L);
                } else {
                    VideoBusiness.this.playNext(r7);
                    VideoBusiness.this.setFastPlayStatus(r7, 0);
                    VideoBusiness.this.handler.removeCallbacks(this);
                    playInfo.fastPlayRun = null;
                }
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
    }

    public int getVolume() {
        return this.volume;
    }

    public int getVolumeMin() {
        return CarAdapterUse.getCarVolumeClient().getGroupMinVolume(0);
    }

    public int getVolumeMax() {
        return CarAdapterUse.getCarVolumeClient().getGroupMaxVolume(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVolume(int r4) {
        if (r4 == this.volume) {
            return;
        }
        PFLog.m25d(TAG, "set volume " + r4);
        this.volume = r4;
        Iterator<OnVolumeListener> it = this.volumeListeners.iterator();
        while (it.hasNext()) {
            it.next().onVolumeChanged(r4);
        }
    }

    public void changeVolume(int r4) {
        PFLog.m25d(TAG, "to change volume " + r4);
        if (r4 < getVolumeMin() || r4 > getVolumeMax()) {
            return;
        }
        CarAdapterUse.getCarVolumeClient().setGroupVolume(0, r4, 0);
    }

    public int getBrightness() {
        return this.brightness;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBrightness(int r4) {
        if (r4 == this.brightness) {
            return;
        }
        PFLog.m25d(TAG, "set brightness " + r4);
        this.brightness = r4;
        Iterator<OnBrightnessListener> it = this.brightnessListeners.iterator();
        while (it.hasNext()) {
            it.next().onBrightnessChanged(r4);
        }
    }

    public void changeBrightness(int r4) {
        PFLog.m25d(TAG, "changeBrightness " + r4);
        if (r4 < getBrightnessMin() || r4 > getBrightnessMax()) {
            return;
        }
        BrightnessAIDLTool.getInstance().setBrightness(r4);
    }

    public void changeBrightnessBy(final int r4) {
        PFLog.m25d(TAG, "changeBrightnessBy " + r4);
        this.handler.postDelayed(new Runnable() { // from class: com.chery.media.model.business.VideoBusiness.16
            @Override // java.lang.Runnable
            public void run() {
                int brightnessMax = VideoBusiness.this.brightness + r4;
                if (brightnessMax < VideoBusiness.this.getBrightnessMin()) {
                    brightnessMax = VideoBusiness.this.getBrightnessMin();
                } else if (brightnessMax > VideoBusiness.this.getBrightnessMax()) {
                    brightnessMax = VideoBusiness.this.getBrightnessMax();
                }
                if (brightnessMax != VideoBusiness.this.brightness) {
                    BrightnessAIDLTool.getInstance().setBrightness(brightnessMax);
                }
            }
        }, 50L);
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
        MediaDef.UsbVideoInfo currentPlaying = getCurrentPlaying(r7);
        playInfo.restoreInfo.playingVideo = currentPlaying != null ? currentPlaying.path : null;
        if (playInfo.canPlay) {
            playInfo.restoreInfo.isPlaying = playInfo.isPlaying;
        } else {
            playInfo.restoreInfo.isPlaying = playInfo.playOnCanPlay;
        }
        playInfo.restoreInfo.position = playInfo.position;
        Runnable runnable = this.runSaveRestoreInfo;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
        final String json = new Gson().toJson(playInfo.restoreInfo);
        Runnable runnable2 = new Runnable() { // from class: com.chery.media.model.business.VideoBusiness.17
            @Override // java.lang.Runnable
            public void run() {
                MediaBusiness.getInstance().getIoThread().addRunnable(new Runnable() { // from class: com.chery.media.model.business.VideoBusiness.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PFLog.m25d(VideoBusiness.TAG, String.format("do saveRestoreInfo %s", playInfo.usbName));
                        PFLog.m25d(VideoBusiness.TAG, "restoreInfo : " + json);
                        Utils.writeToInternalFile(VideoBusiness.this.context, String.format("%s_video_restore_info.txt", playInfo.usbName), json.getBytes(), false);
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
        byte[] fromInternalFile = Utils.readFromInternalFile(this.context, String.format("%s_video_restore_info.txt", playInfo.usbName));
        if (fromInternalFile == null || fromInternalFile.length <= 0) {
            return;
        }
        String str = new String(fromInternalFile);
        PFLog.m25d(TAG, "readRestoreInfo : " + str);
        try {
            playInfo.restoreInfo = (PlayInfo.RestoreInfo) new Gson().fromJson(str, new TypeToken<PlayInfo.RestoreInfo>() { // from class: com.chery.media.model.business.VideoBusiness.18
            }.getType());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSpeedLimitSetting(boolean z) {
        if (z == this.speedLimitSetting) {
            return;
        }
        PFLog.m25d(TAG, "setSpeedLimitSetting:" + z);
        this.speedLimitSetting = z;
        updateCanPlay();
        Iterator<SpeedLimitListener> it = this.speedLimitListeners.iterator();
        while (it.hasNext()) {
            it.next().onSpeedLimitSettingChanged(z);
        }
    }

    public boolean getSpeedLimitSetting() {
        return this.speedLimitSetting;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSpeedLimitView(boolean z) {
        if (z == this.speedLimitView) {
            return;
        }
        PFLog.m25d(TAG, "setSpeedLimitView:" + z);
        this.speedLimitView = z;
        Iterator<SpeedLimitListener> it = this.speedLimitListeners.iterator();
        while (it.hasNext()) {
            it.next().onSpeedLimitViewChanged(z);
        }
    }

    public boolean getSpeedLimitView() {
        return this.speedLimitView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSpeedLimitPlay(boolean z) {
        if (z == this.speedLimitPlay) {
            return;
        }
        PFLog.m25d(TAG, "setSpeedLimitPlay:" + z);
        this.speedLimitPlay = z;
        updateCanPlay();
        Iterator<SpeedLimitListener> it = this.speedLimitListeners.iterator();
        while (it.hasNext()) {
            it.next().onSpeedLimitPlayChanged(z);
        }
    }

    public boolean getSpeedLimitPlay() {
        return this.speedLimitPlay;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onVehicleSpeedChanged(float f) {
        PFLog.m25d(TAG, String.format("onVehicleSpeedChanged,speed is: %s", Float.valueOf(f)));
        if (!CarAdapterUse.getCarConfigInfoClient().isPartNumberBrazil()) {
            if (f > (CarAdapterUse.getCarConfigInfoClient().isRudderRight() ? 0 : 15)) {
                setSpeedLimitView(true);
                this.handler.removeCallbacks(this.runReleaseSpeedLimitCover);
                return;
            } else {
                if (!this.speedLimitView || this.handler.hasCallbacks(this.runReleaseSpeedLimitCover)) {
                    return;
                }
                this.handler.postDelayed(this.runReleaseSpeedLimitCover, 3000L);
                return;
            }
        }
        if (f > 5.0f) {
            setSpeedLimitView(true);
            this.handler.removeCallbacks(this.runReleaseSpeedLimitCover);
            setSpeedLimitPlay(true);
            this.handler.removeCallbacks(this.runReleaseSpeedLimitPlay);
            return;
        }
        if (this.speedLimitView && !this.handler.hasCallbacks(this.runReleaseSpeedLimitCover)) {
            this.handler.postDelayed(this.runReleaseSpeedLimitCover, 3000L);
        }
        if (!this.speedLimitPlay || this.handler.hasCallbacks(this.runReleaseSpeedLimitPlay)) {
            return;
        }
        this.handler.postDelayed(this.runReleaseSpeedLimitPlay, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAvmActive(boolean z) {
        if (z == this.avmActive) {
            return;
        }
        PFLog.m25d(TAG, "setAvmActive " + z);
        this.avmActive = z;
        updateCanPlay();
    }
}
