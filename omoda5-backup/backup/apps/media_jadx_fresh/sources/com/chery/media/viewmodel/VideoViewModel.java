package com.chery.media.viewmodel;

import android.app.Application;
import android.util.Size;
import android.view.SurfaceHolder;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.VideoBusiness;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class VideoViewModel extends AndroidViewModel {
    private MutableLiveData<Integer> brightnessData;
    private VideoBusiness.OnBrightnessListener brightnessListener;
    private Map<Integer, MutableLiveData<CurrentPlayingData>> currentPlayingDatas;
    private MutableLiveData<Integer> currentUsb;
    private VideoBusiness.OnCurrentUsbListener currentUsbListener;
    private Map<Integer, MutableLiveData<PlayingDurationData>> playingDurationDatas;
    private VideoBusiness.OnPlayingInfoListener playingInfoListener;
    private Map<Integer, MutableLiveData<PlayingPositionData>> playingPositionDatas;
    private Map<Integer, MutableLiveData<PlayingStateData>> playingStateDatas;
    private Map<Integer, MutableLiveData<PlaylistData>> playlistDatas;
    private VideoBusiness.OnPlaylistInfoListener playlistInfoListener;
    private VideoBusiness.SpeedLimitListener speedLimitListener;
    private MutableLiveData<Boolean> speedLimitSetting;
    private MutableLiveData<Boolean> speedLimitView;
    private Map<Integer, MutableLiveData<VideoSizeData>> videoSizeDatas;
    private MutableLiveData<Integer> volumeData;
    private VideoBusiness.OnVolumeListener volumeListener;

    public static class PlaylistData extends UsbLiveData {
        public List<MediaDef.UsbVideoInfo> playlist;
        public int playlistType;

        public PlaylistData(int r1, int r2, List<MediaDef.UsbVideoInfo> list) {
            super(r1);
            this.playlistType = 0;
            this.playlist = new ArrayList();
            this.playlistType = r2;
            this.playlist = list;
        }
    }

    public static class CurrentPlayingData extends UsbLiveData {
        public MediaDef.UsbVideoInfo currentPlaying;

        public CurrentPlayingData(int r1, MediaDef.UsbVideoInfo usbVideoInfo) {
            super(r1);
            this.currentPlaying = usbVideoInfo;
        }
    }

    public static class PlayingStateData extends UsbLiveData {
        public int playingState;

        public PlayingStateData(int r1, int r2) {
            super(r1);
            this.playingState = r2;
        }
    }

    public static class PlayingDurationData extends UsbLiveData {
        public long duration;

        public PlayingDurationData(int r3, long j) {
            super(r3);
            this.duration = 0L;
            this.duration = j;
        }
    }

    public static class PlayingPositionData extends UsbLiveData {
        public long position;

        public PlayingPositionData(int r3, long j) {
            super(r3);
            this.position = 0L;
            this.position = j;
        }
    }

    public static class VideoSizeData extends UsbLiveData {
        public Size videoSize;

        public VideoSizeData(int r1, Size size) {
            super(r1);
            this.videoSize = size;
        }
    }

    public VideoViewModel(Application application) {
        super(application);
        this.playlistDatas = new HashMap();
        this.currentPlayingDatas = new HashMap();
        this.playingStateDatas = new HashMap();
        this.playingDurationDatas = new HashMap();
        this.playingPositionDatas = new HashMap();
        this.videoSizeDatas = new HashMap();
        this.currentUsb = new MutableLiveData<>(Integer.valueOf(VideoBusiness.getInstance().getCurrentUsb()));
        for (int r7 = 0; r7 <= 0; r7++) {
            this.playlistDatas.put(Integer.valueOf(r7), new MutableLiveData<>(new PlaylistData(r7, VideoBusiness.getInstance().getPlaylistType(r7), VideoBusiness.getInstance().getPlaylist(r7))));
            this.currentPlayingDatas.put(Integer.valueOf(r7), new MutableLiveData<>(new CurrentPlayingData(r7, VideoBusiness.getInstance().getCurrentPlaying(r7))));
            this.playingStateDatas.put(Integer.valueOf(r7), new MutableLiveData<>(new PlayingStateData(r7, VideoBusiness.getInstance().getPlayingState(r7))));
            this.playingDurationDatas.put(Integer.valueOf(r7), new MutableLiveData<>(new PlayingDurationData(r7, VideoBusiness.getInstance().getDuration(r7))));
            this.playingPositionDatas.put(Integer.valueOf(r7), new MutableLiveData<>(new PlayingPositionData(r7, VideoBusiness.getInstance().getPosition(r7))));
            this.videoSizeDatas.put(Integer.valueOf(r7), new MutableLiveData<>(new VideoSizeData(r7, VideoBusiness.getInstance().getVideoSize(r7))));
        }
        this.volumeData = new MutableLiveData<>(Integer.valueOf(VideoBusiness.getInstance().getVolume()));
        this.brightnessData = new MutableLiveData<>(Integer.valueOf(VideoBusiness.getInstance().getBrightness()));
        this.speedLimitSetting = new MutableLiveData<>(Boolean.valueOf(VideoBusiness.getInstance().getSpeedLimitSetting()));
        this.speedLimitView = new MutableLiveData<>(Boolean.valueOf(VideoBusiness.getInstance().getSpeedLimitView()));
        this.currentUsbListener = new VideoBusiness.OnCurrentUsbListener() { // from class: com.chery.media.viewmodel.VideoViewModel.1
            @Override // com.chery.media.model.business.VideoBusiness.OnCurrentUsbListener
            public void onCurrentUsbChanged(int r1) {
                VideoViewModel.this.currentUsb.postValue(Integer.valueOf(r1));
            }
        };
        VideoBusiness.getInstance().addCurrentUsbListener(this.currentUsbListener);
        this.playlistInfoListener = new VideoBusiness.OnPlaylistInfoListener() { // from class: com.chery.media.viewmodel.VideoViewModel.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.VideoBusiness.OnPlaylistInfoListener
            public void onPlaylistChanged(int r3, int r4, List<MediaDef.UsbVideoInfo> list) {
                PlaylistData playlistData = (PlaylistData) ((MutableLiveData) VideoViewModel.this.playlistDatas.get(Integer.valueOf(r3))).getValue();
                playlistData.playlistType = r4;
                playlistData.playlist = list;
                ((MutableLiveData) VideoViewModel.this.playlistDatas.get(Integer.valueOf(r3))).postValue(playlistData);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.VideoBusiness.OnPlaylistInfoListener
            public void onCurrentPlayingChanged(int r3, MediaDef.UsbVideoInfo usbVideoInfo) {
                CurrentPlayingData currentPlayingData = (CurrentPlayingData) ((MutableLiveData) VideoViewModel.this.currentPlayingDatas.get(Integer.valueOf(r3))).getValue();
                currentPlayingData.currentPlaying = usbVideoInfo;
                ((MutableLiveData) VideoViewModel.this.currentPlayingDatas.get(Integer.valueOf(r3))).postValue(currentPlayingData);
            }
        };
        VideoBusiness.getInstance().addPlaylistInfoListener(this.playlistInfoListener);
        this.playingInfoListener = new VideoBusiness.OnPlayingInfoListener() { // from class: com.chery.media.viewmodel.VideoViewModel.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.VideoBusiness.OnPlayingInfoListener
            public void onPlayingStateChanged(int r3, int r4) {
                PlayingStateData playingStateData = (PlayingStateData) ((MutableLiveData) VideoViewModel.this.playingStateDatas.get(Integer.valueOf(r3))).getValue();
                playingStateData.playingState = r4;
                ((MutableLiveData) VideoViewModel.this.playingStateDatas.get(Integer.valueOf(r3))).postValue(playingStateData);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.VideoBusiness.OnPlayingInfoListener
            public void onDurationChanged(int r3, long j) {
                PlayingDurationData playingDurationData = (PlayingDurationData) ((MutableLiveData) VideoViewModel.this.playingDurationDatas.get(Integer.valueOf(r3))).getValue();
                playingDurationData.duration = j;
                ((MutableLiveData) VideoViewModel.this.playingDurationDatas.get(Integer.valueOf(r3))).postValue(playingDurationData);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.VideoBusiness.OnPlayingInfoListener
            public void onPositionChanged(int r3, long j) {
                PlayingPositionData playingPositionData = (PlayingPositionData) ((MutableLiveData) VideoViewModel.this.playingPositionDatas.get(Integer.valueOf(r3))).getValue();
                playingPositionData.position = j;
                ((MutableLiveData) VideoViewModel.this.playingPositionDatas.get(Integer.valueOf(r3))).postValue(playingPositionData);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.VideoBusiness.OnPlayingInfoListener
            public void onVideoSizeNotify(int r3, Size size) {
                VideoSizeData videoSizeData = (VideoSizeData) ((MutableLiveData) VideoViewModel.this.videoSizeDatas.get(Integer.valueOf(r3))).getValue();
                videoSizeData.videoSize = size;
                ((MutableLiveData) VideoViewModel.this.videoSizeDatas.get(Integer.valueOf(r3))).postValue(videoSizeData);
            }
        };
        VideoBusiness.getInstance().addPlayingInfoListener(this.playingInfoListener);
        this.volumeListener = new VideoBusiness.OnVolumeListener() { // from class: com.chery.media.viewmodel.VideoViewModel.4
            @Override // com.chery.media.model.business.VideoBusiness.OnVolumeListener
            public void onVolumeChanged(int r1) {
                VideoViewModel.this.volumeData.postValue(Integer.valueOf(r1));
            }
        };
        VideoBusiness.getInstance().addVolumeListener(this.volumeListener);
        this.brightnessListener = new VideoBusiness.OnBrightnessListener() { // from class: com.chery.media.viewmodel.VideoViewModel.5
            @Override // com.chery.media.model.business.VideoBusiness.OnBrightnessListener
            public void onBrightnessChanged(int r1) {
                VideoViewModel.this.brightnessData.postValue(Integer.valueOf(r1));
            }
        };
        VideoBusiness.getInstance().addBrightnessListener(this.brightnessListener);
        this.speedLimitListener = new VideoBusiness.SpeedLimitListener() { // from class: com.chery.media.viewmodel.VideoViewModel.6
            @Override // com.chery.media.model.business.VideoBusiness.SpeedLimitListener
            public void onSpeedLimitPlayChanged(boolean z) {
            }

            @Override // com.chery.media.model.business.VideoBusiness.SpeedLimitListener
            public void onSpeedLimitSettingChanged(boolean z) {
                VideoViewModel.this.speedLimitSetting.postValue(Boolean.valueOf(z));
            }

            @Override // com.chery.media.model.business.VideoBusiness.SpeedLimitListener
            public void onSpeedLimitViewChanged(boolean z) {
                VideoViewModel.this.speedLimitView.postValue(Boolean.valueOf(z));
            }
        };
        VideoBusiness.getInstance().addSpeedLimitListener(this.speedLimitListener);
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        super.onCleared();
        VideoBusiness.getInstance().removeCurrentUsbListener(this.currentUsbListener);
        VideoBusiness.getInstance().removePlaylistInfoListener(this.playlistInfoListener);
        VideoBusiness.getInstance().removePlayingInfoListener(this.playingInfoListener);
        VideoBusiness.getInstance().removeVolumeListener(this.volumeListener);
        VideoBusiness.getInstance().removeBrightnessListener(this.brightnessListener);
        VideoBusiness.getInstance().removeSpeedLimitListener(this.speedLimitListener);
    }

    public MutableLiveData<Integer> getCurrentUsbData() {
        return this.currentUsb;
    }

    public List<MediaDef.UsbVideoInfo> getPlaylist(int r3) {
        if (this.playlistDatas.containsKey(Integer.valueOf(r3))) {
            return this.playlistDatas.get(Integer.valueOf(r3)).getValue().playlist;
        }
        return null;
    }

    public void observePlaylistDatas(LifecycleOwner lifecycleOwner, Observer<PlaylistData> observer) {
        Iterator<MutableLiveData<PlaylistData>> it = this.playlistDatas.values().iterator();
        while (it.hasNext()) {
            it.next().observe(lifecycleOwner, observer);
        }
    }

    public MediaDef.UsbVideoInfo getCurrentPlaying(int r3) {
        if (this.currentPlayingDatas.containsKey(Integer.valueOf(r3))) {
            return this.currentPlayingDatas.get(Integer.valueOf(r3)).getValue().currentPlaying;
        }
        return null;
    }

    public void observeCurrentPlayingDatas(LifecycleOwner lifecycleOwner, Observer<CurrentPlayingData> observer) {
        Iterator<MutableLiveData<CurrentPlayingData>> it = this.currentPlayingDatas.values().iterator();
        while (it.hasNext()) {
            it.next().observe(lifecycleOwner, observer);
        }
    }

    public int getPlayingState(int r3) {
        if (this.playingStateDatas.containsKey(Integer.valueOf(r3))) {
            return this.playingStateDatas.get(Integer.valueOf(r3)).getValue().playingState;
        }
        return 0;
    }

    public void observePlayingStateDatas(LifecycleOwner lifecycleOwner, Observer<PlayingStateData> observer) {
        Iterator<MutableLiveData<PlayingStateData>> it = this.playingStateDatas.values().iterator();
        while (it.hasNext()) {
            it.next().observe(lifecycleOwner, observer);
        }
    }

    public long getPlayingDuration(int r3) {
        if (this.playingDurationDatas.containsKey(Integer.valueOf(r3))) {
            return this.playingDurationDatas.get(Integer.valueOf(r3)).getValue().duration;
        }
        return 0L;
    }

    public void observePlayingDurationDatas(LifecycleOwner lifecycleOwner, Observer<PlayingDurationData> observer) {
        Iterator<MutableLiveData<PlayingDurationData>> it = this.playingDurationDatas.values().iterator();
        while (it.hasNext()) {
            it.next().observe(lifecycleOwner, observer);
        }
    }

    public long getPlayingPosition(int r3) {
        if (this.playingPositionDatas.containsKey(Integer.valueOf(r3))) {
            return this.playingPositionDatas.get(Integer.valueOf(r3)).getValue().position;
        }
        return 0L;
    }

    public void observePlayingPositionDatas(LifecycleOwner lifecycleOwner, Observer<PlayingPositionData> observer) {
        Iterator<MutableLiveData<PlayingPositionData>> it = this.playingPositionDatas.values().iterator();
        while (it.hasNext()) {
            it.next().observe(lifecycleOwner, observer);
        }
    }

    public Size getVideoSize(int r3) {
        if (this.videoSizeDatas.containsKey(Integer.valueOf(r3))) {
            return this.videoSizeDatas.get(Integer.valueOf(r3)).getValue().videoSize;
        }
        return null;
    }

    public void observeVideoSizeDatas(LifecycleOwner lifecycleOwner, Observer<VideoSizeData> observer) {
        Iterator<MutableLiveData<VideoSizeData>> it = this.videoSizeDatas.values().iterator();
        while (it.hasNext()) {
            it.next().observe(lifecycleOwner, observer);
        }
    }

    public void setUiEnablePlay(boolean z) {
        VideoBusiness.getInstance().setUiEnablePlay(z);
    }

    public void setSurfaceHolder(SurfaceHolder surfaceHolder) {
        VideoBusiness.getInstance().setSurfaceHolder(surfaceHolder);
    }

    public void changePlaylist(int r1, int r2, String str) {
        VideoBusiness.getInstance().changePlaylist(r1, r2, str);
    }

    public void changeCurrentPlaying(int r1, MediaDef.UsbVideoInfo usbVideoInfo) {
        VideoBusiness.getInstance().changeCurrentPlaying(r1, usbVideoInfo);
    }

    public void play(int r1) {
        VideoBusiness.getInstance().play(r1);
    }

    public void pause(int r1) {
        VideoBusiness.getInstance().pause(r1);
    }

    public void freeze(int r1) {
        VideoBusiness.getInstance().freeze(r1);
    }

    public void playPause(int r1) {
        VideoBusiness.getInstance().playPause(r1);
    }

    public void playPrior(int r1) {
        VideoBusiness.getInstance().playPrior(r1);
    }

    public void playNext(int r1) {
        VideoBusiness.getInstance().playNext(r1);
    }

    public void seekTo(int r1, long j) {
        VideoBusiness.getInstance().seekTo(r1, j);
    }

    public void fastBackward(int r1) {
        VideoBusiness.getInstance().fastBackward(r1);
    }

    public void fastForward(int r1) {
        VideoBusiness.getInstance().fastForward(r1);
    }

    public void stopFastPlay(int r1) {
        VideoBusiness.getInstance().stopFastPlay(r1);
    }

    public MutableLiveData<Integer> getVolume() {
        return this.volumeData;
    }

    public int getVolumeMin() {
        return VideoBusiness.getInstance().getVolumeMin();
    }

    public int getVolumeMax() {
        return VideoBusiness.getInstance().getVolumeMax();
    }

    public void changeVolume(int r1) {
        VideoBusiness.getInstance().changeVolume(r1);
    }

    public MutableLiveData<Integer> getBrightness() {
        return this.brightnessData;
    }

    public int getBrightnessMin() {
        return VideoBusiness.getInstance().getBrightnessMin();
    }

    public int getBrightnessMax() {
        return VideoBusiness.getInstance().getBrightnessMax();
    }

    public void changeBrightness(int r1) {
        VideoBusiness.getInstance().changeBrightness(r1);
    }

    public void changeBrightnessBy(int r1) {
        VideoBusiness.getInstance().changeBrightnessBy(r1);
    }

    public MutableLiveData<Boolean> getSpeedLimitSetting() {
        return this.speedLimitSetting;
    }

    public MutableLiveData<Boolean> getSpeedLimitView() {
        return this.speedLimitView;
    }

    public boolean requestAudioFocus() {
        return VideoBusiness.getInstance().requestAudioFocus();
    }
}
