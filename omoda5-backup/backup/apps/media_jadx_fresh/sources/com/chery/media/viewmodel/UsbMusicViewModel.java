package com.chery.media.viewmodel;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.UsbMusicBusiness;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class UsbMusicViewModel extends AndroidViewModel {
    private Map<Integer, MutableLiveData<CurrentPlayingData>> currentPlayingDatas;
    private MutableLiveData<Integer> currentUsb;
    private UsbMusicBusiness.OnCurrentUsbListener currentUsbListener;
    private Map<Integer, MutableLiveData<FastPlayStatusData>> fastPlayStatusDatas;
    private Map<Integer, MutableLiveData<PlayModeData>> playModeDatas;
    private UsbMusicBusiness.OnPlayModeListener playModeListener;
    private Map<Integer, MutableLiveData<PlayingDurationData>> playingDurationDatas;
    private UsbMusicBusiness.OnPlayingInfoListener playingInfoListener;
    private Map<Integer, MutableLiveData<PlayingPositionData>> playingPositionDatas;
    private Map<Integer, MutableLiveData<PlayingStateData>> playingStateDatas;
    private Map<Integer, MutableLiveData<PlaylistData>> playlistDatas;
    private UsbMusicBusiness.OnPlaylistInfoListener playlistInfoListener;

    public static class PlaylistData extends UsbLiveData {
        public List<MediaDef.UsbMusicInfo> playlist;
        public int playlistType;

        public PlaylistData(int r1, int r2, List<MediaDef.UsbMusicInfo> list) {
            super(r1);
            this.playlistType = 0;
            this.playlist = new ArrayList();
            this.playlistType = r2;
            this.playlist = list;
        }
    }

    public static class CurrentPlayingData extends UsbLiveData {
        public MediaDef.UsbMusicInfo currentPlaying;

        public CurrentPlayingData(int r1, MediaDef.UsbMusicInfo usbMusicInfo) {
            super(r1);
            this.currentPlaying = usbMusicInfo;
        }
    }

    public static class PlayingStateData extends UsbLiveData {
        public boolean isPlaying;

        public PlayingStateData(int r1, boolean z) {
            super(r1);
            this.isPlaying = false;
            this.isPlaying = z;
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

    public static class PlayModeData extends UsbLiveData {
        public int playMode;

        public PlayModeData(int r1, int r2) {
            super(r1);
            this.playMode = -1;
            this.playMode = r2;
        }
    }

    public static class FastPlayStatusData extends UsbLiveData {
        public int fastPlayStatus;

        public FastPlayStatusData(int r1, int r2) {
            super(r1);
            this.fastPlayStatus = 0;
            this.fastPlayStatus = r2;
        }
    }

    public UsbMusicViewModel(Application application) {
        super(application);
        this.playlistDatas = new HashMap();
        this.currentPlayingDatas = new HashMap();
        this.playingStateDatas = new HashMap();
        this.playingDurationDatas = new HashMap();
        this.playingPositionDatas = new HashMap();
        this.playModeDatas = new HashMap();
        this.fastPlayStatusDatas = new HashMap();
        this.currentUsb = new MutableLiveData<>(Integer.valueOf(UsbMusicBusiness.getInstance().getCurrentUsb()));
        for (int r7 = 0; r7 <= 0; r7++) {
            this.playlistDatas.put(Integer.valueOf(r7), new MutableLiveData<>(new PlaylistData(r7, UsbMusicBusiness.getInstance().getPlaylistType(r7), UsbMusicBusiness.getInstance().getPlaylist(r7))));
            this.currentPlayingDatas.put(Integer.valueOf(r7), new MutableLiveData<>(new CurrentPlayingData(r7, UsbMusicBusiness.getInstance().getCurrentPlaying(r7))));
            this.playingStateDatas.put(Integer.valueOf(r7), new MutableLiveData<>(new PlayingStateData(r7, UsbMusicBusiness.getInstance().isPlaying(r7))));
            this.playingDurationDatas.put(Integer.valueOf(r7), new MutableLiveData<>(new PlayingDurationData(r7, UsbMusicBusiness.getInstance().getDuration(r7))));
            this.playingPositionDatas.put(Integer.valueOf(r7), new MutableLiveData<>(new PlayingPositionData(r7, UsbMusicBusiness.getInstance().getPosition(r7))));
            this.playModeDatas.put(Integer.valueOf(r7), new MutableLiveData<>(new PlayModeData(r7, UsbMusicBusiness.getInstance().getPlayMode(r7))));
            this.fastPlayStatusDatas.put(Integer.valueOf(r7), new MutableLiveData<>(new FastPlayStatusData(r7, UsbMusicBusiness.getInstance().getFastPlayStatus(r7))));
        }
        this.currentUsbListener = new UsbMusicBusiness.OnCurrentUsbListener() { // from class: com.chery.media.viewmodel.UsbMusicViewModel.1
            @Override // com.chery.media.model.business.UsbMusicBusiness.OnCurrentUsbListener
            public void onCurrentUsbChanged(int r1) {
                UsbMusicViewModel.this.currentUsb.postValue(Integer.valueOf(r1));
            }
        };
        UsbMusicBusiness.getInstance().addCurrentUsbListener(this.currentUsbListener);
        this.playlistInfoListener = new UsbMusicBusiness.OnPlaylistInfoListener() { // from class: com.chery.media.viewmodel.UsbMusicViewModel.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.UsbMusicBusiness.OnPlaylistInfoListener
            public void onPlaylistChanged(int r3, int r4, List<MediaDef.UsbMusicInfo> list) {
                PlaylistData playlistData = (PlaylistData) ((MutableLiveData) UsbMusicViewModel.this.playlistDatas.get(Integer.valueOf(r3))).getValue();
                playlistData.playlistType = r4;
                playlistData.playlist = list;
                ((MutableLiveData) UsbMusicViewModel.this.playlistDatas.get(Integer.valueOf(r3))).postValue(playlistData);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.UsbMusicBusiness.OnPlaylistInfoListener
            public void onCurrentPlayingChanged(int r3, MediaDef.UsbMusicInfo usbMusicInfo) {
                CurrentPlayingData currentPlayingData = (CurrentPlayingData) ((MutableLiveData) UsbMusicViewModel.this.currentPlayingDatas.get(Integer.valueOf(r3))).getValue();
                currentPlayingData.currentPlaying = usbMusicInfo;
                ((MutableLiveData) UsbMusicViewModel.this.currentPlayingDatas.get(Integer.valueOf(r3))).postValue(currentPlayingData);
            }
        };
        UsbMusicBusiness.getInstance().addPlaylistInfoListener(this.playlistInfoListener);
        this.playingInfoListener = new UsbMusicBusiness.OnPlayingInfoListener() { // from class: com.chery.media.viewmodel.UsbMusicViewModel.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.UsbMusicBusiness.OnPlayingInfoListener
            public void onPlayingStateChanged(int r3, boolean z) {
                PlayingStateData playingStateData = (PlayingStateData) ((MutableLiveData) UsbMusicViewModel.this.playingStateDatas.get(Integer.valueOf(r3))).getValue();
                playingStateData.isPlaying = z;
                ((MutableLiveData) UsbMusicViewModel.this.playingStateDatas.get(Integer.valueOf(r3))).postValue(playingStateData);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.UsbMusicBusiness.OnPlayingInfoListener
            public void onDurationChanged(int r3, long j) {
                PlayingDurationData playingDurationData = (PlayingDurationData) ((MutableLiveData) UsbMusicViewModel.this.playingDurationDatas.get(Integer.valueOf(r3))).getValue();
                playingDurationData.duration = j;
                ((MutableLiveData) UsbMusicViewModel.this.playingDurationDatas.get(Integer.valueOf(r3))).postValue(playingDurationData);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.UsbMusicBusiness.OnPlayingInfoListener
            public void onPositionChanged(int r3, long j) {
                PlayingPositionData playingPositionData = (PlayingPositionData) ((MutableLiveData) UsbMusicViewModel.this.playingPositionDatas.get(Integer.valueOf(r3))).getValue();
                playingPositionData.position = j;
                ((MutableLiveData) UsbMusicViewModel.this.playingPositionDatas.get(Integer.valueOf(r3))).postValue(playingPositionData);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.UsbMusicBusiness.OnPlayingInfoListener
            public void onFastPlayStatusChanged(int r3, int r4) {
                FastPlayStatusData fastPlayStatusData = (FastPlayStatusData) ((MutableLiveData) UsbMusicViewModel.this.fastPlayStatusDatas.get(Integer.valueOf(r3))).getValue();
                fastPlayStatusData.fastPlayStatus = r4;
                ((MutableLiveData) UsbMusicViewModel.this.fastPlayStatusDatas.get(Integer.valueOf(r3))).postValue(fastPlayStatusData);
            }
        };
        UsbMusicBusiness.getInstance().addPlayingInfoListener(this.playingInfoListener);
        this.playModeListener = new UsbMusicBusiness.OnPlayModeListener() { // from class: com.chery.media.viewmodel.UsbMusicViewModel.4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.UsbMusicBusiness.OnPlayModeListener
            public void onPlayModeChanged(int r3, int r4) {
                PlayModeData playModeData = (PlayModeData) ((MutableLiveData) UsbMusicViewModel.this.playModeDatas.get(Integer.valueOf(r3))).getValue();
                playModeData.playMode = r4;
                ((MutableLiveData) UsbMusicViewModel.this.playModeDatas.get(Integer.valueOf(r3))).postValue(playModeData);
            }
        };
        UsbMusicBusiness.getInstance().addPlayModeListener(this.playModeListener);
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        super.onCleared();
        UsbMusicBusiness.getInstance().removeCurrentUsbListener(this.currentUsbListener);
        UsbMusicBusiness.getInstance().removePlaylistInfoListener(this.playlistInfoListener);
        UsbMusicBusiness.getInstance().removePlayingInfoListener(this.playingInfoListener);
        UsbMusicBusiness.getInstance().removePlayModeListener(this.playModeListener);
    }

    public MutableLiveData<Integer> getCurrentUsbData() {
        return this.currentUsb;
    }

    public int getPlaylistType(int r3) {
        if (this.playlistDatas.containsKey(Integer.valueOf(r3))) {
            return this.playlistDatas.get(Integer.valueOf(r3)).getValue().playlistType;
        }
        return 0;
    }

    public List<MediaDef.UsbMusicInfo> getPlaylist(int r3) {
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

    public MediaDef.UsbMusicInfo getCurrentPlaying(int r3) {
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

    public boolean isPlaying(int r3) {
        if (this.playingStateDatas.containsKey(Integer.valueOf(r3))) {
            return this.playingStateDatas.get(Integer.valueOf(r3)).getValue().isPlaying;
        }
        return false;
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

    public int getFastPlayStatus(int r3) {
        if (this.fastPlayStatusDatas.containsKey(Integer.valueOf(r3))) {
            return this.fastPlayStatusDatas.get(Integer.valueOf(r3)).getValue().fastPlayStatus;
        }
        return 0;
    }

    public void observeFastPlayStatusDatas(LifecycleOwner lifecycleOwner, Observer<FastPlayStatusData> observer) {
        Iterator<MutableLiveData<FastPlayStatusData>> it = this.fastPlayStatusDatas.values().iterator();
        while (it.hasNext()) {
            it.next().observe(lifecycleOwner, observer);
        }
    }

    public int getPlayMode(int r3) {
        if (this.playModeDatas.containsKey(Integer.valueOf(r3))) {
            return this.playModeDatas.get(Integer.valueOf(r3)).getValue().playMode;
        }
        return 2;
    }

    public void observePlayModeDatas(LifecycleOwner lifecycleOwner, Observer<PlayModeData> observer) {
        Iterator<MutableLiveData<PlayModeData>> it = this.playModeDatas.values().iterator();
        while (it.hasNext()) {
            it.next().observe(lifecycleOwner, observer);
        }
    }

    public void changePlaylist(int r1, int r2, String str) {
        UsbMusicBusiness.getInstance().changePlaylist(r1, r2, str);
    }

    public void changeCurrentPlaying(int r1, MediaDef.UsbMusicInfo usbMusicInfo) {
        UsbMusicBusiness.getInstance().changeCurrentPlaying(r1, usbMusicInfo);
    }

    public void play(int r1) {
        UsbMusicBusiness.getInstance().play(r1);
    }

    public void pause(int r1) {
        UsbMusicBusiness.getInstance().pause(r1);
    }

    public void playPause(int r1) {
        UsbMusicBusiness.getInstance().playPause(r1);
    }

    public void playNext(int r1) {
        UsbMusicBusiness.getInstance().playNext(r1);
    }

    public void playPrior(int r1) {
        UsbMusicBusiness.getInstance().playPrior(r1);
    }

    public void seekTo(int r1, long j) {
        UsbMusicBusiness.getInstance().seekTo(r1, j);
    }

    public void fastBackward(int r1) {
        UsbMusicBusiness.getInstance().fastBackward(r1);
    }

    public void fastForward(int r1) {
        UsbMusicBusiness.getInstance().fastForward(r1);
    }

    public void stopFastPlay(int r1) {
        UsbMusicBusiness.getInstance().stopFastPlay(r1);
    }

    public void changePlayMode(int r1, int r2) {
        UsbMusicBusiness.getInstance().changePlayMode(r1, r2);
    }

    public boolean requestAudioFocus(int r1) {
        return UsbMusicBusiness.getInstance().requestAudioFocus(r1);
    }
}
