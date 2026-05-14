package com.chery.media.model.business;

import android.car.Car;
import android.content.Context;
import android.content.DialogInterface;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.caradapter.carapi.interfaces.IConfigListener;
import com.chery.caradapter.carapi.interfaces.IPowerListener;
import com.chery.common.PackageConstants;
import com.chery.media.C0632R;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.StableMediaPlayer;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.util.Utils;
import com.chery.media.view.dialog.Dialog_SingleText;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class LocalMusicBusiness {
    public static final int FAST_PLAY_BACKWARD = -1;
    public static final int FAST_PLAY_FORWARD = 1;
    public static final int FAST_PLAY_NONE = 0;
    private static final int FAST_PLAY_STEP = 8000;
    private static final int FAST_PLAY_STEP_FREQ = 1000;
    public static final int HANDLE_ADD_RESULT_ALREADY = 1;
    public static final int HANDLE_ADD_RESULT_FAILED = -1;
    public static final int HANDLE_ADD_RESULT_FULL = -2;
    public static final int HANDLE_ADD_RESULT_SUCCESS = 0;
    public static final int HANDLE_DELETE_RESULT_FAILED = -1;
    public static final int HANDLE_DELETE_RESULT_NOT_EXIST = -2;
    public static final int HANDLE_DELETE_RESULT_SUCCESS = 0;
    public static final int PLAYLIST_ALL = 0;
    public static final int PLAYLIST_CUSTOM = 1;
    public static final int PLAY_MODE_RANDOM = 1;
    public static final int PLAY_MODE_SEQ = 2;
    public static final int PLAY_MODE_SINGLE = 0;
    private static final int RESTORE_END = 2;
    private static final int RESTORE_NONE = 0;
    private static final int RESTORE_START = 1;
    public static final int STATE_DOWNLOADED = 2;
    public static final int STATE_DOWNLOADING = 1;
    public static final int STATE_NOT_DOWNLOAD = 0;
    private static final String TAG = CarLog.concatTag("MEDIA", LocalMusicBusiness.class);
    private static LocalMusicBusiness instance;
    private AudioManager.OnAudioFocusChangeListener audioFocusChangeListener;
    private AudioFocusRequest audioFocusRequest;
    private AudioManager audioManager;
    private Context context;
    private MediaDef.LocalMusicInfo currentPlaying;
    private Dialog_SingleText downloadTip;
    private Dialog_SingleText errorDialog;
    private Runnable fastPlayRun;
    private Handler handler;
    private String localDir;
    private StableMediaPlayer musicPlayer;
    private Runnable runSaveMusicsInfo;
    private Runnable runSaveRestoreInfo;
    private ReentrantLock reentrantLock = new ReentrantLock();
    private List<MediaDef.LocalMusicInfo> localMusics = new ArrayList();
    private int playlistType = 0;
    private List<MediaDef.LocalMusicInfo> playlist = new ArrayList();
    public List<String> errorlist = new ArrayList();
    private List<MediaDef.LocalMusicInfo> randomPlaylist = new ArrayList();
    private int audioFocusSource = 12;
    private int audioFocus = -1;
    private boolean canPlay = false;
    private boolean playOnCanPlay = false;
    private boolean isPlaying = false;
    private long duration = 0;
    private long position = 0;
    private RestoreInfo restoreInfo = new RestoreInfo();
    private int restoreState = 0;
    private int fastPlayStatus = 0;
    private int playMode = 2;
    private Runnable runShowNoSpace = new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.1
        @Override // java.lang.Runnable
        public void run() {
            new Dialog_SingleText(LocalMusicBusiness.this.context).showText(LocalMusicBusiness.this.context.getString(C0632R.string.media_local_music_no_space), PathInterpolatorCompat.MAX_NUM_POINTS);
        }
    };
    private List<OnMusicsListener> musicsListeners = new ArrayList();
    private List<OnCurrentPlayingListener> currentPlayingListeners = new ArrayList();
    private List<OnPlayingInfoListener> playingInfoListeners = new ArrayList();
    private List<OnPlayModeListener> playModeListeners = new ArrayList();
    private List<HandleAddResponse> handleAddResponses = new ArrayList();
    private List<HandleDeleteResponse> handleDeleteResponses = new ArrayList();
    private List<AddRequest> addRequests = new ArrayList();
    private Executor addExecutor = Executors.newSingleThreadExecutor();
    private List<DeleteRequest> deleteRequests = new ArrayList();
    private Executor deleteExecutor = Executors.newSingleThreadExecutor();
    private long downloadMaxSize = 1073741824;

    public interface HandleAddResponse {
        void onAddResult(MediaDef.UsbMusicInfo usbMusicInfo, int r2);
    }

    public interface HandleDeleteResponse {
        void onDeleteResult(MediaDef.LocalMusicInfo localMusicInfo, int r2);
    }

    public interface OnCurrentPlayingListener {
        void onCurrentPlayingChanged(MediaDef.LocalMusicInfo localMusicInfo);

        void onPlaylistChanged(int r1, List<MediaDef.LocalMusicInfo> list);
    }

    public interface OnMusicsListener {
        void onMusicsChanged(List<MediaDef.LocalMusicInfo> list);
    }

    public interface OnPlayModeListener {
        void onPlayModeChanged(int r1);
    }

    public interface OnPlayingInfoListener {
        void onDurationChanged(long j);

        void onFastPlayStatusChanged(int r1);

        void onPlayingStateChanged(boolean z);

        void onPositionChanged(long j);
    }

    private boolean canPlayByAudioFocus(int r2) {
        return r2 == 1 || r2 == 2;
    }

    public static class RestoreInfo {
        public String playingMusic;
        public boolean isPlaying = false;
        public long position = 0;
        public int playMode = 2;

        public String toString() {
            return "RestoreInfo{playingMusic='" + this.playingMusic + "', isPlaying=" + this.isPlaying + ", position=" + this.position + ", playMode=" + this.playMode + '}';
        }
    }

    public void addMusicsListener(OnMusicsListener onMusicsListener) {
        if (this.musicsListeners.contains(onMusicsListener)) {
            return;
        }
        this.musicsListeners.add(onMusicsListener);
    }

    public void removeMusicsListener(OnMusicsListener onMusicsListener) {
        this.musicsListeners.remove(onMusicsListener);
    }

    public void addCurrentPlayingListener(OnCurrentPlayingListener onCurrentPlayingListener) {
        if (this.currentPlayingListeners.contains(onCurrentPlayingListener)) {
            return;
        }
        this.currentPlayingListeners.add(onCurrentPlayingListener);
    }

    public void removeCurrentPlayingListener(OnCurrentPlayingListener onCurrentPlayingListener) {
        this.currentPlayingListeners.remove(onCurrentPlayingListener);
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

    public void addHandleAddResponse(HandleAddResponse handleAddResponse) {
        if (this.handleAddResponses.contains(handleAddResponse)) {
            return;
        }
        this.handleAddResponses.add(handleAddResponse);
    }

    public void removeHandleAddResponse(HandleAddResponse handleAddResponse) {
        this.handleAddResponses.remove(handleAddResponse);
    }

    public void addHandleDeleteResponse(HandleDeleteResponse handleDeleteResponse) {
        if (this.handleDeleteResponses.contains(handleDeleteResponse)) {
            return;
        }
        this.handleDeleteResponses.add(handleDeleteResponse);
    }

    public void removeHandleDeleteResponse(HandleDeleteResponse handleDeleteResponse) {
        this.handleDeleteResponses.remove(handleDeleteResponse);
    }

    private class AddRequest {
        public HandleAddResponse response;
        public List<MediaDef.UsbMusicInfo> usbMusicInfos;

        public AddRequest(List<MediaDef.UsbMusicInfo> list, HandleAddResponse handleAddResponse) {
            this.usbMusicInfos = new ArrayList();
            this.usbMusicInfos = list;
            this.response = handleAddResponse;
        }
    }

    private class DeleteRequest {
        public List<MediaDef.LocalMusicInfo> localMusicInfos;
        public HandleDeleteResponse response;

        public DeleteRequest(List<MediaDef.LocalMusicInfo> list, HandleDeleteResponse handleDeleteResponse) {
            this.localMusicInfos = new ArrayList();
            this.localMusicInfos = list;
            this.response = handleDeleteResponse;
        }
    }

    public static LocalMusicBusiness getInstance() {
        if (instance == null) {
            instance = new LocalMusicBusiness();
        }
        return instance;
    }

    public void init(Context context) {
        PFLog.m25d(TAG, "init");
        this.context = context;
        this.handler = new Handler();
        StableMediaPlayer stableMediaPlayer = new StableMediaPlayer("localMusic");
        this.musicPlayer = stableMediaPlayer;
        stableMediaPlayer.init();
        this.musicPlayer.addPlayer(0);
        this.musicPlayer.activePlayer(0);
        this.musicPlayer.addCallbackListener(new StableMediaPlayer.CallbackListener() { // from class: com.chery.media.model.business.LocalMusicBusiness.2
            @Override // com.chery.media.model.business.StableMediaPlayer.CallbackListener
            public void onMediaChanged(int r1, String str) {
            }

            @Override // com.chery.media.model.business.StableMediaPlayer.CallbackListener
            public void onVideoSizeNotify(int r1, int r2, int r3) {
            }

            @Override // com.chery.media.model.business.StableMediaPlayer.CallbackListener
            public void onStateChanged(int r8, int r9, final String str) {
                PFLog.m25d(LocalMusicBusiness.TAG, String.format("onStateChanged %s %s %s current:%s", Integer.valueOf(r8), Integer.valueOf(r9), str, LocalMusicBusiness.this.currentPlaying));
                LocalMusicBusiness.this.setPlayingState(r9 == 2);
                if (r9 == 4) {
                    if (LocalMusicBusiness.this.currentPlaying != null && LocalMusicBusiness.this.currentPlaying.path.equals(str) && LocalMusicBusiness.this.canPlay) {
                        if (LocalMusicBusiness.this.playMode != 0) {
                            MediaDef.LocalMusicInfo nextMusic = LocalMusicBusiness.this.getNextMusic();
                            if (nextMusic != null) {
                                PFLog.m25d(LocalMusicBusiness.TAG, String.format("nextMusic:%s", nextMusic));
                                LocalMusicBusiness.this.changeCurrentPlaying(nextMusic);
                                LocalMusicBusiness.this.play();
                                return;
                            }
                            return;
                        }
                        LocalMusicBusiness.this.seekTo(0L);
                        LocalMusicBusiness.this.play();
                        return;
                    }
                    return;
                }
                if (r9 == 5 && LocalMusicBusiness.this.currentPlaying != null && LocalMusicBusiness.this.currentPlaying.path.equals(str)) {
                    if (!LocalMusicBusiness.this.errorlist.contains(str)) {
                        LocalMusicBusiness.this.errorlist.add(str);
                    }
                    if (LocalMusicBusiness.this.canPlay) {
                        if (LocalMusicBusiness.this.errorDialog == null) {
                            LocalMusicBusiness.this.errorDialog = new Dialog_SingleText(LocalMusicBusiness.this.context);
                            LocalMusicBusiness.this.errorDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.chery.media.model.business.LocalMusicBusiness.2.1
                                @Override // android.content.DialogInterface.OnDismissListener
                                public void onDismiss(DialogInterface dialogInterface) {
                                    LocalMusicBusiness.this.errorDialog = null;
                                }
                            });
                            LocalMusicBusiness.this.errorDialog.showText(LocalMusicBusiness.this.context.getString(C0632R.string.media_usb_music_play_error), PathInterpolatorCompat.MAX_NUM_POINTS);
                        } else {
                            LocalMusicBusiness.this.errorDialog.show(PathInterpolatorCompat.MAX_NUM_POINTS);
                        }
                        LocalMusicBusiness.this.handler.postDelayed(new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (LocalMusicBusiness.this.currentPlaying != null && LocalMusicBusiness.this.currentPlaying.path.equals(str) && LocalMusicBusiness.this.canPlay) {
                                    if (LocalMusicBusiness.this.errorlist.size() < LocalMusicBusiness.this.playlist.size()) {
                                        MediaDef.LocalMusicInfo nextMusic2 = LocalMusicBusiness.this.getNextMusic();
                                        if (nextMusic2 == null || nextMusic2 == LocalMusicBusiness.this.currentPlaying) {
                                            return;
                                        }
                                        PFLog.m25d(LocalMusicBusiness.TAG, String.format("nextMusic:%s", nextMusic2));
                                        LocalMusicBusiness.this.changeCurrentPlaying(nextMusic2);
                                        LocalMusicBusiness.this.play();
                                        return;
                                    }
                                    PFLog.m25d(LocalMusicBusiness.TAG, String.format("errorlist size(%s) >= playlist size(%s)", Integer.valueOf(LocalMusicBusiness.this.errorlist.size()), Integer.valueOf(LocalMusicBusiness.this.playlist.size())));
                                }
                            }
                        }, 500L);
                    }
                }
            }

            @Override // com.chery.media.model.business.StableMediaPlayer.CallbackListener
            public void onDurationChanged(int r1, long j) {
                LocalMusicBusiness.this.setDuration(j);
            }

            @Override // com.chery.media.model.business.StableMediaPlayer.CallbackListener
            public void onPositionChanged(int r1, long j) {
                if (LocalMusicBusiness.this.fastPlayStatus == 0) {
                    LocalMusicBusiness.this.setPosition(j);
                } else {
                    PFLog.m25d(LocalMusicBusiness.TAG, String.format("fastPlayStatus %s, not to setPosition", Integer.valueOf(LocalMusicBusiness.this.fastPlayStatus)));
                }
            }
        });
        this.musicPlayer.addSeekCompleteListener(new StableMediaPlayer.OnSeekCompleteListener() { // from class: com.chery.media.model.business.LocalMusicBusiness.3
            @Override // com.chery.media.model.business.StableMediaPlayer.OnSeekCompleteListener
            public void onSeekComplete(int r1, long j) {
                LocalMusicBusiness.this.setPosition(j);
                if (LocalMusicBusiness.this.fastPlayStatus == 0) {
                    LocalMusicBusiness.this.saveRestoreInfo(false);
                }
            }
        });
        this.audioManager = (AudioManager) this.context.getSystemService(Car.AUDIO_SERVICE);
        this.audioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.chery.media.model.business.LocalMusicBusiness.4
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int r6) {
                PFLog.m25d(LocalMusicBusiness.TAG, String.format("onAudioFocusChange %d", Integer.valueOf(r6)));
                LocalMusicBusiness.this.setAudioFocus(r6);
            }
        };
        Bundle bundle = new Bundle();
        bundle.putInt("key_car_source_type", this.audioFocusSource);
        this.audioFocusRequest = new AudioFocusRequest.Builder(1).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).addBundle(bundle).build()).setOnAudioFocusChangeListener(this.audioFocusChangeListener).build();
        this.canPlay = checkCanPlay();
        int currentSource = this.audioManager.getCurrentSource();
        PFLog.m25d(TAG, "getCurrentSource : " + currentSource);
        int lastSource = this.audioManager.getLastSource();
        PFLog.m25d(TAG, "getLastSource : " + lastSource);
        int r1 = this.audioFocusSource;
        if (currentSource == r1 || (currentSource == 0 && lastSource == r1)) {
            requestAudioFocus();
        }
        this.handler.postDelayed(new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.5
            @Override // java.lang.Runnable
            public void run() {
                if (!Environment.getExternalStorageState().equals("mounted")) {
                    PFLog.m25d(LocalMusicBusiness.TAG, "External Storage not mounted");
                    LocalMusicBusiness.this.handler.postDelayed(this, 1000L);
                    return;
                }
                File externalFilesDir = LocalMusicBusiness.this.context.getExternalFilesDir(Environment.DIRECTORY_MUSIC);
                if (externalFilesDir == null || !externalFilesDir.exists()) {
                    PFLog.m25d(LocalMusicBusiness.TAG, "externalFilesDir invalid");
                    LocalMusicBusiness.this.handler.postDelayed(this, 1000L);
                    return;
                }
                LocalMusicBusiness.this.localDir = externalFilesDir.getAbsolutePath() + "/";
                PFLog.m25d(LocalMusicBusiness.TAG, "localDir:" + LocalMusicBusiness.this.localDir);
                LocalMusicBusiness.this.readMusicsInfo();
                LocalMusicBusiness localMusicBusiness = LocalMusicBusiness.this;
                localMusicBusiness.changePlaylist(0, localMusicBusiness.localMusics);
                LocalMusicBusiness.this.readRestoreInfo();
                LocalMusicBusiness.this.restorePlayingInfo();
            }
        }, 1000L);
        CarAdapterUse.addCarPowerClientListener(new IPowerListener() { // from class: com.chery.media.model.business.LocalMusicBusiness.6
            @Override // com.chery.caradapter.carapi.interfaces.IPowerListener
            public void onStateChanged(final int r3) {
                LocalMusicBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int r0 = r3;
                        if (r0 == 11) {
                            LocalMusicBusiness.this.updateCanPlay();
                            return;
                        }
                        if (r0 == 12 || r0 == 15 || r0 == 19) {
                            int currentSource2 = LocalMusicBusiness.this.audioManager.getCurrentSource();
                            PFLog.m25d(LocalMusicBusiness.TAG, "getCurrentSource : " + currentSource2);
                            int lastSource2 = LocalMusicBusiness.this.audioManager.getLastSource();
                            PFLog.m25d(LocalMusicBusiness.TAG, "getLastSource : " + lastSource2);
                            if ((currentSource2 == 0 || currentSource2 == 100) && lastSource2 == LocalMusicBusiness.this.audioFocusSource) {
                                LocalMusicBusiness.this.requestAudioFocus();
                            }
                            LocalMusicBusiness.this.updateCanPlay();
                        }
                    }
                });
            }
        });
        PFLog.m25d(TAG, "RomSize:" + CarAdapterUse.getCarConfigInfoClient().getRomSize());
        if (CarAdapterUse.getCarConfigInfoClient().getRomSize() == 2) {
            this.downloadMaxSize = 2147483648L;
        } else {
            this.downloadMaxSize = 536870912L;
        }
        Settings.System.putLong(this.context.getContentResolver(), PackageConstants.Media.LOCAL_MUSICS_MAX_SIZE, this.downloadMaxSize);
        CarAdapterUse.addConfigListener(new IConfigListener() { // from class: com.chery.media.model.business.LocalMusicBusiness.7
            @Override // com.chery.caradapter.carapi.interfaces.IConfigListener
            public void onConfigSuccess() {
                PFLog.m25d(LocalMusicBusiness.TAG, "onConfigSuccess RomSize:" + CarAdapterUse.getCarConfigInfoClient().getRomSize());
                if (CarAdapterUse.getCarConfigInfoClient().getRomSize() == 2) {
                    LocalMusicBusiness.this.downloadMaxSize = 2147483648L;
                } else {
                    LocalMusicBusiness.this.downloadMaxSize = 536870912L;
                }
                Settings.System.putLong(LocalMusicBusiness.this.context.getContentResolver(), PackageConstants.Media.LOCAL_MUSICS_MAX_SIZE, LocalMusicBusiness.this.downloadMaxSize);
            }
        });
    }

    private String getLocalMusicDir() {
        return this.localDir + "local/";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getLocalMusicPath(MediaDef.UsbMusicInfo usbMusicInfo) {
        String str = usbMusicInfo.title + "-" + usbMusicInfo.artist;
        Object[] objArr = new Object[4];
        objArr[0] = Integer.valueOf(str.hashCode());
        objArr[1] = Integer.valueOf(str.length());
        objArr[2] = TextUtils.isEmpty(usbMusicInfo.title) ? "" : usbMusicInfo.title.substring(0, Math.min(usbMusicInfo.title.length(), 100));
        objArr[3] = TextUtils.isEmpty(usbMusicInfo.artist) ? "" : usbMusicInfo.artist.substring(0, Math.min(usbMusicInfo.artist.length(), 100));
        return getLocalMusicDir() + String.format("%08x-%03d-%s-%s", objArr);
    }

    public List<MediaDef.LocalMusicInfo> getLocalMusics() {
        return new ArrayList(this.localMusics);
    }

    public void addToLocal(final MediaDef.UsbMusicInfo usbMusicInfo, HandleAddResponse handleAddResponse) {
        addToLocal(new ArrayList<MediaDef.UsbMusicInfo>() { // from class: com.chery.media.model.business.LocalMusicBusiness.8
            {
                add(usbMusicInfo);
            }
        }, handleAddResponse);
    }

    public void addToLocal(List<MediaDef.UsbMusicInfo> list, HandleAddResponse handleAddResponse) {
        PFLog.m25d(TAG, "addToLocal " + list);
        if (list.isEmpty()) {
            return;
        }
        AddRequest addRequest = new AddRequest(list, handleAddResponse);
        this.reentrantLock.lock();
        this.addRequests.add(addRequest);
        this.reentrantLock.unlock();
        new AddMusicAsyncTask(addRequest).executeOnExecutor(this.addExecutor, new Void[0]);
    }

    private class AddMusicAsyncTask extends AsyncTask<Void, Void, Void> {
        private AddRequest addRequest;

        public AddMusicAsyncTask(AddRequest addRequest) {
            this.addRequest = addRequest;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            for (final MediaDef.UsbMusicInfo usbMusicInfo : this.addRequest.usbMusicInfos) {
                if (LocalMusicBusiness.this.getLocalMusicsSize() + usbMusicInfo.size > LocalMusicBusiness.this.downloadMaxSize) {
                    PFLog.m25d(LocalMusicBusiness.TAG, "AddMusicAsyncTask " + usbMusicInfo + " HANDLE_ADD_RESULT_FULL");
                    LocalMusicBusiness.this.handler.removeCallbacks(LocalMusicBusiness.this.runShowNoSpace);
                    LocalMusicBusiness.this.handler.postDelayed(LocalMusicBusiness.this.runShowNoSpace, 100L);
                    LocalMusicBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.AddMusicAsyncTask.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (AddMusicAsyncTask.this.addRequest.response != null) {
                                AddMusicAsyncTask.this.addRequest.response.onAddResult(usbMusicInfo, -2);
                            }
                            Iterator it = LocalMusicBusiness.this.handleAddResponses.iterator();
                            while (it.hasNext()) {
                                ((HandleAddResponse) it.next()).onAddResult(usbMusicInfo, -2);
                            }
                        }
                    });
                } else if (LocalMusicBusiness.this.checkLocalState(usbMusicInfo) == 2) {
                    PFLog.m25d(LocalMusicBusiness.TAG, "AddMusicAsyncTask " + usbMusicInfo + " HANDLE_ADD_RESULT_ALREADY");
                    LocalMusicBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.AddMusicAsyncTask.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (AddMusicAsyncTask.this.addRequest.response != null) {
                                AddMusicAsyncTask.this.addRequest.response.onAddResult(usbMusicInfo, 1);
                            }
                            Iterator it = LocalMusicBusiness.this.handleAddResponses.iterator();
                            while (it.hasNext()) {
                                ((HandleAddResponse) it.next()).onAddResult(usbMusicInfo, 1);
                            }
                        }
                    });
                } else {
                    final String localMusicPath = LocalMusicBusiness.this.getLocalMusicPath(usbMusicInfo);
                    final boolean zCopyFile = UtilsClient.getInstance().copyFile(usbMusicInfo.path, localMusicPath);
                    String str = LocalMusicBusiness.TAG;
                    Object[] objArr = new Object[3];
                    objArr[0] = usbMusicInfo.path;
                    objArr[1] = localMusicPath;
                    objArr[2] = zCopyFile ? "success" : "failed";
                    PFLog.m25d(str, String.format("copyFile from %s to %s %s", objArr));
                    String str2 = LocalMusicBusiness.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("AddMusicAsyncTask ");
                    sb.append(usbMusicInfo);
                    sb.append(zCopyFile ? " HANDLE_ADD_RESULT_SUCCESS" : " HANDLE_ADD_RESULT_FAILED");
                    PFLog.m25d(str2, sb.toString());
                    if (!zCopyFile) {
                        PFLog.m25d(LocalMusicBusiness.TAG, "to clear " + localMusicPath);
                        boolean zDelete = new File(localMusicPath).delete();
                        PFLog.m25d(LocalMusicBusiness.TAG, "clear result:" + zDelete);
                    }
                    LocalMusicBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.AddMusicAsyncTask.3
                        @Override // java.lang.Runnable
                        public void run() {
                            if (AddMusicAsyncTask.this.addRequest.response != null) {
                                AddMusicAsyncTask.this.addRequest.response.onAddResult(usbMusicInfo, zCopyFile ? 0 : -1);
                            }
                            Iterator it = LocalMusicBusiness.this.handleAddResponses.iterator();
                            while (it.hasNext()) {
                                ((HandleAddResponse) it.next()).onAddResult(usbMusicInfo, zCopyFile ? 0 : -1);
                            }
                        }
                    });
                    if (zCopyFile) {
                        LocalMusicBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.AddMusicAsyncTask.4
                            @Override // java.lang.Runnable
                            public void run() {
                                if (LocalMusicBusiness.this.downloadTip != null) {
                                    LocalMusicBusiness.this.downloadTip.show(PathInterpolatorCompat.MAX_NUM_POINTS);
                                } else {
                                    LocalMusicBusiness.this.downloadTip = new Dialog_SingleText(LocalMusicBusiness.this.context);
                                    LocalMusicBusiness.this.downloadTip.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.chery.media.model.business.LocalMusicBusiness.AddMusicAsyncTask.4.1
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public void onDismiss(DialogInterface dialogInterface) {
                                            LocalMusicBusiness.this.downloadTip = null;
                                        }
                                    });
                                    LocalMusicBusiness.this.downloadTip.showText(LocalMusicBusiness.this.context.getString(C0632R.string.media_local_music_download_success), PathInterpolatorCompat.MAX_NUM_POINTS);
                                }
                                MediaDef.LocalMusicInfo localMusicInfo = new MediaDef.LocalMusicInfo(localMusicPath);
                                localMusicInfo.originalMusicInfo = usbMusicInfo;
                                LocalMusicBusiness.this.reentrantLock.lock();
                                LocalMusicBusiness.this.localMusics.add(localMusicInfo);
                                LocalMusicBusiness.this.reentrantLock.unlock();
                                LocalMusicBusiness.this.saveMusicsInfo();
                                Settings.System.putLong(LocalMusicBusiness.this.context.getContentResolver(), PackageConstants.Media.LOCAL_MUSICS_SIZE, LocalMusicBusiness.this.getLocalMusicsSize());
                                Iterator it = LocalMusicBusiness.this.musicsListeners.iterator();
                                while (it.hasNext()) {
                                    ((OnMusicsListener) it.next()).onMusicsChanged(new ArrayList(LocalMusicBusiness.this.localMusics));
                                }
                                if (LocalMusicBusiness.this.playlistType == 0) {
                                    LocalMusicBusiness.this.changePlaylist(0, LocalMusicBusiness.this.localMusics);
                                }
                            }
                        });
                    }
                }
            }
            LocalMusicBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.AddMusicAsyncTask.5
                @Override // java.lang.Runnable
                public void run() {
                    LocalMusicBusiness.this.reentrantLock.lock();
                    LocalMusicBusiness.this.addRequests.remove(AddMusicAsyncTask.this.addRequest);
                    LocalMusicBusiness.this.reentrantLock.unlock();
                }
            });
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getLocalMusicsSize() {
        this.reentrantLock.lock();
        Iterator<MediaDef.LocalMusicInfo> it = this.localMusics.iterator();
        long j = 0;
        while (it.hasNext()) {
            j += it.next().originalMusicInfo.size;
        }
        this.reentrantLock.unlock();
        long folderSize = Utils.getFolderSize(getLocalMusicDir());
        PFLog.m25d(TAG, String.format("recordSize:%s, folderSize:%s", Long.valueOf(j), Long.valueOf(folderSize)));
        return Math.max(j, folderSize);
    }

    public void deleteLocal(final MediaDef.LocalMusicInfo localMusicInfo, HandleDeleteResponse handleDeleteResponse) {
        deleteLocals(new ArrayList<MediaDef.LocalMusicInfo>() { // from class: com.chery.media.model.business.LocalMusicBusiness.9
            {
                add(localMusicInfo);
            }
        }, handleDeleteResponse);
    }

    public void deleteLocals(List<MediaDef.LocalMusicInfo> list, HandleDeleteResponse handleDeleteResponse) {
        PFLog.m25d(TAG, "deleteLocals " + list);
        if (list.isEmpty()) {
            return;
        }
        DeleteRequest deleteRequest = new DeleteRequest(list, handleDeleteResponse);
        this.reentrantLock.lock();
        this.deleteRequests.add(deleteRequest);
        this.reentrantLock.unlock();
        new DeleteMusicAsyncTask(deleteRequest).executeOnExecutor(this.deleteExecutor, new Void[0]);
    }

    private class DeleteMusicAsyncTask extends AsyncTask<Void, Void, Void> {
        private DeleteRequest deleteRequest;

        public DeleteMusicAsyncTask(DeleteRequest deleteRequest) {
            this.deleteRequest = deleteRequest;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            final int r8 = LocalMusicBusiness.this.playlist.indexOf(LocalMusicBusiness.this.currentPlaying);
            final boolean zIsPlaying = LocalMusicBusiness.this.isPlaying();
            boolean z = false;
            for (final MediaDef.LocalMusicInfo localMusicInfo : this.deleteRequest.localMusicInfos) {
                if (LocalMusicBusiness.this.checkLocalState(localMusicInfo.path) != 2) {
                    PFLog.m25d(LocalMusicBusiness.TAG, "DeleteMusicAsyncTask " + localMusicInfo + " HANDLE_DELETE_RESULT_NOT_EXIST");
                    LocalMusicBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.DeleteMusicAsyncTask.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (DeleteMusicAsyncTask.this.deleteRequest.response != null) {
                                DeleteMusicAsyncTask.this.deleteRequest.response.onDeleteResult(localMusicInfo, -2);
                            }
                            Iterator it = LocalMusicBusiness.this.handleDeleteResponses.iterator();
                            while (it.hasNext()) {
                                ((HandleDeleteResponse) it.next()).onDeleteResult(localMusicInfo, -2);
                            }
                        }
                    });
                } else {
                    final boolean zDelete = new File(localMusicInfo.path).delete();
                    String str = LocalMusicBusiness.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("DeleteMusicAsyncTask ");
                    sb.append(localMusicInfo);
                    sb.append(zDelete ? " HANDLE_DELETE_RESULT_SUCCESS" : " HANDLE_DELETE_RESULT_FAILED");
                    PFLog.m25d(str, sb.toString());
                    LocalMusicBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.DeleteMusicAsyncTask.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (DeleteMusicAsyncTask.this.deleteRequest.response != null) {
                                DeleteMusicAsyncTask.this.deleteRequest.response.onDeleteResult(localMusicInfo, zDelete ? 0 : -1);
                            }
                            Iterator it = LocalMusicBusiness.this.handleDeleteResponses.iterator();
                            while (it.hasNext()) {
                                ((HandleDeleteResponse) it.next()).onDeleteResult(localMusicInfo, zDelete ? 0 : -1);
                            }
                        }
                    });
                    LocalMusicBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.DeleteMusicAsyncTask.3
                        @Override // java.lang.Runnable
                        public void run() {
                            LocalMusicBusiness.this.reentrantLock.lock();
                            LocalMusicBusiness.this.localMusics.remove(localMusicInfo);
                            LocalMusicBusiness.this.reentrantLock.unlock();
                            LocalMusicBusiness.this.saveMusicsInfo();
                            Settings.System.putLong(LocalMusicBusiness.this.context.getContentResolver(), PackageConstants.Media.LOCAL_MUSICS_SIZE, LocalMusicBusiness.this.getLocalMusicsSize());
                            Iterator it = LocalMusicBusiness.this.musicsListeners.iterator();
                            while (it.hasNext()) {
                                ((OnMusicsListener) it.next()).onMusicsChanged(new ArrayList(LocalMusicBusiness.this.localMusics));
                            }
                            if (LocalMusicBusiness.this.playlist.contains(localMusicInfo)) {
                                LocalMusicBusiness.this.playlist.remove(localMusicInfo);
                                LocalMusicBusiness.this.randomPlaylist = Utils.generateRandomList(LocalMusicBusiness.this.playlist);
                                LocalMusicBusiness.this.errorlist.remove(localMusicInfo);
                                Iterator it2 = LocalMusicBusiness.this.currentPlayingListeners.iterator();
                                while (it2.hasNext()) {
                                    ((OnCurrentPlayingListener) it2.next()).onPlaylistChanged(LocalMusicBusiness.this.playlistType, new ArrayList(LocalMusicBusiness.this.playlist));
                                }
                            }
                        }
                    });
                    z = true;
                }
            }
            if (!z) {
                return null;
            }
            LocalMusicBusiness.this.handler.post(new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.DeleteMusicAsyncTask.4
                @Override // java.lang.Runnable
                public void run() {
                    if (LocalMusicBusiness.this.currentPlaying == null || LocalMusicBusiness.this.localMusics.contains(LocalMusicBusiness.this.currentPlaying)) {
                        return;
                    }
                    int size = r8;
                    if (size < 0) {
                        size = 0;
                    }
                    if (size >= LocalMusicBusiness.this.playlist.size()) {
                        size = LocalMusicBusiness.this.playlist.size() - 1;
                    }
                    if (size >= 0) {
                        LocalMusicBusiness.this.setCurrentPlaying((MediaDef.LocalMusicInfo) LocalMusicBusiness.this.playlist.get(size));
                        if (zIsPlaying) {
                            LocalMusicBusiness.this.play();
                            return;
                        }
                        return;
                    }
                    LocalMusicBusiness.this.setCurrentPlaying(null);
                }
            });
            return null;
        }
    }

    public int checkLocalState(String str) {
        int r1 = 0;
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        this.reentrantLock.lock();
        ArrayList arrayList = new ArrayList(this.localMusics);
        this.reentrantLock.unlock();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (((MediaDef.LocalMusicInfo) it.next()).path.equals(str)) {
                return 2;
            }
        }
        this.reentrantLock.lock();
        Iterator<AddRequest> it2 = this.addRequests.iterator();
        while (it2.hasNext()) {
            Iterator<MediaDef.UsbMusicInfo> it3 = it2.next().usbMusicInfos.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                if (str.equals(getLocalMusicPath(it3.next()))) {
                    r1 = 1;
                    break;
                }
            }
        }
        this.reentrantLock.unlock();
        return r1;
    }

    public int checkLocalState(MediaDef.UsbMusicInfo usbMusicInfo) {
        this.reentrantLock.lock();
        ArrayList<MediaDef.LocalMusicInfo> arrayList = new ArrayList(this.localMusics);
        this.reentrantLock.unlock();
        for (MediaDef.LocalMusicInfo localMusicInfo : arrayList) {
            if (localMusicInfo.originalMusicInfo.title.equals(usbMusicInfo.title) && localMusicInfo.originalMusicInfo.artist.equals(usbMusicInfo.artist)) {
                return 2;
            }
        }
        int r0 = 0;
        this.reentrantLock.lock();
        Iterator<AddRequest> it = this.addRequests.iterator();
        while (it.hasNext()) {
            Iterator<MediaDef.UsbMusicInfo> it2 = it.next().usbMusicInfos.iterator();
            while (true) {
                if (it2.hasNext()) {
                    MediaDef.UsbMusicInfo next = it2.next();
                    if (next.title.equals(usbMusicInfo.title) && next.artist.equals(usbMusicInfo.artist)) {
                        r0 = 1;
                        break;
                    }
                }
            }
        }
        this.reentrantLock.unlock();
        return r0;
    }

    public MediaDef.LocalMusicInfo checkLocalMusicInfo(MediaDef.UsbMusicInfo usbMusicInfo) {
        if (usbMusicInfo == null) {
            return null;
        }
        this.reentrantLock.lock();
        ArrayList<MediaDef.LocalMusicInfo> arrayList = new ArrayList(this.localMusics);
        this.reentrantLock.unlock();
        for (MediaDef.LocalMusicInfo localMusicInfo : arrayList) {
            if (localMusicInfo.originalMusicInfo.title.equals(usbMusicInfo.title) && localMusicInfo.originalMusicInfo.artist.equals(usbMusicInfo.artist)) {
                return localMusicInfo;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveMusicsInfo() {
        PFLog.m25d(TAG, "saveMusicsInfo");
        final String json = new Gson().toJson(this.localMusics);
        Runnable runnable = this.runSaveMusicsInfo;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.10
            @Override // java.lang.Runnable
            public void run() {
                MediaBusiness.getInstance().getIoThread().addRunnable(new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.10.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PFLog.m25d(LocalMusicBusiness.TAG, "run saveMusicsInfo");
                        Utils.writeToFile(LocalMusicBusiness.this.localDir + "local_musics.txt", json.getBytes(), false);
                    }
                });
            }
        };
        this.runSaveMusicsInfo = runnable2;
        this.handler.postDelayed(runnable2, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readMusicsInfo() {
        PFLog.m25d(TAG, "readMusicsInfo");
        byte[] fromFile = Utils.readFromFile(this.localDir + "local_musics.txt");
        if (fromFile == null || fromFile.length <= 0) {
            Settings.System.putLong(this.context.getContentResolver(), PackageConstants.Media.LOCAL_MUSICS_SIZE, 0L);
            return;
        }
        try {
            this.localMusics = (List) new Gson().fromJson(new String(fromFile), new TypeToken<List<MediaDef.LocalMusicInfo>>() { // from class: com.chery.media.model.business.LocalMusicBusiness.11
            }.getType());
        } catch (Exception e) {
            e.printStackTrace();
        }
        PFLog.m25d(TAG, "readMusicsInfo localMusics size:" + this.localMusics.size());
        int r2 = 0;
        boolean z = false;
        while (r2 < this.localMusics.size()) {
            MediaDef.LocalMusicInfo localMusicInfo = this.localMusics.get(r2);
            if (new File(localMusicInfo.path).exists()) {
                r2++;
            } else {
                PFLog.m25d(TAG, String.format("local music %s not exist, remove it", localMusicInfo.path));
                this.localMusics.remove(r2);
                z = true;
            }
        }
        if (z) {
            saveMusicsInfo();
        }
        if (!this.localMusics.isEmpty()) {
            Iterator<OnMusicsListener> it = this.musicsListeners.iterator();
            while (it.hasNext()) {
                it.next().onMusicsChanged(new ArrayList(this.localMusics));
            }
        }
        Settings.System.putLong(this.context.getContentResolver(), PackageConstants.Media.LOCAL_MUSICS_SIZE, getLocalMusicsSize());
    }

    public List<MediaDef.LocalMusicInfo> getPlaylist() {
        return new ArrayList(this.playlist);
    }

    public int getPlaylistType() {
        return this.playlistType;
    }

    public void changePlaylist(int r5) {
        PFLog.m25d(TAG, String.format("changePlaylist playlistType:%d", Integer.valueOf(r5)));
        if (r5 != 0) {
            return;
        }
        changePlaylist(r5, this.localMusics);
    }

    public void changePlaylist(int r7, List<MediaDef.LocalMusicInfo> list) {
        boolean z = true;
        PFLog.m25d(TAG, String.format("changePlaylist playlistType:%d playlist size:%d", Integer.valueOf(r7), Integer.valueOf(list.size())));
        if (r7 == this.playlistType && isPlaylistSame(list, this.playlist)) {
            PFLog.m25d(TAG, "playlist no change!");
            return;
        }
        this.playlistType = r7;
        this.playlist.clear();
        this.playlist.addAll(list);
        this.randomPlaylist = Utils.generateRandomList(list);
        this.errorlist.clear();
        Iterator<OnCurrentPlayingListener> it = this.currentPlayingListeners.iterator();
        while (it.hasNext()) {
            it.next().onPlaylistChanged(r7, new ArrayList(list));
        }
        if (this.currentPlaying != null) {
            if (list.isEmpty()) {
                setCurrentPlaying((MediaDef.LocalMusicInfo) null);
            } else if (!list.contains(this.currentPlaying)) {
                int r72 = 0;
                while (true) {
                    if (r72 >= list.size()) {
                        z = false;
                        break;
                    }
                    MediaDef.LocalMusicInfo localMusicInfo = list.get(r72);
                    if (localMusicInfo.path.equals(this.currentPlaying.path)) {
                        setCurrentPlaying(localMusicInfo);
                        break;
                    }
                    r72++;
                }
                if (!z) {
                    setCurrentPlaying((MediaDef.LocalMusicInfo) null);
                }
            }
        }
        saveRestoreInfo(false);
    }

    private boolean isPlaylistSame(List<MediaDef.LocalMusicInfo> list, List<MediaDef.LocalMusicInfo> list2) {
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

    public MediaDef.LocalMusicInfo getCurrentPlaying() {
        return this.currentPlaying;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentPlaying(MediaDef.LocalMusicInfo localMusicInfo) {
        MediaDef.LocalMusicInfo localMusicInfo2 = this.currentPlaying;
        if (localMusicInfo == localMusicInfo2) {
            return;
        }
        if (localMusicInfo != null && localMusicInfo2 != null && localMusicInfo.path.equals(this.currentPlaying.path)) {
            PFLog.m25d(TAG, "info is same");
            return;
        }
        PFLog.m25d(TAG, "set current playing " + localMusicInfo);
        this.currentPlaying = localMusicInfo;
        this.musicPlayer.setMedia(0, localMusicInfo != null ? localMusicInfo.path : null);
        Iterator<OnCurrentPlayingListener> it = this.currentPlayingListeners.iterator();
        while (it.hasNext()) {
            it.next().onCurrentPlayingChanged(this.currentPlaying);
        }
        saveRestoreInfo(false);
    }

    public void changeCurrentPlaying(MediaDef.LocalMusicInfo localMusicInfo) {
        PFLog.m25d(TAG, "to changeCurrentPlaying " + localMusicInfo);
        if (this.playlist.contains(localMusicInfo)) {
            setCurrentPlaying(localMusicInfo);
        } else if (localMusicInfo != null) {
            changeCurrentPlaying(localMusicInfo.path);
        }
    }

    public void changeCurrentPlaying(String str) {
        PFLog.m25d(TAG, "to changeCurrentPlaying " + str);
        for (MediaDef.LocalMusicInfo localMusicInfo : this.localMusics) {
            if (localMusicInfo.path.equals(str)) {
                setCurrentPlaying(localMusicInfo);
                return;
            }
        }
    }

    public void changeCurrentPlaying(int r4) {
        PFLog.m25d(TAG, "to changeCurrentPlaying " + r4);
        if (r4 < 0 || r4 >= this.playlist.size()) {
            return;
        }
        setCurrentPlaying(this.playlist.get(r4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayingState(boolean z) {
        if (z == this.isPlaying) {
            return;
        }
        PFLog.m25d(TAG, String.format("setPlayingState playingState:%s", Boolean.valueOf(z)));
        this.isPlaying = z;
        Iterator<OnPlayingInfoListener> it = this.playingInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onPlayingStateChanged(z);
        }
        saveRestoreInfo(false);
    }

    public boolean isPlaying() {
        return this.isPlaying;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDuration(long j) {
        if (j == this.duration) {
            return;
        }
        PFLog.m25d(TAG, String.format("setDuration duration:%d", Long.valueOf(j)));
        this.duration = j;
        Iterator<OnPlayingInfoListener> it = this.playingInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onDurationChanged(j);
        }
    }

    public long getDuration() {
        return this.duration;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPosition(long j) {
        if (j == this.position) {
            return;
        }
        this.position = j;
        Iterator<OnPlayingInfoListener> it = this.playingInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onPositionChanged(j);
        }
    }

    public long getPosition() {
        return this.position;
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
        boolean zCheckCanPlay = checkCanPlay();
        if (zCheckCanPlay == this.canPlay) {
            return;
        }
        PFLog.m25d(TAG, String.format("updateCanPlay canPlay:%s", Boolean.valueOf(zCheckCanPlay)));
        this.canPlay = zCheckCanPlay;
        if (zCheckCanPlay) {
            if (this.playOnCanPlay) {
                play();
            }
        } else {
            this.playOnCanPlay = this.isPlaying;
            stopFastPlay();
            pause();
        }
    }

    private boolean checkCanPlay() {
        PFLog.m25d(TAG, "checkCanPlay");
        if (!canPlayByAudioFocus(this.audioFocus)) {
            PFLog.m25d(TAG, String.format("checkCanPlay no audio focus", new Object[0]));
            return false;
        }
        int currentPowerMode = CarAdapterUse.getCarPowerClient().getCurrentPowerMode();
        if (currentPowerMode != 12 && currentPowerMode != 15 && currentPowerMode != 19) {
            PFLog.m25d(TAG, String.format("checkCanPlay power(%d) not run", Integer.valueOf(currentPowerMode)));
            return false;
        }
        PFLog.m25d(TAG, String.format("checkCanPlay true", new Object[0]));
        return true;
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

    public void play() {
        PFLog.m25d(TAG, String.format("play canPlay:%s", Boolean.valueOf(this.canPlay)));
        if (this.currentPlaying == null) {
            if (this.playlist.isEmpty()) {
                PFLog.m25d(TAG, "playlist is empty!");
                return;
            }
            changeCurrentPlaying(0);
        }
        if (this.canPlay) {
            int volumeGroupIdForUsage = CarAdapterUse.getCarVolumeClient().getVolumeGroupIdForUsage(1);
            if (CarAdapterUse.getCarVolumeClient().getGroupMute(volumeGroupIdForUsage)) {
                CarAdapterUse.getCarVolumeClient().setGroupMute(volumeGroupIdForUsage, false, 0);
            }
            if (this.musicPlayer.getState(0) == 5) {
                this.musicPlayer.setMedia(0, this.currentPlaying.path);
                this.musicPlayer.seekTo(0, this.position);
            }
            this.musicPlayer.play(0);
            return;
        }
        this.playOnCanPlay = true;
        if (canPlayByAudioFocus(this.audioFocus)) {
            return;
        }
        requestAudioFocus();
    }

    public void pause() {
        PFLog.m25d(TAG, "pause");
        this.musicPlayer.pause(0);
    }

    public void playPause() {
        PFLog.m25d(TAG, "playPause");
        if (isPlaying()) {
            pause();
        } else {
            play();
        }
    }

    public void setPlayOnCanPlay(boolean z) {
        PFLog.m25d(TAG, "setPlayOnCanPlay " + z);
        this.playOnCanPlay = z;
    }

    public void playNext() {
        MediaDef.LocalMusicInfo nextMusic;
        PFLog.m25d(TAG, "playNext");
        if (this.playlist.isEmpty() || (nextMusic = getNextMusic()) == null) {
            return;
        }
        PFLog.m25d(TAG, "nextMusic:" + nextMusic);
        if (nextMusic == this.currentPlaying) {
            seekTo(0L);
        } else {
            changeCurrentPlaying(nextMusic);
        }
        play();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.chery.media.model.business.MediaDef.LocalMusicInfo getNextMusic() {
        /*
            r3 = this;
            int r0 = r3.playMode
            r1 = 1
            if (r0 == 0) goto L2a
            if (r0 == r1) goto Lb
            r2 = 2
            if (r0 == r2) goto L2a
            goto L49
        Lb:
            java.util.List<com.chery.media.model.business.MediaDef$LocalMusicInfo> r0 = r3.randomPlaylist
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L49
            java.util.List<com.chery.media.model.business.MediaDef$LocalMusicInfo> r0 = r3.randomPlaylist
            com.chery.media.model.business.MediaDef$LocalMusicInfo r2 = r3.currentPlaying
            int r0 = r0.indexOf(r2)
            java.util.List<com.chery.media.model.business.MediaDef$LocalMusicInfo> r3 = r3.randomPlaylist
            int r0 = r0 + r1
            int r1 = r3.size()
            int r0 = r0 % r1
            java.lang.Object r3 = r3.get(r0)
            com.chery.media.model.business.MediaDef$LocalMusicInfo r3 = (com.chery.media.model.business.MediaDef.LocalMusicInfo) r3
            goto L4a
        L2a:
            java.util.List<com.chery.media.model.business.MediaDef$LocalMusicInfo> r0 = r3.playlist
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L49
            java.util.List<com.chery.media.model.business.MediaDef$LocalMusicInfo> r0 = r3.playlist
            com.chery.media.model.business.MediaDef$LocalMusicInfo r2 = r3.currentPlaying
            int r0 = r0.indexOf(r2)
            java.util.List<com.chery.media.model.business.MediaDef$LocalMusicInfo> r3 = r3.playlist
            int r0 = r0 + r1
            int r1 = r3.size()
            int r0 = r0 % r1
            java.lang.Object r3 = r3.get(r0)
            com.chery.media.model.business.MediaDef$LocalMusicInfo r3 = (com.chery.media.model.business.MediaDef.LocalMusicInfo) r3
            goto L4a
        L49:
            r3 = 0
        L4a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.LocalMusicBusiness.getNextMusic():com.chery.media.model.business.MediaDef$LocalMusicInfo");
    }

    public void playPrior() {
        PFLog.m25d(TAG, "playPrior");
        if (this.playlist.isEmpty()) {
            return;
        }
        MediaDef.LocalMusicInfo priorMusic = getPriorMusic();
        PFLog.m25d(TAG, "priorMusic:" + priorMusic);
        if (priorMusic != null) {
            if (priorMusic == this.currentPlaying) {
                seekTo(0L);
            } else {
                changeCurrentPlaying(priorMusic);
            }
            play();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.chery.media.model.business.MediaDef.LocalMusicInfo getPriorMusic() {
        /*
            r3 = this;
            int r0 = r3.playMode
            r1 = 1
            if (r0 == 0) goto L36
            if (r0 == r1) goto Lb
            r2 = 2
            if (r0 == r2) goto L36
            goto L61
        Lb:
            java.util.List<com.chery.media.model.business.MediaDef$LocalMusicInfo> r0 = r3.randomPlaylist
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L61
            java.util.List<com.chery.media.model.business.MediaDef$LocalMusicInfo> r0 = r3.randomPlaylist
            com.chery.media.model.business.MediaDef$LocalMusicInfo r2 = r3.currentPlaying
            int r0 = r0.indexOf(r2)
            if (r0 > 0) goto L25
            java.util.List<com.chery.media.model.business.MediaDef$LocalMusicInfo> r0 = r3.randomPlaylist
            int r0 = r0.size()
            int r0 = r0 - r1
            goto L2d
        L25:
            int r0 = r0 - r1
            java.util.List<com.chery.media.model.business.MediaDef$LocalMusicInfo> r1 = r3.randomPlaylist
            int r1 = r1.size()
            int r0 = r0 % r1
        L2d:
            java.util.List<com.chery.media.model.business.MediaDef$LocalMusicInfo> r3 = r3.randomPlaylist
            java.lang.Object r3 = r3.get(r0)
            com.chery.media.model.business.MediaDef$LocalMusicInfo r3 = (com.chery.media.model.business.MediaDef.LocalMusicInfo) r3
            goto L62
        L36:
            java.util.List<com.chery.media.model.business.MediaDef$LocalMusicInfo> r0 = r3.playlist
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L61
            java.util.List<com.chery.media.model.business.MediaDef$LocalMusicInfo> r0 = r3.playlist
            com.chery.media.model.business.MediaDef$LocalMusicInfo r2 = r3.currentPlaying
            int r0 = r0.indexOf(r2)
            if (r0 > 0) goto L50
            java.util.List<com.chery.media.model.business.MediaDef$LocalMusicInfo> r0 = r3.playlist
            int r0 = r0.size()
            int r0 = r0 - r1
            goto L58
        L50:
            int r0 = r0 - r1
            java.util.List<com.chery.media.model.business.MediaDef$LocalMusicInfo> r1 = r3.playlist
            int r1 = r1.size()
            int r0 = r0 % r1
        L58:
            java.util.List<com.chery.media.model.business.MediaDef$LocalMusicInfo> r3 = r3.playlist
            java.lang.Object r3 = r3.get(r0)
            com.chery.media.model.business.MediaDef$LocalMusicInfo r3 = (com.chery.media.model.business.MediaDef.LocalMusicInfo) r3
            goto L62
        L61:
            r3 = 0
        L62:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.LocalMusicBusiness.getPriorMusic():com.chery.media.model.business.MediaDef$LocalMusicInfo");
    }

    public void seekTo(long j) {
        PFLog.m25d(TAG, String.format("seek %s", Long.valueOf(j)));
        this.musicPlayer.seekTo(0, j);
    }

    public void fastBackward() {
        PFLog.m25d(TAG, "fastBackward");
        if (this.currentPlaying == null || !this.canPlay || this.fastPlayStatus == -1) {
            return;
        }
        Runnable runnable = this.fastPlayRun;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.12
            @Override // java.lang.Runnable
            public void run() {
                if (LocalMusicBusiness.this.position > 8000) {
                    LocalMusicBusiness localMusicBusiness = LocalMusicBusiness.this;
                    localMusicBusiness.seekTo(localMusicBusiness.position - 8000);
                    LocalMusicBusiness localMusicBusiness2 = LocalMusicBusiness.this;
                    localMusicBusiness2.setPosition(localMusicBusiness2.position - 8000);
                    LocalMusicBusiness.this.play();
                    LocalMusicBusiness.this.handler.postDelayed(this, 1000L);
                    return;
                }
                LocalMusicBusiness.this.seekTo(0L);
                LocalMusicBusiness.this.setPosition(0L);
                LocalMusicBusiness.this.play();
                LocalMusicBusiness.this.setFastPlayStatus(0);
                LocalMusicBusiness.this.handler.removeCallbacks(this);
                LocalMusicBusiness.this.fastPlayRun = null;
            }
        };
        this.fastPlayRun = runnable2;
        this.handler.postDelayed(runnable2, 1000L);
        setFastPlayStatus(-1);
    }

    public void fastForward() {
        PFLog.m25d(TAG, "fastForward");
        if (this.currentPlaying == null || !this.canPlay || this.fastPlayStatus == 1) {
            return;
        }
        Runnable runnable = this.fastPlayRun;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.13
            @Override // java.lang.Runnable
            public void run() {
                if (LocalMusicBusiness.this.position + 8000 >= LocalMusicBusiness.this.duration) {
                    if (LocalMusicBusiness.this.playMode == 0) {
                        LocalMusicBusiness.this.seekTo(0L);
                        LocalMusicBusiness.this.setPosition(0L);
                        LocalMusicBusiness.this.play();
                    } else {
                        LocalMusicBusiness.this.playNext();
                    }
                    LocalMusicBusiness.this.setFastPlayStatus(0);
                    LocalMusicBusiness.this.handler.removeCallbacks(this);
                    LocalMusicBusiness.this.fastPlayRun = null;
                    return;
                }
                LocalMusicBusiness localMusicBusiness = LocalMusicBusiness.this;
                localMusicBusiness.seekTo(localMusicBusiness.position + 8000);
                LocalMusicBusiness localMusicBusiness2 = LocalMusicBusiness.this;
                localMusicBusiness2.setPosition(localMusicBusiness2.position + 8000);
                LocalMusicBusiness.this.play();
                LocalMusicBusiness.this.handler.postDelayed(this, 1000L);
            }
        };
        this.fastPlayRun = runnable2;
        this.handler.postDelayed(runnable2, 1000L);
        setFastPlayStatus(1);
    }

    public void stopFastPlay() {
        PFLog.m25d(TAG, "stopFastPlay");
        if (this.fastPlayStatus == 0) {
            return;
        }
        Runnable runnable = this.fastPlayRun;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
            this.fastPlayRun = null;
        }
        setFastPlayStatus(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFastPlayStatus(int r5) {
        if (r5 == this.fastPlayStatus) {
            return;
        }
        PFLog.m25d(TAG, String.format("setFastPlayStatus %d", Integer.valueOf(r5)));
        this.fastPlayStatus = r5;
        if (r5 == 0) {
            saveRestoreInfo(false);
        }
        Iterator<OnPlayingInfoListener> it = this.playingInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onFastPlayStatusChanged(r5);
        }
    }

    public int getFastPlayStatus() {
        return this.fastPlayStatus;
    }

    public int getPlayMode() {
        return this.playMode;
    }

    private void setPlayMode(int r5) {
        if (r5 == this.playMode) {
            return;
        }
        PFLog.m25d(TAG, String.format("setPlayMode %d", Integer.valueOf(r5)));
        this.playMode = r5;
        Iterator<OnPlayModeListener> it = this.playModeListeners.iterator();
        while (it.hasNext()) {
            it.next().onPlayModeChanged(r5);
        }
        saveRestoreInfo(false);
    }

    public void changePlayMode(int r5) {
        PFLog.m25d(TAG, String.format("changePlayMode %d", Integer.valueOf(r5)));
        if (r5 == this.playMode) {
            return;
        }
        setPlayMode(r5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveRestoreInfo(boolean z) {
        PFLog.m25d(TAG, String.format("saveRestoreInfo force:%s", Boolean.valueOf(z)));
        if (!z && this.restoreState == 1) {
            PFLog.m25d(TAG, "restore start, ignore!");
            return;
        }
        MediaDef.LocalMusicInfo currentPlaying = getCurrentPlaying();
        this.restoreInfo.playingMusic = currentPlaying != null ? currentPlaying.path : null;
        if (this.canPlay) {
            this.restoreInfo.isPlaying = this.isPlaying;
        } else {
            this.restoreInfo.isPlaying = this.playOnCanPlay;
        }
        this.restoreInfo.position = this.position;
        this.restoreInfo.playMode = this.playMode;
        Runnable runnable = this.runSaveRestoreInfo;
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
        }
        final String json = new Gson().toJson(this.restoreInfo);
        Runnable runnable2 = new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.14
            @Override // java.lang.Runnable
            public void run() {
                MediaBusiness.getInstance().getIoThread().addRunnable(new Runnable() { // from class: com.chery.media.model.business.LocalMusicBusiness.14.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PFLog.m25d(LocalMusicBusiness.TAG, String.format("do saveRestoreInfo", new Object[0]));
                        PFLog.m25d(LocalMusicBusiness.TAG, "restoreInfo : " + json);
                        Utils.writeToInternalFile(LocalMusicBusiness.this.context, "local_music_restore_info.txt", json.getBytes(), false);
                    }
                });
            }
        };
        this.runSaveRestoreInfo = runnable2;
        this.handler.postDelayed(runnable2, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readRestoreInfo() {
        PFLog.m25d(TAG, "readRestoreInfo");
        byte[] fromInternalFile = Utils.readFromInternalFile(this.context, "local_music_restore_info.txt");
        if (fromInternalFile == null || fromInternalFile.length <= 0) {
            return;
        }
        String str = new String(fromInternalFile);
        PFLog.m25d(TAG, "readRestoreInfo : " + str);
        try {
            this.restoreInfo = (RestoreInfo) new Gson().fromJson(str, new TypeToken<RestoreInfo>() { // from class: com.chery.media.model.business.LocalMusicBusiness.15
            }.getType());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restorePlayingInfo() {
        PFLog.m25d(TAG, "restorePlayingInfo");
        this.restoreState = 1;
        setPlayMode(this.restoreInfo.playMode);
        if (this.restoreInfo.playingMusic == null) {
            PFLog.m25d(TAG, "playingMusic null");
            this.playOnCanPlay = true;
        } else {
            for (MediaDef.LocalMusicInfo localMusicInfo : this.playlist) {
                if (localMusicInfo.path.equals(this.restoreInfo.playingMusic)) {
                    setCurrentPlaying(localMusicInfo);
                }
            }
        }
        MediaDef.LocalMusicInfo currentPlaying = getCurrentPlaying();
        if (currentPlaying == null) {
            PFLog.m25d(TAG, "restore music failed, try to set first");
            if (!this.playlist.isEmpty()) {
                currentPlaying = this.playlist.get(0);
                setCurrentPlaying(currentPlaying);
                this.restoreInfo.position = 0L;
            }
        }
        if (currentPlaying != null) {
            this.musicPlayer.setMedia(0, currentPlaying.path);
            if (this.restoreInfo.position != 0) {
                this.musicPlayer.seekTo(0, this.restoreInfo.position);
            }
            if (this.restoreInfo.isPlaying) {
                if (this.canPlay) {
                    play();
                } else {
                    this.playOnCanPlay = true;
                }
            }
        }
        this.restoreState = 2;
        saveRestoreInfo(false);
    }
}
