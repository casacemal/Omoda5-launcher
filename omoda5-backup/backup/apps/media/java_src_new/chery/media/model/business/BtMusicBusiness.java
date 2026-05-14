package com.chery.media.model.business;

import android.car.Car;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.media.MediaMetadata;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.MediaMetadataCompat;
import android.util.Log;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.caradapter.carapi.interfaces.IPowerListener;
import com.chery.media.BtAudioManager;
import com.chery.media.app.MediaApplication;
import com.chery.media.livedata.BtA2dpDeviceLiveData;
import com.chery.media.livedata.BtA2dpStateLiveData;
import com.chery.media.livedata.BtAvrcptateLiveData;
import com.chery.media.util.CarAdapterUse;
import com.chery.media.view.activity.MediaActivity;
import com.chery.media.view.fragment.BtMusicPlayerFragment;

/* loaded from: classes.dex */
public class BtMusicBusiness {
    private static final String TAG = CarLog.concatTag("MEDIA", BtMusicBusiness.class);
    private static volatile BtMusicBusiness instance = null;
    private AudioManager mAudioManager;
    private Context mContext;
    private final MutableLiveData<BtMusicInfo> mBtMusicInfo = new MutableLiveData<>();
    private final MutableLiveData<Integer> mBtMusicPosition = new MutableLiveData<>(0);
    private final MutableLiveData<Boolean> mPlaybackState = new MutableLiveData<>(false);
    private LiveData<Boolean> mBtA2dpStateLiveData = new BtA2dpStateLiveData(MediaApplication.getApplication());
    private LiveData<Boolean> mBtAvrcptateLiveData = new BtAvrcptateLiveData(MediaApplication.getApplication());
    private LiveData<String> mBtA2dpDeviceLiveData = new BtA2dpDeviceLiveData(MediaApplication.getApplication());
    private final Handler mHandler = new Handler();
    private int mAudioFocus = 0;
    private int lastPlaybackState = 1;
    private boolean mSentPause = false;
    private boolean mLossState = true;
    private boolean mDelayState = false;
    private int cycle = 0;
    BtAudioManager.MediaSessionListener mSessionListener = new BtAudioManager.MediaSessionListener() { // from class: com.chery.media.model.business.BtMusicBusiness.2
        @Override // com.chery.media.BtAudioManager.MediaSessionListener
        public void onConnectState(boolean z) {
            if (z) {
                MediaMetadata mediaMetadata = BtAudioManager.get().getMediaMetadata();
                if (mediaMetadata == null) {
                    Log.w(BtMusicBusiness.TAG, "MediaMetadata is null when connect");
                } else {
                    updateMetadata(mediaMetadata);
                }
                PlaybackState playbackState = BtAudioManager.get().getPlaybackState();
                if (playbackState == null) {
                    Log.w(BtMusicBusiness.TAG, "PlaybackState is null  when connect");
                } else {
                    updatePlaybackState(playbackState);
                }
                BtMusicBusiness.this.updateCanPlay();
            }
        }

        @Override // com.chery.media.BtAudioManager.MediaSessionListener
        public void updatePlaybackState(PlaybackState playbackState) {
            int position;
            int state;
            PFLog.m29i(BtMusicBusiness.TAG, "updatePlaybackState: " + playbackState);
            if (playbackState != null) {
                state = playbackState.getState();
                position = (int) playbackState.getPosition();
            } else {
                position = 0;
                state = 1;
            }
            if (BtMusicBusiness.this.lastPlaybackState != state) {
                PFLog.m29i(BtMusicBusiness.TAG, "playpauseState = " + state + ", position = " + position);
                boolean z = state == 3;
                int volumeGroupIdForUsage = CarAdapterUse.getCarVolumeClient().getVolumeGroupIdForUsage(4);
                if (BtMusicBusiness.this.isFocus() && z && CarAdapterUse.getCarVolumeClient().getGroupMute(volumeGroupIdForUsage)) {
                    BtMusicBusiness.this.pause();
                }
                BtMusicBusiness.this.lastPlaybackState = state;
                BtMusicBusiness.this.mPlaybackState.setValue(Boolean.valueOf(z));
                MediaActivity mediaActivity = MediaActivity.getInstance();
                if (z && mediaActivity != null && mediaActivity.isStarted() && (mediaActivity.getCurrentFragment() instanceof BtMusicPlayerFragment)) {
                    BtMusicBusiness.this.requestBtMusicAudioFocus();
                }
            }
            BtMusicBusiness.this.mBtMusicPosition.setValue(Integer.valueOf(position));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.chery.media.BtAudioManager.MediaSessionListener
        public void updateMetadata(MediaMetadata mediaMetadata) {
            BtMusicInfo btMusicInfo;
            if (mediaMetadata != null) {
                btMusicInfo = new BtMusicInfo();
                btMusicInfo.title = mediaMetadata.getString(MediaMetadataCompat.METADATA_KEY_TITLE);
                btMusicInfo.artist = mediaMetadata.getString(MediaMetadataCompat.METADATA_KEY_ARTIST);
                btMusicInfo.album = mediaMetadata.getString(MediaMetadataCompat.METADATA_KEY_ALBUM);
                btMusicInfo.duration = (int) mediaMetadata.getLong(MediaMetadataCompat.METADATA_KEY_DURATION);
            } else {
                btMusicInfo = null;
            }
            if ((btMusicInfo != null ? btMusicInfo.toString() : "null").equals(BtMusicBusiness.this.mBtMusicInfo.getValue() != 0 ? ((BtMusicInfo) BtMusicBusiness.this.mBtMusicInfo.getValue()).toString() : "null")) {
                return;
            }
            PFLog.m29i(BtMusicBusiness.TAG, "update musicInfo:" + btMusicInfo);
            BtMusicBusiness.this.mBtMusicInfo.setValue(btMusicInfo);
        }
    };

    public static class BtMusicInfo {
        public String title = "";
        public String artist = "";
        public String album = "";
        public int duration = 0;

        public String toString() {
            return "BtMusicInfo{title='" + this.title + "', artist='" + this.artist + "', album='" + this.album + "', duration=" + this.duration + '}';
        }
    }

    public static BtMusicBusiness getInstance() {
        if (instance == null) {
            synchronized (BtMusicBusiness.class) {
                if (instance == null) {
                    instance = new BtMusicBusiness();
                }
            }
        }
        return instance;
    }

    public void init(Context context) {
        PFLog.m29i(TAG, "init");
        this.mContext = context;
        this.mAudioManager = (AudioManager) context.getSystemService(Car.AUDIO_SERVICE);
        BtAudioManager.init(context.getApplicationContext());
        this.mBtA2dpStateLiveData.observeForever(new Observer() { // from class: com.chery.media.model.business.-$$Lambda$BtMusicBusiness$JKb8YVYx2p7ih-WnDEwowwsnscc
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.handleA2dpState((Boolean) obj);
            }
        });
        this.mBtAvrcptateLiveData.observeForever(new Observer() { // from class: com.chery.media.model.business.-$$Lambda$BtMusicBusiness$FzopPw6NqoAG9DfwtF3QOy2zdXA
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.handleAvrcpState((Boolean) obj);
            }
        });
        BtAudioManager.get().initMediaSession(this.mSessionListener);
        int currentSource = this.mAudioManager.getCurrentSource();
        int lastSource = this.mAudioManager.getLastSource();
        PFLog.m29i(TAG, "recover source: last=" + lastSource + ", current=" + currentSource);
        if (((currentSource == 0 || currentSource == 100) && lastSource == 5) || currentSource == 5) {
            requestBtMusicAudioFocus();
        }
        CarAdapterUse.addCarPowerClientListener(new IPowerListener() { // from class: com.chery.media.model.business.-$$Lambda$BtMusicBusiness$eik-7dwygOuUkrNatPiker8_EM0
            @Override // com.chery.caradapter.carapi.interfaces.IPowerListener
            public final void onStateChanged(int r1) {
                this.f$0.lambda$init$1$BtMusicBusiness(r1);
            }
        });
    }

    public /* synthetic */ void lambda$init$1$BtMusicBusiness(final int r3) {
        this.mHandler.post(new Runnable() { // from class: com.chery.media.model.business.-$$Lambda$BtMusicBusiness$mfVA-m_rPbmiQHUTNghvE6XylRI
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$null$0$BtMusicBusiness(r3);
            }
        });
    }

    public /* synthetic */ void lambda$null$0$BtMusicBusiness(int r5) {
        if (r5 == 12 || r5 == 15 || r5 == 19) {
            int currentSource = this.mAudioManager.getCurrentSource();
            int lastSource = this.mAudioManager.getLastSource();
            PFLog.m29i(TAG, "recover source: last=" + lastSource + ", current=" + currentSource);
            if ((currentSource == 0 || currentSource == 100) && lastSource == 5) {
                requestBtMusicAudioFocus();
            }
        }
    }

    public MutableLiveData<BtMusicInfo> getBtMusicInfo() {
        return this.mBtMusicInfo;
    }

    public MutableLiveData<Integer> getBtMusicPosition() {
        return this.mBtMusicPosition;
    }

    public MutableLiveData<Boolean> getPlaybackState() {
        return this.mPlaybackState;
    }

    public LiveData<Boolean> getBtMusicState() {
        return this.mBtA2dpStateLiveData;
    }

    public LiveData<String> getBtDeviceName() {
        return this.mBtA2dpDeviceLiveData;
    }

    private void unVehicleMute() {
        int volumeGroupIdForUsage = CarAdapterUse.getCarVolumeClient().getVolumeGroupIdForUsage(4);
        if (CarAdapterUse.getCarVolumeClient().getGroupMute(volumeGroupIdForUsage)) {
            PFLog.m25d(TAG, "unVehicleMute");
            CarAdapterUse.getCarVolumeClient().setGroupMute(volumeGroupIdForUsage, false, 0);
        }
    }

    public void previous() {
        unVehicleMute();
        PFLog.m25d(TAG, "previous");
        BtAudioManager.get().previous();
    }

    public void next() {
        unVehicleMute();
        PFLog.m25d(TAG, "next");
        BtAudioManager.get().next();
    }

    public boolean isPlaying() {
        return this.mPlaybackState.getValue() != null && this.mPlaybackState.getValue().booleanValue();
    }

    public void playPause() {
        PFLog.m25d(TAG, "playPause");
        if (isPlaying()) {
            pause();
        } else {
            play();
        }
    }

    public void play() {
        unVehicleMute();
        PFLog.m29i(TAG, "play");
        BtAudioManager.get().play();
    }

    public void pause() {
        PFLog.m25d(TAG, "pause");
        BtAudioManager.get().pause();
    }

    public boolean requestBtMusicAudioFocus() {
        if (isFocus()) {
            PFLog.m29i(TAG, "bt audio has already focus");
            return true;
        }
        PFLog.m29i(TAG, "request BtMusicAudioFocus start");
        Bundle bundle = new Bundle();
        bundle.putInt("key_car_source_type", 5);
        int r0 = this.mAudioManager.requestAudioFocus(new AudioFocusRequest.Builder(1).setAudioAttributes(new AudioAttributes.Builder().setUsage(4).addBundle(bundle).build()).setOnAudioFocusChangeListener(new AudioManager.OnAudioFocusChangeListener() { // from class: com.chery.media.model.business.-$$Lambda$BtMusicBusiness$f7Q34qGTFHw9mlDhPnpoDMI1Pnw
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public final void onAudioFocusChange(int r1) {
                this.f$0.onAudioFocusChange(r1);
            }
        }, this.mHandler).build());
        PFLog.m29i(TAG, "request BtMusicAudioFocus end, result=" + r0);
        if (r0 != 1) {
            if (r0 != 2) {
                return false;
            }
            this.mDelayState = true;
            return false;
        }
        this.mAudioFocus = 1;
        if (this.mLossState) {
            updateCanPlay();
        }
        startOrStopA2dpRender();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAudioFocusChange(int r4) {
        PFLog.m29i(TAG, "onAudioFocusChange: " + r4);
        this.mAudioFocus = r4;
        if (r4 == -2) {
            boolean zIsPlaying = isPlaying();
            this.mSentPause = zIsPlaying;
            if (zIsPlaying) {
                pause();
            }
        } else if (r4 == -1) {
            boolean zIsPlaying2 = isPlaying();
            this.mLossState = zIsPlaying2;
            if (zIsPlaying2) {
                pause();
            }
            PFLog.m29i(TAG, "Loss state:" + this.mLossState);
            if (this.mDelayState) {
                PFLog.m29i(TAG, "Delay state:" + this.mDelayState);
                return;
            }
            this.mSentPause = false;
        } else if (r4 == 1) {
            if (this.mSentPause) {
                play();
                this.mSentPause = false;
            } else if (this.mDelayState && this.mLossState) {
                play();
            }
            this.mDelayState = false;
        }
        startOrStopA2dpRender();
    }

    private void startOrStopA2dpRender() {
        int currentSource = this.mAudioManager.getCurrentSource();
        PFLog.m29i(TAG, "startOrStopA2dpRender: currentSource = " + currentSource);
        if (currentSource == 19) {
            PFLog.m29i(TAG, "currentSource is  QDLINK");
        } else if (isFocus()) {
            startA2dpRender();
        } else {
            stopA2dpRender();
        }
    }

    public void startA2dpRender() {
        PFLog.m29i(TAG, "startA2dpRender");
        BtAudioManager.get().startA2dpRender();
    }

    public void stopA2dpRender() {
        PFLog.m29i(TAG, "stopA2dpRender");
        BtAudioManager.get().stopA2dpRender();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleA2dpState(Boolean bool) {
        if (bool.booleanValue()) {
            startOrStopA2dpRender();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAvrcpState(Boolean bool) {
        if (!bool.booleanValue()) {
            this.cycle = 0;
        }
        PFLog.m25d(TAG, "handleAvrcpState " + bool + "   cycle   " + this.cycle);
        if (bool.booleanValue() && isFocus()) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.chery.media.model.business.BtMusicBusiness.1
                @Override // java.lang.Runnable
                public void run() {
                    if (BtMusicBusiness.this.isPlaying()) {
                        PFLog.m25d(BtMusicBusiness.TAG, "  cycle   " + BtMusicBusiness.this.cycle);
                        return;
                    }
                    BtMusicBusiness.this.play();
                    BtMusicBusiness.this.cycle++;
                    if (BtMusicBusiness.this.cycle <= 10) {
                        BtMusicBusiness.this.mHandler.postDelayed(this, 1000L);
                    }
                }
            }, 100L);
        }
    }

    public boolean isFocus() {
        int r2 = this.mAudioFocus;
        return r2 == 1 || r2 == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCanPlay() {
        boolean z = BtAudioManager.get().isCanController() && isFocus();
        PFLog.m25d(TAG, String.format("update CanPlay :%s", Boolean.valueOf(z)));
        if (z) {
            play();
        }
    }

    public void setPlayOnCanPlay(boolean z) {
        PFLog.m25d(TAG, "setPlayOnCanPlay " + z);
        this.mLossState = z;
        if (z) {
            return;
        }
        this.mSentPause = false;
    }
}
