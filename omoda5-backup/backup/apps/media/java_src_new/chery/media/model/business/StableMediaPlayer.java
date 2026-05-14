package com.chery.media.model.business;

import android.media.MediaPlayer;
import android.media.PlaybackParams;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class StableMediaPlayer {
    private static final int MEDIA_PLAYER_STATE_COMPELETED = 7;
    private static final int MEDIA_PLAYER_STATE_ERROR = 9;
    private static final int MEDIA_PLAYER_STATE_IDLE = 0;
    private static final int MEDIA_PLAYER_STATE_INITIALIZED = 1;
    private static final int MEDIA_PLAYER_STATE_PAUSED = 5;
    private static final int MEDIA_PLAYER_STATE_PREPARED = 3;
    private static final int MEDIA_PLAYER_STATE_PREPARING = 2;
    private static final int MEDIA_PLAYER_STATE_STARTED = 4;
    private static final int MEDIA_PLAYER_STATE_STOPPED = 6;
    private static final int PLAYER_ACTION_ACTIVATE_PLAYER = 2;
    private static final int PLAYER_ACTION_ADD_PLAYER = 0;
    private static final int PLAYER_ACTION_DEACTIVATE_PLAYER = 3;
    private static final int PLAYER_ACTION_PAUSE = 6;
    private static final int PLAYER_ACTION_PLAY = 5;
    private static final int PLAYER_ACTION_REMOVE_PLAYER = 1;
    private static final int PLAYER_ACTION_SEEK_TO = 8;
    private static final int PLAYER_ACTION_SET_MEDIA = 4;
    private static final int PLAYER_ACTION_SET_MUTE = 9;
    private static final int PLAYER_ACTION_SET_SPEED = 10;
    private static final int PLAYER_ACTION_STOP = 7;
    public static final int PLAYING_STATE_ERROR = 5;
    public static final int PLAYING_STATE_PAUSED = 3;
    public static final int PLAYING_STATE_PLAYEND = 4;
    public static final int PLAYING_STATE_PLAYING = 2;
    public static final int PLAYING_STATE_STOPPED = 1;
    public static final int PLAYING_STATE_UNSET = 0;
    private SurfaceHolder mSurfaceHolder;
    private Handler mThreadHandler;
    private static List<String> sPlayingStateStrings = new ArrayList();
    private static String sPlayingUndefinedStateString = "UndefinedState";
    private static List<String> sMediaPlayerStateStrings = new ArrayList();
    private static String sMediaPlayerUndefinedActionString = "UndefinedState";
    private String TAG = CarLog.concatTag("MEDIA", StableMediaPlayer.class);
    private Lock mLock = new ReentrantLock();
    private Lock mSurfaceLock = new ReentrantLock();
    private Lock mActionLock = new ReentrantLock();
    private Handler mHandler = new Handler();
    private List<CallbackListener> mCallbackListeners = new ArrayList();
    private List<OnSeekCompleteListener> mSeekCompleteListeners = new ArrayList();
    private HashMap<Integer, PlayerInfo> mPlayerInfos = new HashMap<>();
    private List<Runnable> mDelayedRunnables = new ArrayList();
    private List<PlayerAction> mPlayerActions = new ArrayList();
    private HashMap<Integer, MediaPlayerInfo> mMediaPlayerInfos = new HashMap<>();
    private boolean mSurfaceHolderChanged = false;
    private int mActivatedKey = -1;
    private Runnable mActionRunnable = new Runnable() { // from class: com.chery.media.model.business.StableMediaPlayer.1
        @Override // java.lang.Runnable
        public void run() throws IllegalStateException, IOException, IllegalArgumentException {
            StableMediaPlayer.this.checkActionList();
        }
    };

    public interface CallbackListener {
        void onDurationChanged(int r1, long j);

        void onMediaChanged(int r1, String str);

        void onPositionChanged(int r1, long j);

        void onStateChanged(int r1, int r2, String str);

        void onVideoSizeNotify(int r1, int r2, int r3);
    }

    public interface OnSeekCompleteListener {
        void onSeekComplete(int r1, long j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getPlayerActionString(int r0) {
        switch (r0) {
            case 0:
                return "AddPlayer";
            case 1:
                return "RemovePlayer";
            case 2:
                return "ActivatePlayer";
            case 3:
                return "DeactivatePlayer";
            case 4:
                return "SetMedia";
            case 5:
                return "Play";
            case 6:
                return "Pause";
            case 7:
                return "Stop";
            case 8:
                return "SeekTo";
            case 9:
                return "SetMute";
            case 10:
                return "SetSpeed";
            default:
                return "UndefinedAction";
        }
    }

    public StableMediaPlayer(String str) {
        this.TAG += "." + str;
    }

    private static String getPlayingStateString(int r2) {
        if (sPlayingStateStrings.isEmpty()) {
            sPlayingStateStrings.add("Unset");
            sPlayingStateStrings.add("Stopped");
            sPlayingStateStrings.add("Playing");
            sPlayingStateStrings.add("Paused");
            sPlayingStateStrings.add("PlayEnd");
            sPlayingStateStrings.add("Error");
        }
        if (r2 < 0 || r2 >= sPlayingStateStrings.size()) {
            return sPlayingUndefinedStateString;
        }
        return sPlayingStateStrings.get(r2);
    }

    class PlayerInfo {
        public int state = 0;
        public long duration = 0;
        public long position = 0;
        public int width = 0;
        public int height = 0;

        PlayerInfo() {
        }
    }

    private static String getMediaPlayerStateString(int r2) {
        if (sMediaPlayerStateStrings.isEmpty()) {
            sMediaPlayerStateStrings.add("Idle");
            sMediaPlayerStateStrings.add("Initialized");
            sMediaPlayerStateStrings.add("Preparing");
            sMediaPlayerStateStrings.add("Prepared");
            sMediaPlayerStateStrings.add("Started");
            sMediaPlayerStateStrings.add("Paused");
            sMediaPlayerStateStrings.add("Stopped");
            sMediaPlayerStateStrings.add("Compeleted");
            sMediaPlayerStateStrings.add("End");
            sMediaPlayerStateStrings.add("Error");
        }
        if (r2 < 0 || r2 >= sMediaPlayerStateStrings.size()) {
            return sMediaPlayerUndefinedActionString;
        }
        return sMediaPlayerStateStrings.get(r2);
    }

    class PlayerAction {
        public int action;
        public int key;
        public Object param1;
        public Object param2;

        public PlayerAction(int r2, int r3) {
            this.key = r2;
            this.action = r3;
        }

        public PlayerAction(int r2, int r3, Object obj) {
            this.key = r2;
            this.action = r3;
            this.param1 = obj;
        }

        public PlayerAction(int r2, int r3, Object obj, Object obj2) {
            this.key = r2;
            this.action = r3;
            this.param1 = obj;
            this.param2 = obj2;
        }

        public String toString() {
            return "PlayerAction{key=" + this.key + ", action=" + StableMediaPlayer.getPlayerActionString(this.action) + ", param1=" + this.param1 + ", param2=" + this.param2 + '}';
        }
    }

    class MediaPlayerInfo {
        public Runnable mCheckPosition;
        public String mMedia;
        public MediaPlayer mMediaPlayer;
        public int mMediaPlayerState = 0;
        public long mReactivatedPosition = -1;

        MediaPlayerInfo(final int r4) {
            this.mCheckPosition = new Runnable() { // from class: com.chery.media.model.business.StableMediaPlayer.MediaPlayerInfo.1
                @Override // java.lang.Runnable
                public void run() {
                    StableMediaPlayer.this.updatePosition(r4);
                    StableMediaPlayer.this.mLock.lock();
                    if (StableMediaPlayer.this.mThreadHandler != null) {
                        StableMediaPlayer.this.mThreadHandler.postDelayed(MediaPlayerInfo.this.mCheckPosition, 400L);
                    }
                    StableMediaPlayer.this.mLock.unlock();
                }
            };
        }
    }

    public void addCallbackListener(CallbackListener callbackListener) {
        this.mCallbackListeners.add(callbackListener);
    }

    public void removeCallbackListener(CallbackListener callbackListener) {
        this.mCallbackListeners.remove(callbackListener);
    }

    public void addSeekCompleteListener(OnSeekCompleteListener onSeekCompleteListener) {
        this.mSeekCompleteListeners.add(onSeekCompleteListener);
    }

    public void removeSeekCompleteListener(OnSeekCompleteListener onSeekCompleteListener) {
        this.mSeekCompleteListeners.remove(onSeekCompleteListener);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.chery.media.model.business.StableMediaPlayer$2] */
    public void init() {
        new Thread() { // from class: com.chery.media.model.business.StableMediaPlayer.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws IllegalStateException {
                PFLog.m31v(StableMediaPlayer.this.TAG, String.format("thread run", new Object[0]));
                super.run();
                Looper.prepare();
                StableMediaPlayer.this.mLock.lock();
                StableMediaPlayer.this.mThreadHandler = new Handler();
                for (int r0 = 0; r0 < StableMediaPlayer.this.mDelayedRunnables.size(); r0++) {
                    StableMediaPlayer.this.mThreadHandler.post((Runnable) StableMediaPlayer.this.mDelayedRunnables.get(r0));
                }
                StableMediaPlayer.this.mDelayedRunnables.clear();
                StableMediaPlayer.this.mLock.unlock();
                Looper.loop();
                Iterator it = StableMediaPlayer.this.mMediaPlayerInfos.keySet().iterator();
                while (it.hasNext()) {
                    StableMediaPlayer.this.destroyPlayer(((Integer) it.next()).intValue());
                }
                StableMediaPlayer.this.mMediaPlayerInfos.clear();
                PFLog.m31v(StableMediaPlayer.this.TAG, String.format("thread end", new Object[0]));
            }
        }.start();
    }

    public void uninit() {
        this.mLock.lock();
        Handler handler = this.mThreadHandler;
        if (handler != null) {
            handler.getLooper().quit();
        }
        this.mLock.unlock();
    }

    public void addPlayer(int r5) {
        this.mActionLock.lock();
        boolean z = !this.mPlayerActions.isEmpty();
        this.mPlayerActions.add(new PlayerAction(r5, 0));
        this.mActionLock.unlock();
        this.mLock.lock();
        if (!z) {
            Handler handler = this.mThreadHandler;
            if (handler == null) {
                this.mDelayedRunnables.add(this.mActionRunnable);
            } else {
                handler.post(this.mActionRunnable);
            }
        }
        this.mLock.unlock();
    }

    public void removePlayer(int r5) {
        this.mActionLock.lock();
        boolean z = !this.mPlayerActions.isEmpty();
        this.mPlayerActions.add(new PlayerAction(r5, 1));
        this.mActionLock.unlock();
        this.mLock.lock();
        if (!z) {
            Handler handler = this.mThreadHandler;
            if (handler == null) {
                this.mDelayedRunnables.add(this.mActionRunnable);
            } else {
                handler.post(this.mActionRunnable);
            }
        }
        this.mLock.unlock();
    }

    public void activePlayer(int r6) {
        this.mActionLock.lock();
        boolean z = !this.mPlayerActions.isEmpty();
        this.mPlayerActions.add(new PlayerAction(r6, 2, Integer.valueOf(r6)));
        this.mActionLock.unlock();
        this.mLock.lock();
        if (!z) {
            Handler handler = this.mThreadHandler;
            if (handler == null) {
                this.mDelayedRunnables.add(this.mActionRunnable);
            } else {
                handler.post(this.mActionRunnable);
            }
        }
        this.mLock.unlock();
    }

    public void deactivePlayer(int r6) {
        this.mActionLock.lock();
        boolean z = !this.mPlayerActions.isEmpty();
        this.mPlayerActions.add(new PlayerAction(r6, 3, Integer.valueOf(r6)));
        this.mActionLock.unlock();
        this.mLock.lock();
        if (!z) {
            Handler handler = this.mThreadHandler;
            if (handler == null) {
                this.mDelayedRunnables.add(this.mActionRunnable);
            } else {
                handler.post(this.mActionRunnable);
            }
        }
        this.mLock.unlock();
    }

    public int getActivatedKey() {
        return this.mActivatedKey;
    }

    public void setSurfaceHolder(SurfaceHolder surfaceHolder) {
        PFLog.m31v(this.TAG, "setSurfaceHolder:" + surfaceHolder);
        this.mSurfaceLock.lock();
        this.mSurfaceHolder = surfaceHolder;
        this.mSurfaceHolderChanged = true;
        this.mSurfaceLock.unlock();
    }

    public void setMedia(int r5, String str) {
        this.mActionLock.lock();
        boolean z = !this.mPlayerActions.isEmpty();
        this.mPlayerActions.add(new PlayerAction(r5, 4, str));
        this.mActionLock.unlock();
        this.mLock.lock();
        if (!z) {
            Handler handler = this.mThreadHandler;
            if (handler == null) {
                this.mDelayedRunnables.add(this.mActionRunnable);
            } else {
                handler.post(this.mActionRunnable);
            }
        }
        this.mLock.unlock();
    }

    public void play(int r5) {
        this.mActionLock.lock();
        boolean z = !this.mPlayerActions.isEmpty();
        this.mPlayerActions.add(new PlayerAction(r5, 5));
        this.mActionLock.unlock();
        this.mLock.lock();
        if (!z) {
            Handler handler = this.mThreadHandler;
            if (handler == null) {
                this.mDelayedRunnables.add(this.mActionRunnable);
            } else {
                handler.post(this.mActionRunnable);
            }
        }
        this.mLock.unlock();
    }

    public void pause(int r5) {
        this.mActionLock.lock();
        boolean z = !this.mPlayerActions.isEmpty();
        this.mPlayerActions.add(new PlayerAction(r5, 6));
        this.mActionLock.unlock();
        this.mLock.lock();
        if (!z) {
            Handler handler = this.mThreadHandler;
            if (handler == null) {
                this.mDelayedRunnables.add(this.mActionRunnable);
            } else {
                handler.post(this.mActionRunnable);
            }
        }
        this.mLock.unlock();
    }

    public void stop(int r5) {
        this.mActionLock.lock();
        boolean z = !this.mPlayerActions.isEmpty();
        this.mPlayerActions.add(new PlayerAction(r5, 7));
        this.mActionLock.unlock();
        this.mLock.lock();
        if (!z) {
            Handler handler = this.mThreadHandler;
            if (handler == null) {
                this.mDelayedRunnables.add(this.mActionRunnable);
            } else {
                handler.post(this.mActionRunnable);
            }
        }
        this.mLock.unlock();
    }

    public void seekTo(int r2, long j) {
        seekTo(r2, j, 0);
    }

    public void seekTo(int r10, long j, int r13) {
        this.mActionLock.lock();
        boolean z = !this.mPlayerActions.isEmpty();
        this.mPlayerActions.add(new PlayerAction(r10, 8, Long.valueOf(j), Integer.valueOf(r13)));
        this.mActionLock.unlock();
        this.mLock.lock();
        if (!z) {
            Handler handler = this.mThreadHandler;
            if (handler == null) {
                this.mDelayedRunnables.add(this.mActionRunnable);
            } else {
                handler.post(this.mActionRunnable);
            }
        }
        this.mLock.unlock();
    }

    public void setMute(int r5, boolean z) {
        this.mActionLock.lock();
        boolean z2 = !this.mPlayerActions.isEmpty();
        this.mPlayerActions.add(new PlayerAction(r5, 9, Boolean.valueOf(z)));
        this.mActionLock.unlock();
        this.mLock.lock();
        if (!z2) {
            Handler handler = this.mThreadHandler;
            if (handler == null) {
                this.mDelayedRunnables.add(this.mActionRunnable);
            } else {
                handler.post(this.mActionRunnable);
            }
        }
        this.mLock.unlock();
    }

    public void setSpeed(int r5, float f) {
        this.mActionLock.lock();
        boolean z = !this.mPlayerActions.isEmpty();
        this.mPlayerActions.add(new PlayerAction(r5, 10, Float.valueOf(f)));
        this.mActionLock.unlock();
        this.mLock.lock();
        if (!z) {
            Handler handler = this.mThreadHandler;
            if (handler == null) {
                this.mDelayedRunnables.add(this.mActionRunnable);
            } else {
                handler.post(this.mActionRunnable);
            }
        }
        this.mLock.unlock();
    }

    public int getState(int r1) {
        PlayerInfo playerInfo = this.mPlayerInfos.get(Integer.valueOf(r1));
        if (playerInfo == null) {
            return 0;
        }
        return playerInfo.state;
    }

    public long getDuration(int r1) {
        PlayerInfo playerInfo = this.mPlayerInfos.get(Integer.valueOf(r1));
        if (playerInfo == null) {
            return 0L;
        }
        return playerInfo.duration;
    }

    public long getPosition(int r1) {
        PlayerInfo playerInfo = this.mPlayerInfos.get(Integer.valueOf(r1));
        if (playerInfo == null) {
            return 0L;
        }
        return playerInfo.position;
    }

    public int getWidth(int r1) {
        PlayerInfo playerInfo = this.mPlayerInfos.get(Integer.valueOf(r1));
        if (playerInfo == null) {
            return 0;
        }
        return playerInfo.width;
    }

    public int getHeight(int r1) {
        PlayerInfo playerInfo = this.mPlayerInfos.get(Integer.valueOf(r1));
        if (playerInfo == null) {
            return 0;
        }
        return playerInfo.height;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a0, code lost:
    
        r5.mActionLock.unlock();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void checkActionList() throws java.lang.IllegalStateException, java.io.IOException, java.lang.IllegalArgumentException {
        /*
            r5 = this;
        L0:
            r5.mergeActions()
            r0 = 0
            java.util.concurrent.locks.Lock r1 = r5.mActionLock
            r1.lock()
            java.util.List<com.chery.media.model.business.StableMediaPlayer$PlayerAction> r1 = r5.mPlayerActions
            int r1 = r1.size()
            r2 = 0
            if (r1 <= 0) goto L1a
            java.util.List<com.chery.media.model.business.StableMediaPlayer$PlayerAction> r0 = r5.mPlayerActions
            java.lang.Object r0 = r0.get(r2)
            com.chery.media.model.business.StableMediaPlayer$PlayerAction r0 = (com.chery.media.model.business.StableMediaPlayer.PlayerAction) r0
        L1a:
            java.util.concurrent.locks.Lock r1 = r5.mActionLock
            r1.unlock()
            if (r0 != 0) goto L23
            goto Lb8
        L23:
            java.lang.String r1 = r5.TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "doAction begin "
            r3.append(r4)
            r3.append(r0)
            java.lang.String r3 = r3.toString()
            com.avn.tools.log.PFLog.m31v(r1, r3)
            r5.doAction(r0)
            java.lang.String r1 = r5.TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "doAction finish "
            r3.append(r4)
            r3.append(r0)
            java.lang.String r3 = r3.toString()
            com.avn.tools.log.PFLog.m31v(r1, r3)
            java.util.concurrent.locks.Lock r1 = r5.mActionLock
            r1.lock()
            java.util.List<com.chery.media.model.business.StableMediaPlayer$PlayerAction> r1 = r5.mPlayerActions
            int r1 = r1.size()
            if (r1 != 0) goto L65
            java.util.concurrent.locks.Lock r5 = r5.mActionLock
            r5.unlock()
            goto Lb8
        L65:
            java.util.List<com.chery.media.model.business.StableMediaPlayer$PlayerAction> r1 = r5.mPlayerActions
            java.lang.Object r1 = r1.get(r2)
            if (r1 == r0) goto L80
            java.lang.String r0 = r5.TAG
            java.lang.Object[] r1 = new java.lang.Object[r2]
            java.lang.String r2 = "front action of PlayerActionList not expected"
            java.lang.String r1 = java.lang.String.format(r2, r1)
            com.avn.tools.log.PFLog.m33w(r0, r1)
            java.util.concurrent.locks.Lock r0 = r5.mActionLock
            r0.unlock()
            goto L0
        L80:
            java.util.HashMap<java.lang.Integer, com.chery.media.model.business.StableMediaPlayer$MediaPlayerInfo> r1 = r5.mMediaPlayerInfos
            int r3 = r0.key
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            java.lang.Object r1 = r1.get(r3)
            com.chery.media.model.business.StableMediaPlayer$MediaPlayerInfo r1 = (com.chery.media.model.business.StableMediaPlayer.MediaPlayerInfo) r1
            if (r1 == 0) goto La6
            int r1 = r1.mMediaPlayerState
            r3 = 2
            if (r1 != r3) goto La6
            int r1 = r0.action
            r3 = 5
            if (r1 == r3) goto La0
            int r0 = r0.action
            r1 = 8
            if (r0 != r1) goto La6
        La0:
            java.util.concurrent.locks.Lock r5 = r5.mActionLock
            r5.unlock()
            goto Lb8
        La6:
            java.util.List<com.chery.media.model.business.StableMediaPlayer$PlayerAction> r0 = r5.mPlayerActions
            r0.remove(r2)
            java.util.List<com.chery.media.model.business.StableMediaPlayer$PlayerAction> r0 = r5.mPlayerActions
            int r0 = r0.size()
            if (r0 != 0) goto Lb9
            java.util.concurrent.locks.Lock r5 = r5.mActionLock
            r5.unlock()
        Lb8:
            return
        Lb9:
            java.util.concurrent.locks.Lock r0 = r5.mActionLock
            r0.unlock()
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chery.media.model.business.StableMediaPlayer.checkActionList():void");
    }

    private void mergeActions() {
        this.mActionLock.lock();
        ArrayList arrayList = new ArrayList();
        for (PlayerAction playerAction : this.mPlayerActions) {
            if (!arrayList.contains(Integer.valueOf(playerAction.key))) {
                arrayList.add(Integer.valueOf(playerAction.key));
            }
        }
        Collections.sort(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            int r2 = ((Integer) it.next()).intValue();
            int size = this.mPlayerActions.size() - 1;
            while (true) {
                if (size >= 0) {
                    PlayerAction playerAction2 = this.mPlayerActions.get(size);
                    if (playerAction2.key == r2 && playerAction2.action == 1) {
                        int r7 = 0;
                        while (true) {
                            PlayerAction playerAction3 = this.mPlayerActions.get(r7);
                            if (playerAction3 == playerAction2) {
                                break;
                            }
                            if (playerAction3.key == r2) {
                                PFLog.m31v(this.TAG, String.format("for REMOVE_PLAYER Remove Key:%s, Action:%s, Param:%s", Integer.valueOf(playerAction3.key), getPlayerActionString(playerAction3.action), playerAction3.param1));
                                this.mPlayerActions.remove(r7);
                            } else {
                                r7++;
                            }
                        }
                    } else {
                        size--;
                    }
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            int r22 = ((Integer) it2.next()).intValue();
            int size2 = this.mPlayerActions.size() - 1;
            while (true) {
                if (size2 >= 0) {
                    PlayerAction playerAction4 = this.mPlayerActions.get(size2);
                    if (playerAction4.key == r22 && playerAction4.action == 4) {
                        int r72 = 0;
                        while (true) {
                            PlayerAction playerAction5 = this.mPlayerActions.get(r72);
                            if (playerAction5 == playerAction4) {
                                break;
                            }
                            if (playerAction5.key == r22 && (playerAction5.action == 5 || playerAction5.action == 6 || playerAction5.action == 7 || playerAction5.action == 8 || playerAction5.action == 9 || playerAction5.action == 10)) {
                                PFLog.m31v(this.TAG, String.format("for SET_MEDIA Remove Key:%s, Action:%s, Param:%s", Integer.valueOf(playerAction5.key), getPlayerActionString(playerAction5.action), playerAction5.param1));
                                this.mPlayerActions.remove(r72);
                            } else {
                                r72++;
                            }
                        }
                    } else {
                        size2--;
                    }
                }
            }
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            int r1 = ((Integer) it3.next()).intValue();
            int size3 = this.mPlayerActions.size() - 1;
            while (size3 >= 0) {
                PlayerAction playerAction6 = this.mPlayerActions.get(size3);
                if (playerAction6.key == r1) {
                    int r8 = size3 - 1;
                    while (true) {
                        if (r8 < 0) {
                            break;
                        }
                        PlayerAction playerAction7 = this.mPlayerActions.get(r8);
                        if (playerAction7.key == playerAction6.key) {
                            if (playerAction7.action == playerAction6.action) {
                                PFLog.m31v(this.TAG, String.format("remove repeat Key:%s, Action:%s, Param:%s", Integer.valueOf(playerAction7.key), getPlayerActionString(playerAction7.action), playerAction7.param1));
                                this.mPlayerActions.remove(r8);
                            }
                            size3 = r8;
                        } else {
                            r8--;
                        }
                    }
                    if (r8 < 0) {
                        break;
                    }
                } else {
                    size3--;
                }
            }
        }
        this.mActionLock.unlock();
    }

    private void doAction(PlayerAction playerAction) throws IllegalStateException, IOException, IllegalArgumentException {
        switch (playerAction.action) {
            case 0:
                doAction_addPlayer(playerAction.key);
                break;
            case 1:
                doAction_removePlayer(playerAction.key);
                break;
            case 2:
                doAction_activatePlayer(playerAction.key);
                break;
            case 3:
                doAction_deactivePlayer(playerAction.key);
                break;
            case 4:
                doAction_setMedia(playerAction.key, (String) playerAction.param1);
                break;
            case 5:
                doAction_play(playerAction.key);
                break;
            case 6:
                doAction_pause(playerAction.key);
                break;
            case 7:
                doAction_stop(playerAction.key);
                break;
            case 8:
                doAction_seekTo(playerAction.key, ((Long) playerAction.param1).longValue(), ((Integer) playerAction.param2).intValue());
                break;
            case 9:
                doAction_setMute(playerAction.key, ((Boolean) playerAction.param1).booleanValue());
                break;
            case 10:
                doAction_setSpeed(playerAction.key, ((Float) playerAction.param1).floatValue());
                break;
        }
    }

    private void doAction_addPlayer(final int r5) {
        PFLog.m31v(this.TAG, String.format("addPlayer, key:%d", Integer.valueOf(r5)));
        if (this.mMediaPlayerInfos.containsKey(Integer.valueOf(r5))) {
            return;
        }
        this.mMediaPlayerInfos.put(Integer.valueOf(r5), new MediaPlayerInfo(r5));
        createPlayer(r5);
        this.mHandler.post(new Runnable() { // from class: com.chery.media.model.business.StableMediaPlayer.3
            @Override // java.lang.Runnable
            public void run() {
                StableMediaPlayer.this.mPlayerInfos.put(Integer.valueOf(r5), StableMediaPlayer.this.new PlayerInfo());
            }
        });
        setMediaPlayerState(r5, 0);
    }

    private void doAction_removePlayer(final int r5) throws IllegalStateException {
        PFLog.m31v(this.TAG, String.format("removePlayer, key:%d", Integer.valueOf(r5)));
        if (this.mMediaPlayerInfos.containsKey(Integer.valueOf(r5))) {
            destroyPlayer(r5);
            this.mMediaPlayerInfos.remove(Integer.valueOf(r5));
            this.mHandler.post(new Runnable() { // from class: com.chery.media.model.business.StableMediaPlayer.4
                @Override // java.lang.Runnable
                public void run() {
                    StableMediaPlayer.this.mPlayerInfos.remove(Integer.valueOf(r5));
                }
            });
            if (r5 == this.mActivatedKey) {
                this.mActivatedKey = -1;
            }
        }
    }

    private void doAction_activatePlayer(int r5) {
        PFLog.m31v(this.TAG, String.format("doAction_activatePlayer, key:%d", Integer.valueOf(r5)));
        int r0 = this.mActivatedKey;
        if (r5 == r0) {
            return;
        }
        _deactivePlayer(r0);
        _activePlayer(r5);
        this.mActivatedKey = r5;
    }

    private void _activePlayer(int r12) {
        PFLog.m31v(this.TAG, String.format("activePlayer, key:%d", Integer.valueOf(r12)));
        MediaPlayerInfo mediaPlayerInfo = this.mMediaPlayerInfos.get(Integer.valueOf(r12));
        if (mediaPlayerInfo == null) {
            return;
        }
        this.mActionLock.lock();
        PFLog.m31v(this.TAG, String.format("recover media:%s", mediaPlayerInfo.mMedia));
        this.mPlayerActions.add(1, new PlayerAction(r12, 4, mediaPlayerInfo.mMedia));
        PFLog.m31v(this.TAG, String.format("recover position:%s", Long.valueOf(mediaPlayerInfo.mReactivatedPosition)));
        if (mediaPlayerInfo.mReactivatedPosition > 0) {
            this.mPlayerActions.add(2, new PlayerAction(r12, 8, Long.valueOf(mediaPlayerInfo.mReactivatedPosition), 0));
        }
        this.mActionLock.unlock();
    }

    private void _deactivePlayer(int r8) {
        PFLog.m31v(this.TAG, String.format("deactivePlayer, key:%d", Integer.valueOf(r8)));
        if (r8 == this.mActivatedKey) {
            MediaPlayerInfo mediaPlayerInfo = this.mMediaPlayerInfos.get(Integer.valueOf(r8));
            if (mediaPlayerInfo != null) {
                if (mediaPlayerInfo.mMediaPlayer != null && mediaPlayerInfo.mMediaPlayerState >= 3) {
                    mediaPlayerInfo.mReactivatedPosition = mediaPlayerInfo.mMediaPlayer.getCurrentPosition();
                } else {
                    mediaPlayerInfo.mReactivatedPosition = -1L;
                }
                PFLog.m31v(this.TAG, String.format("ReactivatedPosition:%d", Long.valueOf(mediaPlayerInfo.mReactivatedPosition)));
                resetPlayer(r8);
            }
            this.mActivatedKey = -1;
        }
    }

    private void doAction_setMedia(final int r7, String str) throws IllegalStateException, IOException, IllegalArgumentException {
        FileInputStream fileInputStream;
        PFLog.m31v(this.TAG, String.format("do action setMedia, key:%d, media:%s", Integer.valueOf(r7), str));
        MediaPlayerInfo mediaPlayerInfo = this.mMediaPlayerInfos.get(Integer.valueOf(r7));
        if (mediaPlayerInfo == null) {
            return;
        }
        mediaPlayerInfo.mMedia = str;
        mediaPlayerInfo.mReactivatedPosition = -1L;
        this.mHandler.post(new Runnable() { // from class: com.chery.media.model.business.StableMediaPlayer.5
            @Override // java.lang.Runnable
            public void run() {
                StableMediaPlayer.this.setDuration(r7, 0);
                StableMediaPlayer.this.setPosition(r7, 0);
            }
        });
        if (r7 != this.mActivatedKey) {
            PFLog.m31v(this.TAG, String.format("do action setMedia, key not actived", new Object[0]));
            return;
        }
        resetPlayer(r7);
        if (mediaPlayerInfo.mMediaPlayer == null) {
            return;
        }
        if (str != null) {
            FileDescriptor fd = null;
            try {
                fileInputStream = new FileInputStream(str);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                setMediaPlayerState(r7, 9);
                fileInputStream = null;
            }
            if (fileInputStream != null) {
                try {
                    fd = fileInputStream.getFD();
                } catch (IOException e2) {
                    e2.printStackTrace();
                    setMediaPlayerState(r7, 9);
                }
                if (fd != null) {
                    try {
                        mediaPlayerInfo.mMediaPlayer.setDataSource(fd);
                    } catch (IOException | IllegalArgumentException | IllegalStateException | SecurityException e3) {
                        e3.printStackTrace();
                        setMediaPlayerState(r7, 9);
                    }
                    if (mediaPlayerInfo.mMediaPlayerState != 9) {
                        setMediaPlayerState(r7, 1);
                    }
                }
                try {
                    fileInputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
        }
        Iterator<CallbackListener> it = this.mCallbackListeners.iterator();
        while (it.hasNext()) {
            it.next().onMediaChanged(r7, str);
        }
    }

    private void doAction_play(int r10) throws IllegalStateException {
        PFLog.m31v(this.TAG, String.format("do action play, key:%d", Integer.valueOf(r10)));
        MediaPlayerInfo mediaPlayerInfo = this.mMediaPlayerInfos.get(Integer.valueOf(r10));
        if (mediaPlayerInfo == null || mediaPlayerInfo.mMediaPlayer == null) {
            return;
        }
        int r2 = mediaPlayerInfo.mMediaPlayerState;
        if (r2 == 1) {
            this.mSurfaceLock.lock();
            if (this.mSurfaceHolder != null && this.mSurfaceHolderChanged) {
                PFLog.m31v(this.TAG, String.format("key:%d, to setDisplay %s", Integer.valueOf(r10), this.mSurfaceHolder));
                mediaPlayerInfo.mMediaPlayer.setDisplay(this.mSurfaceHolder);
                this.mSurfaceHolderChanged = false;
            }
            this.mSurfaceLock.unlock();
            try {
                mediaPlayerInfo.mMediaPlayer.prepareAsync();
                setMediaPlayerState(r10, 2);
                return;
            } catch (IllegalStateException e) {
                e.printStackTrace();
                setMediaPlayerState(r10, 9);
                return;
            }
        }
        if (r2 == 3) {
            this.mSurfaceLock.lock();
            if (this.mSurfaceHolder != null && this.mSurfaceHolderChanged) {
                PFLog.m31v(this.TAG, String.format("key:%d, to setDisplay %s", Integer.valueOf(r10), this.mSurfaceHolder));
                mediaPlayerInfo.mMediaPlayer.setDisplay(this.mSurfaceHolder);
                this.mSurfaceHolderChanged = false;
            }
            this.mSurfaceLock.unlock();
            mediaPlayerInfo.mMediaPlayer.start();
            setMediaPlayerState(r10, 4);
            return;
        }
        if (r2 == 5) {
            this.mSurfaceLock.lock();
            if (this.mSurfaceHolder != null && this.mSurfaceHolderChanged) {
                PFLog.m31v(this.TAG, String.format("key:%d, to setDisplay %s", Integer.valueOf(r10), this.mSurfaceHolder));
                mediaPlayerInfo.mMediaPlayer.setDisplay(this.mSurfaceHolder);
                this.mSurfaceHolderChanged = false;
            }
            this.mSurfaceLock.unlock();
            mediaPlayerInfo.mMediaPlayer.start();
            setMediaPlayerState(r10, 4);
            return;
        }
        if (r2 != 6) {
            if (r2 != 7) {
                return;
            }
            this.mSurfaceLock.lock();
            if (this.mSurfaceHolder != null && this.mSurfaceHolderChanged) {
                PFLog.m31v(this.TAG, String.format("key:%d, to setDisplay %s", Integer.valueOf(r10), this.mSurfaceHolder));
                mediaPlayerInfo.mMediaPlayer.setDisplay(this.mSurfaceHolder);
                this.mSurfaceHolderChanged = false;
            }
            this.mSurfaceLock.unlock();
            mediaPlayerInfo.mMediaPlayer.start();
            setMediaPlayerState(r10, 4);
            return;
        }
        this.mSurfaceLock.lock();
        if (this.mSurfaceHolder != null && this.mSurfaceHolderChanged) {
            PFLog.m31v(this.TAG, String.format("key:%d, to setDisplay %s", Integer.valueOf(r10), this.mSurfaceHolder));
            mediaPlayerInfo.mMediaPlayer.setDisplay(this.mSurfaceHolder);
            this.mSurfaceHolderChanged = false;
        }
        this.mSurfaceLock.unlock();
        try {
            mediaPlayerInfo.mMediaPlayer.prepareAsync();
            setMediaPlayerState(r10, 2);
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
            setMediaPlayerState(r10, 9);
        }
    }

    private void doAction_pause(int r5) throws IllegalStateException {
        PFLog.m31v(this.TAG, String.format("do action pause, key:%d", Integer.valueOf(r5)));
        MediaPlayerInfo mediaPlayerInfo = this.mMediaPlayerInfos.get(Integer.valueOf(r5));
        if (mediaPlayerInfo == null || mediaPlayerInfo.mMediaPlayer == null || mediaPlayerInfo.mMediaPlayerState != 4) {
            return;
        }
        mediaPlayerInfo.mMediaPlayer.pause();
        setMediaPlayerState(r5, 5);
    }

    private void doAction_stop(int r5) throws IllegalStateException {
        PFLog.m31v(this.TAG, String.format("do aciton stop, key:%d", Integer.valueOf(r5)));
        MediaPlayerInfo mediaPlayerInfo = this.mMediaPlayerInfos.get(Integer.valueOf(r5));
        if (mediaPlayerInfo == null || mediaPlayerInfo.mMediaPlayer == null) {
            return;
        }
        int r1 = mediaPlayerInfo.mMediaPlayerState;
        if (r1 == 3) {
            mediaPlayerInfo.mMediaPlayer.stop();
            setMediaPlayerState(r5, 6);
            return;
        }
        if (r1 == 4) {
            mediaPlayerInfo.mMediaPlayer.stop();
            setMediaPlayerState(r5, 6);
        } else if (r1 == 5) {
            mediaPlayerInfo.mMediaPlayer.stop();
            setMediaPlayerState(r5, 6);
        } else {
            if (r1 != 7) {
                return;
            }
            mediaPlayerInfo.mMediaPlayer.stop();
            setMediaPlayerState(r5, 6);
        }
    }

    private void doAction_seekTo(int r9, long j, int r12) throws IllegalStateException {
        PFLog.m31v(this.TAG, String.format("do action seekTo, key:%d, position:%d seekType:%d", Integer.valueOf(r9), Long.valueOf(j), Integer.valueOf(r12)));
        MediaPlayerInfo mediaPlayerInfo = this.mMediaPlayerInfos.get(Integer.valueOf(r9));
        if (mediaPlayerInfo == null) {
            return;
        }
        if (r9 != this.mActivatedKey) {
            PFLog.m31v(this.TAG, String.format("do action seekTo, key not actived", new Object[0]));
            mediaPlayerInfo.mReactivatedPosition = j;
            return;
        }
        if (mediaPlayerInfo.mMediaPlayer == null) {
            return;
        }
        int r2 = mediaPlayerInfo.mMediaPlayerState;
        if (r2 == 1) {
            this.mSurfaceLock.lock();
            if (this.mSurfaceHolder != null && this.mSurfaceHolderChanged) {
                PFLog.m31v(this.TAG, String.format("key:%d, to setDisplay %s", Integer.valueOf(r9), this.mSurfaceHolder));
                mediaPlayerInfo.mMediaPlayer.setDisplay(this.mSurfaceHolder);
                this.mSurfaceHolderChanged = false;
            }
            this.mSurfaceLock.unlock();
            try {
                mediaPlayerInfo.mMediaPlayer.prepareAsync();
                setMediaPlayerState(r9, 2);
                return;
            } catch (IllegalStateException e) {
                e.printStackTrace();
                setMediaPlayerState(r9, 9);
                return;
            }
        }
        if (r2 == 3) {
            mediaPlayerInfo.mMediaPlayer.seekTo(j, r12);
            return;
        }
        if (r2 == 4) {
            mediaPlayerInfo.mMediaPlayer.seekTo(j, r12);
            return;
        }
        if (r2 == 5) {
            mediaPlayerInfo.mMediaPlayer.seekTo(j, r12);
            return;
        }
        if (r2 != 6) {
            if (r2 != 7) {
                return;
            }
            mediaPlayerInfo.mMediaPlayer.seekTo(j, r12);
            return;
        }
        this.mSurfaceLock.lock();
        if (this.mSurfaceHolder != null && this.mSurfaceHolderChanged) {
            PFLog.m31v(this.TAG, String.format("key:%d, to setDisplay %s", Integer.valueOf(r9), this.mSurfaceHolder));
            mediaPlayerInfo.mMediaPlayer.setDisplay(this.mSurfaceHolder);
            this.mSurfaceHolderChanged = false;
        }
        this.mSurfaceLock.unlock();
        try {
            mediaPlayerInfo.mMediaPlayer.prepareAsync();
            setMediaPlayerState(r9, 2);
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
            setMediaPlayerState(r9, 9);
        }
    }

    private void doAction_setMute(int r4, boolean z) {
        PFLog.m31v(this.TAG, "do action setMute, key: " + r4 + ", isMute: " + z);
        MediaPlayerInfo mediaPlayerInfo = this.mMediaPlayerInfos.get(Integer.valueOf(r4));
        if (mediaPlayerInfo == null || mediaPlayerInfo.mMediaPlayer == null) {
            return;
        }
        int r0 = mediaPlayerInfo.mMediaPlayerState;
        if (r0 == 3) {
            setMute(mediaPlayerInfo, z);
            return;
        }
        if (r0 == 4) {
            setMute(mediaPlayerInfo, z);
        } else if (r0 == 5) {
            setMute(mediaPlayerInfo, z);
        } else {
            if (r0 != 7) {
                return;
            }
            setMute(mediaPlayerInfo, z);
        }
    }

    private void doAction_deactivePlayer(int r2) {
        if (this.mActivatedKey != r2) {
            return;
        }
        _deactivePlayer(r2);
    }

    private void doAction_setSpeed(int r4, float f) {
        PFLog.m31v(this.TAG, "do action setSpeed, key: " + r4 + ", speed: " + f);
        MediaPlayerInfo mediaPlayerInfo = this.mMediaPlayerInfos.get(Integer.valueOf(r4));
        if (mediaPlayerInfo == null || mediaPlayerInfo.mMediaPlayer == null) {
            return;
        }
        int r0 = mediaPlayerInfo.mMediaPlayerState;
        if (r0 == 1) {
            setSpeed(mediaPlayerInfo, f);
            return;
        }
        if (r0 == 2) {
            setSpeed(mediaPlayerInfo, f);
            return;
        }
        if (r0 == 3) {
            setSpeed(mediaPlayerInfo, f);
            return;
        }
        if (r0 == 4) {
            setSpeed(mediaPlayerInfo, f);
        } else if (r0 == 5) {
            setSpeed(mediaPlayerInfo, f);
        } else {
            if (r0 != 7) {
                return;
            }
            setSpeed(mediaPlayerInfo, f);
        }
    }

    private void createPlayer(final int r6) {
        PFLog.m31v(this.TAG, String.format("createPlayer, key:%d", Integer.valueOf(r6)));
        final MediaPlayerInfo mediaPlayerInfo = this.mMediaPlayerInfos.get(Integer.valueOf(r6));
        if (mediaPlayerInfo == null) {
            PFLog.m33w(this.TAG, String.format("MediaPlayerInfo of key:%d not exist", Integer.valueOf(r6)));
            return;
        }
        if (mediaPlayerInfo.mMediaPlayer != null) {
            PFLog.m33w(this.TAG, String.format("MediaPlayer already exist", new Object[0]));
            return;
        }
        mediaPlayerInfo.mMediaPlayer = new MediaPlayer();
        mediaPlayerInfo.mMediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.chery.media.model.business.StableMediaPlayer.6
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                PFLog.m31v(StableMediaPlayer.this.TAG, String.format("onPrepared, media:%s", mediaPlayerInfo.mMedia));
                if (mediaPlayerInfo.mMediaPlayerState != 2) {
                    PFLog.m33w(StableMediaPlayer.this.TAG, String.format("current state not MEDIA_PLAYER_STATE_PREPARING: %d", Integer.valueOf(mediaPlayerInfo.mMediaPlayerState)));
                }
                StableMediaPlayer.this.setMediaPlayerState(r6, 3);
                StableMediaPlayer.this.mLock.lock();
                if (StableMediaPlayer.this.mThreadHandler == null) {
                    StableMediaPlayer.this.mDelayedRunnables.add(StableMediaPlayer.this.mActionRunnable);
                } else {
                    StableMediaPlayer.this.mThreadHandler.post(StableMediaPlayer.this.mActionRunnable);
                }
                StableMediaPlayer.this.mLock.unlock();
            }
        });
        mediaPlayerInfo.mMediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.chery.media.model.business.StableMediaPlayer.7
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                PFLog.m31v(StableMediaPlayer.this.TAG, String.format("onCompletion, media:%s", mediaPlayerInfo.mMedia));
                StableMediaPlayer.this.setMediaPlayerState(r6, 7);
                StableMediaPlayer.this.updatePosition(r6);
                final String str = mediaPlayerInfo.mMedia;
                StableMediaPlayer.this.mHandler.post(new Runnable() { // from class: com.chery.media.model.business.StableMediaPlayer.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        StableMediaPlayer.this.setState(r6, 4, str);
                    }
                });
            }
        });
        mediaPlayerInfo.mMediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.chery.media.model.business.StableMediaPlayer.8
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int r5, int r62) {
                PFLog.m31v(StableMediaPlayer.this.TAG, String.format("onError, media:%s, %d, %d", mediaPlayerInfo.mMedia, Integer.valueOf(r5), Integer.valueOf(r62)));
                StableMediaPlayer.this.setMediaPlayerState(r6, 9);
                final String str = mediaPlayerInfo.mMedia;
                StableMediaPlayer.this.mHandler.post(new Runnable() { // from class: com.chery.media.model.business.StableMediaPlayer.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        StableMediaPlayer.this.setState(r6, 5, str);
                    }
                });
                StableMediaPlayer.this.mLock.lock();
                if (StableMediaPlayer.this.mThreadHandler == null) {
                    StableMediaPlayer.this.mDelayedRunnables.add(StableMediaPlayer.this.mActionRunnable);
                } else {
                    StableMediaPlayer.this.mThreadHandler.post(StableMediaPlayer.this.mActionRunnable);
                }
                StableMediaPlayer.this.mLock.unlock();
                return true;
            }
        });
        mediaPlayerInfo.mMediaPlayer.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.chery.media.model.business.StableMediaPlayer.9
            @Override // android.media.MediaPlayer.OnSeekCompleteListener
            public void onSeekComplete(MediaPlayer mediaPlayer) {
                final int currentPosition = mediaPlayer.getCurrentPosition();
                PFLog.m31v(StableMediaPlayer.this.TAG, String.format("onSeekComplete, media:%s currentPosition:%d", mediaPlayerInfo.mMedia, Integer.valueOf(currentPosition)));
                StableMediaPlayer.this.mHandler.post(new Runnable() { // from class: com.chery.media.model.business.StableMediaPlayer.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it = StableMediaPlayer.this.mSeekCompleteListeners.iterator();
                        while (it.hasNext()) {
                            ((OnSeekCompleteListener) it.next()).onSeekComplete(r6, currentPosition);
                        }
                    }
                });
                StableMediaPlayer.this.updatePosition(r6);
            }
        });
        setMediaPlayerState(r6, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroyPlayer(int r7) throws IllegalStateException {
        PFLog.m31v(this.TAG, String.format("destroyPlayer, key:%d", Integer.valueOf(r7)));
        MediaPlayerInfo mediaPlayerInfo = this.mMediaPlayerInfos.get(Integer.valueOf(r7));
        if (mediaPlayerInfo == null) {
            return;
        }
        if (mediaPlayerInfo.mMediaPlayer != null) {
            if (mediaPlayerInfo.mMediaPlayerState == 3 || mediaPlayerInfo.mMediaPlayerState == 4 || mediaPlayerInfo.mMediaPlayerState == 5 || mediaPlayerInfo.mMediaPlayerState == 7) {
                PFLog.m31v(this.TAG, String.format("key:%d, to stop media player", Integer.valueOf(r7)));
                mediaPlayerInfo.mMediaPlayer.stop();
            }
            PFLog.m31v(this.TAG, String.format("key:%d, to release media player", Integer.valueOf(r7)));
            mediaPlayerInfo.mMediaPlayer.release();
            mediaPlayerInfo.mMediaPlayer = null;
            this.mSurfaceLock.lock();
            SurfaceHolder surfaceHolder = this.mSurfaceHolder;
            if (surfaceHolder != null && !this.mSurfaceHolderChanged) {
                clearSurface(surfaceHolder.getSurface());
                this.mSurfaceHolderChanged = true;
            }
            this.mSurfaceLock.unlock();
        }
        setMediaPlayerState(r7, 0);
    }

    private void resetPlayer(int r6) {
        PFLog.m31v(this.TAG, String.format("resetPlayer, key:%d", Integer.valueOf(r6)));
        MediaPlayerInfo mediaPlayerInfo = this.mMediaPlayerInfos.get(Integer.valueOf(r6));
        if (mediaPlayerInfo == null || mediaPlayerInfo.mMediaPlayer == null) {
            return;
        }
        PFLog.m31v(this.TAG, String.format("key:%d, to reset media player", Integer.valueOf(r6)));
        mediaPlayerInfo.mMediaPlayer.reset();
        this.mSurfaceLock.lock();
        if (!this.mSurfaceHolderChanged) {
            SurfaceHolder surfaceHolder = this.mSurfaceHolder;
            if (surfaceHolder != null) {
                clearSurface(surfaceHolder.getSurface());
            }
        } else {
            mediaPlayerInfo.mMediaPlayer.setDisplay(this.mSurfaceHolder);
            this.mSurfaceHolderChanged = false;
        }
        this.mSurfaceLock.unlock();
        setMediaPlayerState(r6, 0);
    }

    private void clearSurface(Surface surface) {
        PFLog.m25d(this.TAG, "clearSurface");
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        int[] r0 = new int[2];
        EGL14.eglInitialize(eGLDisplayEglGetDisplay, r0, 0, r0, 1);
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        EGL14.eglChooseConfig(eGLDisplayEglGetDisplay, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, 12344, 0, 12344}, 0, eGLConfigArr, 0, 1, new int[1], 0);
        EGLConfig eGLConfig = eGLConfigArr[0];
        EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(eGLDisplayEglGetDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
        EGLSurface eGLSurfaceEglCreateWindowSurface = EGL14.eglCreateWindowSurface(eGLDisplayEglGetDisplay, eGLConfig, surface, new int[]{12344}, 0);
        EGL14.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurfaceEglCreateWindowSurface, eGLSurfaceEglCreateWindowSurface, eGLContextEglCreateContext);
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        GLES20.glClear(16384);
        EGL14.eglSwapBuffers(eGLDisplayEglGetDisplay, eGLSurfaceEglCreateWindowSurface);
        EGL14.eglDestroySurface(eGLDisplayEglGetDisplay, eGLSurfaceEglCreateWindowSurface);
        EGL14.eglMakeCurrent(eGLDisplayEglGetDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
        EGL14.eglDestroyContext(eGLDisplayEglGetDisplay, eGLContextEglCreateContext);
        EGL14.eglTerminate(eGLDisplayEglGetDisplay);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMediaPlayerState(final int r6, final int r7) {
        MediaPlayerInfo mediaPlayerInfo = this.mMediaPlayerInfos.get(Integer.valueOf(r6));
        if (mediaPlayerInfo == null || r7 == mediaPlayerInfo.mMediaPlayerState) {
            return;
        }
        mediaPlayerInfo.mMediaPlayerState = r7;
        PFLog.m31v(this.TAG, String.format("key:%d, mMediaPlayerState:%s", Integer.valueOf(r6), getMediaPlayerStateString(r7)));
        if (mediaPlayerInfo.mMediaPlayerState == 3) {
            updateDuration(r6);
            updateVideoSize(r6);
        }
        if (mediaPlayerInfo.mMediaPlayerState == 4) {
            this.mLock.lock();
            Handler handler = this.mThreadHandler;
            if (handler == null) {
                this.mDelayedRunnables.add(mediaPlayerInfo.mCheckPosition);
            } else {
                handler.post(mediaPlayerInfo.mCheckPosition);
            }
            this.mLock.unlock();
        } else {
            this.mLock.lock();
            Handler handler2 = this.mThreadHandler;
            if (handler2 == null) {
                this.mDelayedRunnables.remove(mediaPlayerInfo.mCheckPosition);
            } else {
                handler2.removeCallbacks(mediaPlayerInfo.mCheckPosition);
            }
            this.mLock.unlock();
            updatePosition(r6);
        }
        final String str = mediaPlayerInfo.mMedia;
        this.mHandler.post(new Runnable() { // from class: com.chery.media.model.business.StableMediaPlayer.10
            @Override // java.lang.Runnable
            public void run() {
                int r0 = r7;
                if (r0 == 0) {
                    StableMediaPlayer.this.setState(r6, 0, str);
                    return;
                }
                if (r0 == 1) {
                    StableMediaPlayer.this.setState(r6, 1, str);
                    return;
                }
                if (r0 == 3) {
                    StableMediaPlayer.this.setState(r6, 1, str);
                    return;
                }
                if (r0 == 4) {
                    StableMediaPlayer.this.setState(r6, 2, str);
                    return;
                }
                if (r0 == 5) {
                    StableMediaPlayer.this.setState(r6, 3, str);
                    return;
                }
                if (r0 == 6) {
                    StableMediaPlayer.this.setState(r6, 1, str);
                } else if (r0 == 7) {
                    StableMediaPlayer.this.setState(r6, 4, str);
                } else {
                    if (r0 != 9) {
                        return;
                    }
                    StableMediaPlayer.this.setState(r6, 5, str);
                }
            }
        });
    }

    private void updateDuration(final int r4) {
        MediaPlayerInfo mediaPlayerInfo = this.mMediaPlayerInfos.get(Integer.valueOf(r4));
        if (mediaPlayerInfo == null) {
            return;
        }
        if (mediaPlayerInfo.mMediaPlayerState == 3 || mediaPlayerInfo.mMediaPlayerState == 4 || mediaPlayerInfo.mMediaPlayerState == 5 || mediaPlayerInfo.mMediaPlayerState == 6 || mediaPlayerInfo.mMediaPlayerState == 7) {
            final int duration = mediaPlayerInfo.mMediaPlayer.getDuration();
            this.mHandler.post(new Runnable() { // from class: com.chery.media.model.business.StableMediaPlayer.11
                @Override // java.lang.Runnable
                public void run() {
                    StableMediaPlayer.this.setDuration(r4, duration);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePosition(final int r4) {
        MediaPlayerInfo mediaPlayerInfo = this.mMediaPlayerInfos.get(Integer.valueOf(r4));
        if (mediaPlayerInfo == null) {
            return;
        }
        if (mediaPlayerInfo.mMediaPlayerState == 3 || mediaPlayerInfo.mMediaPlayerState == 4 || mediaPlayerInfo.mMediaPlayerState == 5 || mediaPlayerInfo.mMediaPlayerState == 6 || mediaPlayerInfo.mMediaPlayerState == 7) {
            final int currentPosition = mediaPlayerInfo.mMediaPlayer.getCurrentPosition();
            this.mHandler.post(new Runnable() { // from class: com.chery.media.model.business.StableMediaPlayer.12
                @Override // java.lang.Runnable
                public void run() {
                    StableMediaPlayer.this.setPosition(r4, currentPosition);
                }
            });
        }
    }

    private void updateVideoSize(final int r5) {
        MediaPlayerInfo mediaPlayerInfo = this.mMediaPlayerInfos.get(Integer.valueOf(r5));
        if (mediaPlayerInfo == null) {
            return;
        }
        if (mediaPlayerInfo.mMediaPlayerState == 3 || mediaPlayerInfo.mMediaPlayerState == 4 || mediaPlayerInfo.mMediaPlayerState == 5 || mediaPlayerInfo.mMediaPlayerState == 6 || mediaPlayerInfo.mMediaPlayerState == 7) {
            final int videoWidth = mediaPlayerInfo.mMediaPlayer.getVideoWidth();
            final int videoHeight = mediaPlayerInfo.mMediaPlayer.getVideoHeight();
            this.mHandler.post(new Runnable() { // from class: com.chery.media.model.business.StableMediaPlayer.13
                @Override // java.lang.Runnable
                public void run() {
                    StableMediaPlayer.this.notifyVideoSize(r5, videoWidth, videoHeight);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setState(int r5, int r6, String str) {
        PlayerInfo playerInfo = this.mPlayerInfos.get(Integer.valueOf(r5));
        if (playerInfo == null || r6 == playerInfo.state) {
            return;
        }
        playerInfo.state = r6;
        PFLog.m31v(this.TAG, String.format("key:%d, player state:%s", Integer.valueOf(r5), getPlayingStateString(r6)));
        Iterator<CallbackListener> it = this.mCallbackListeners.iterator();
        while (it.hasNext()) {
            it.next().onStateChanged(r5, r6, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDuration(int r7, int r8) {
        PlayerInfo playerInfo = this.mPlayerInfos.get(Integer.valueOf(r7));
        if (playerInfo == null) {
            return;
        }
        long j = r8;
        if (j == playerInfo.duration) {
            return;
        }
        playerInfo.duration = j;
        PFLog.m31v(this.TAG, String.format("key:%d, player duration:%d", Integer.valueOf(r7), Integer.valueOf(r8)));
        Iterator<CallbackListener> it = this.mCallbackListeners.iterator();
        while (it.hasNext()) {
            it.next().onDurationChanged(r7, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPosition(int r6, int r7) {
        PlayerInfo playerInfo = this.mPlayerInfos.get(Integer.valueOf(r6));
        if (playerInfo == null) {
            return;
        }
        long j = r7;
        if (j == playerInfo.position) {
            return;
        }
        playerInfo.position = j;
        Iterator<CallbackListener> it = this.mCallbackListeners.iterator();
        while (it.hasNext()) {
            it.next().onPositionChanged(r6, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyVideoSize(int r6, int r7, int r8) {
        PlayerInfo playerInfo = this.mPlayerInfos.get(Integer.valueOf(r6));
        if (playerInfo == null) {
            return;
        }
        playerInfo.width = r7;
        playerInfo.height = r8;
        PFLog.m31v(this.TAG, String.format("key:%d, video size:%d*%d", Integer.valueOf(r6), Integer.valueOf(playerInfo.width), Integer.valueOf(playerInfo.height)));
        Iterator<CallbackListener> it = this.mCallbackListeners.iterator();
        while (it.hasNext()) {
            it.next().onVideoSizeNotify(r6, r7, r8);
        }
    }

    private void setMute(MediaPlayerInfo mediaPlayerInfo, boolean z) {
        if (z) {
            mediaPlayerInfo.mMediaPlayer.setVolume(0.0f, 0.0f);
        } else {
            mediaPlayerInfo.mMediaPlayer.setVolume(1.0f, 1.0f);
        }
    }

    private void setSpeed(MediaPlayerInfo mediaPlayerInfo, float f) {
        PlaybackParams playbackParams = mediaPlayerInfo.mMediaPlayer.getPlaybackParams();
        playbackParams.setSpeed(f);
        mediaPlayerInfo.mMediaPlayer.setPlaybackParams(playbackParams);
    }
}
