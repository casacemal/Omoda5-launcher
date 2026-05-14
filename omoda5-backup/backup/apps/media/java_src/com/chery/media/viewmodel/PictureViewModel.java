package com.chery.media.viewmodel;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.PictureBusiness;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class PictureViewModel extends AndroidViewModel {
    private Map<Integer, MutableLiveData<CurrentPlayingData>> currentPlayingDatas;
    private MutableLiveData<Integer> currentUsb;
    private PictureBusiness.OnCurrentUsbListener currentUsbListener;
    private Map<Integer, MutableLiveData<PlaylistData>> playlistDatas;
    private PictureBusiness.OnPlaylistInfoListener playlistInfoListener;
    private PictureBusiness.SpeedLimitListener speedLimitListener;
    private MutableLiveData<Boolean> speedLimitSetting;
    private MutableLiveData<Boolean> speedLimitView;

    public static class PlaylistData extends UsbLiveData {
        public List<MediaDef.UsbPictureInfo> playlist;
        public int playlistType;

        public PlaylistData(int r1, int r2, List<MediaDef.UsbPictureInfo> list) {
            super(r1);
            this.playlistType = 0;
            this.playlist = new ArrayList();
            this.playlistType = r2;
            this.playlist = list;
        }
    }

    public static class CurrentPlayingData extends UsbLiveData {
        public MediaDef.UsbPictureInfo currentPlaying;

        public CurrentPlayingData(int r1, MediaDef.UsbPictureInfo usbPictureInfo) {
            super(r1);
            this.currentPlaying = usbPictureInfo;
        }
    }

    public PictureViewModel(Application application) {
        super(application);
        this.playlistDatas = new HashMap();
        this.currentPlayingDatas = new HashMap();
        this.currentUsb = new MutableLiveData<>(Integer.valueOf(PictureBusiness.getInstance().getCurrentUsb()));
        this.speedLimitSetting = new MutableLiveData<>(Boolean.valueOf(PictureBusiness.getInstance().getSpeedLimitSetting()));
        this.speedLimitView = new MutableLiveData<>(Boolean.valueOf(PictureBusiness.getInstance().getSpeedLimitView()));
        for (int r7 = 0; r7 <= 0; r7++) {
            this.playlistDatas.put(Integer.valueOf(r7), new MutableLiveData<>(new PlaylistData(r7, PictureBusiness.getInstance().getPlaylistType(r7), PictureBusiness.getInstance().getPlaylist(r7))));
            this.currentPlayingDatas.put(Integer.valueOf(r7), new MutableLiveData<>(new CurrentPlayingData(r7, PictureBusiness.getInstance().getCurrentPlaying(r7))));
        }
        this.currentUsbListener = new PictureBusiness.OnCurrentUsbListener() { // from class: com.chery.media.viewmodel.PictureViewModel.1
            @Override // com.chery.media.model.business.PictureBusiness.OnCurrentUsbListener
            public void onCurrentUsbChanged(int r1) {
                PictureViewModel.this.currentUsb.postValue(Integer.valueOf(r1));
            }
        };
        PictureBusiness.getInstance().addCurrentUsbListener(this.currentUsbListener);
        this.playlistInfoListener = new PictureBusiness.OnPlaylistInfoListener() { // from class: com.chery.media.viewmodel.PictureViewModel.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.PictureBusiness.OnPlaylistInfoListener
            public void onPlaylistChanged(int r3, int r4, List<MediaDef.UsbPictureInfo> list) {
                PlaylistData playlistData = (PlaylistData) ((MutableLiveData) PictureViewModel.this.playlistDatas.get(Integer.valueOf(r3))).getValue();
                playlistData.playlistType = r4;
                playlistData.playlist = list;
                ((MutableLiveData) PictureViewModel.this.playlistDatas.get(Integer.valueOf(r3))).postValue(playlistData);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.PictureBusiness.OnPlaylistInfoListener
            public void onCurrentPlayingChanged(int r3, MediaDef.UsbPictureInfo usbPictureInfo) {
                CurrentPlayingData currentPlayingData = (CurrentPlayingData) ((MutableLiveData) PictureViewModel.this.currentPlayingDatas.get(Integer.valueOf(r3))).getValue();
                currentPlayingData.currentPlaying = usbPictureInfo;
                ((MutableLiveData) PictureViewModel.this.currentPlayingDatas.get(Integer.valueOf(r3))).postValue(currentPlayingData);
            }
        };
        PictureBusiness.getInstance().addPlaylistInfoListener(this.playlistInfoListener);
        this.speedLimitListener = new PictureBusiness.SpeedLimitListener() { // from class: com.chery.media.viewmodel.PictureViewModel.3
            @Override // com.chery.media.model.business.PictureBusiness.SpeedLimitListener
            public void onSpeedLimitPlayChanged(boolean z) {
            }

            @Override // com.chery.media.model.business.PictureBusiness.SpeedLimitListener
            public void onSpeedLimitSettingChanged(boolean z) {
                PictureViewModel.this.speedLimitSetting.postValue(Boolean.valueOf(z));
            }

            @Override // com.chery.media.model.business.PictureBusiness.SpeedLimitListener
            public void onSpeedLimitViewChanged(boolean z) {
                PictureViewModel.this.speedLimitView.postValue(Boolean.valueOf(z));
            }
        };
        PictureBusiness.getInstance().addSpeedLimitListener(this.speedLimitListener);
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        super.onCleared();
        PictureBusiness.getInstance().removeCurrentUsbListener(this.currentUsbListener);
        PictureBusiness.getInstance().removePlaylistInfoListener(this.playlistInfoListener);
    }

    public MutableLiveData<Integer> getCurrentUsbData() {
        return this.currentUsb;
    }

    public List<MediaDef.UsbPictureInfo> getPlaylist(int r3) {
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

    public MediaDef.UsbPictureInfo getCurrentPlaying(int r3) {
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

    public void changeCurrentUsb(int r1) {
        PictureBusiness.getInstance().changeCurrentUsb(r1);
    }

    public void changePlaylist(int r1, int r2, List<MediaDef.UsbPictureInfo> list) {
        PictureBusiness.getInstance().changePlaylist(r1, r2, list);
    }

    public void changeCurrentPlaying(int r1, MediaDef.UsbPictureInfo usbPictureInfo) {
        PictureBusiness.getInstance().changeCurrentPlaying(r1, usbPictureInfo);
    }

    public void changeCurrentPlaying(int r1, int r2) {
        PictureBusiness.getInstance().changeCurrentPlaying(r1, r2);
    }

    public void changePrior(int r1) {
        PictureBusiness.getInstance().changePrior(r1);
    }

    public void changeNext(int r1) {
        PictureBusiness.getInstance().changeNext(r1);
    }

    public MutableLiveData<Boolean> getSpeedLimitSetting() {
        return this.speedLimitSetting;
    }

    public MutableLiveData<Boolean> getSpeedLimitView() {
        return this.speedLimitView;
    }
}
