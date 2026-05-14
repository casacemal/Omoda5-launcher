package com.chery.media.viewmodel;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;
import com.chery.media.model.business.LocalMusicBusiness;
import com.chery.media.model.business.MediaDef;
import java.util.List;

/* loaded from: classes.dex */
public class LocalMusicViewModel extends AndroidViewModel {
    private MutableLiveData<MediaDef.LocalMusicInfo> currentPlaying;
    private LocalMusicBusiness.OnCurrentPlayingListener currentPlayingListener;
    private MutableLiveData<Long> duration;
    private MutableLiveData<Integer> fastPlayStatus;
    private MutableLiveData<Boolean> isPlaying;
    private MutableLiveData<List<MediaDef.LocalMusicInfo>> localMusics;
    private LocalMusicBusiness.OnMusicsListener musicsListener;
    private MutableLiveData<Integer> playMode;
    private LocalMusicBusiness.OnPlayModeListener playModeListener;
    private LocalMusicBusiness.OnPlayingInfoListener playingInfoListener;
    private MutableLiveData<List<MediaDef.LocalMusicInfo>> playlist;
    private MutableLiveData<Long> position;

    public LocalMusicViewModel(Application application) {
        super(application);
        this.localMusics = new MutableLiveData<>(LocalMusicBusiness.getInstance().getLocalMusics());
        this.playlist = new MutableLiveData<>(LocalMusicBusiness.getInstance().getPlaylist());
        this.currentPlaying = new MutableLiveData<>(LocalMusicBusiness.getInstance().getCurrentPlaying());
        this.isPlaying = new MutableLiveData<>(Boolean.valueOf(LocalMusicBusiness.getInstance().isPlaying()));
        this.duration = new MutableLiveData<>(Long.valueOf(LocalMusicBusiness.getInstance().getDuration()));
        this.position = new MutableLiveData<>(Long.valueOf(LocalMusicBusiness.getInstance().getPosition()));
        this.fastPlayStatus = new MutableLiveData<>(Integer.valueOf(LocalMusicBusiness.getInstance().getFastPlayStatus()));
        this.playMode = new MutableLiveData<>(Integer.valueOf(LocalMusicBusiness.getInstance().getPlayMode()));
        this.musicsListener = new LocalMusicBusiness.OnMusicsListener() { // from class: com.chery.media.viewmodel.LocalMusicViewModel.1
            @Override // com.chery.media.model.business.LocalMusicBusiness.OnMusicsListener
            public void onMusicsChanged(List<MediaDef.LocalMusicInfo> list) {
                LocalMusicViewModel.this.localMusics.postValue(list);
            }
        };
        LocalMusicBusiness.getInstance().addMusicsListener(this.musicsListener);
        this.currentPlayingListener = new LocalMusicBusiness.OnCurrentPlayingListener() { // from class: com.chery.media.viewmodel.LocalMusicViewModel.2
            @Override // com.chery.media.model.business.LocalMusicBusiness.OnCurrentPlayingListener
            public void onPlaylistChanged(int r1, List<MediaDef.LocalMusicInfo> list) {
                LocalMusicViewModel.this.playlist.postValue(list);
            }

            @Override // com.chery.media.model.business.LocalMusicBusiness.OnCurrentPlayingListener
            public void onCurrentPlayingChanged(MediaDef.LocalMusicInfo localMusicInfo) {
                LocalMusicViewModel.this.currentPlaying.postValue(localMusicInfo);
            }
        };
        LocalMusicBusiness.getInstance().addCurrentPlayingListener(this.currentPlayingListener);
        this.playingInfoListener = new LocalMusicBusiness.OnPlayingInfoListener() { // from class: com.chery.media.viewmodel.LocalMusicViewModel.3
            @Override // com.chery.media.model.business.LocalMusicBusiness.OnPlayingInfoListener
            public void onPlayingStateChanged(boolean z) {
                LocalMusicViewModel.this.isPlaying.postValue(Boolean.valueOf(z));
            }

            @Override // com.chery.media.model.business.LocalMusicBusiness.OnPlayingInfoListener
            public void onDurationChanged(long j) {
                LocalMusicViewModel.this.duration.postValue(Long.valueOf(j));
            }

            @Override // com.chery.media.model.business.LocalMusicBusiness.OnPlayingInfoListener
            public void onPositionChanged(long j) {
                LocalMusicViewModel.this.position.postValue(Long.valueOf(j));
            }

            @Override // com.chery.media.model.business.LocalMusicBusiness.OnPlayingInfoListener
            public void onFastPlayStatusChanged(int r1) {
                LocalMusicViewModel.this.fastPlayStatus.postValue(Integer.valueOf(r1));
            }
        };
        LocalMusicBusiness.getInstance().addPlayingInfoListener(this.playingInfoListener);
        this.playModeListener = new LocalMusicBusiness.OnPlayModeListener() { // from class: com.chery.media.viewmodel.LocalMusicViewModel.4
            @Override // com.chery.media.model.business.LocalMusicBusiness.OnPlayModeListener
            public void onPlayModeChanged(int r1) {
                LocalMusicViewModel.this.playMode.postValue(Integer.valueOf(r1));
            }
        };
        LocalMusicBusiness.getInstance().addPlayModeListener(this.playModeListener);
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        super.onCleared();
        LocalMusicBusiness.getInstance().removeMusicsListener(this.musicsListener);
        LocalMusicBusiness.getInstance().removeCurrentPlayingListener(this.currentPlayingListener);
        LocalMusicBusiness.getInstance().removePlayingInfoListener(this.playingInfoListener);
        LocalMusicBusiness.getInstance().removePlayModeListener(this.playModeListener);
    }

    public MutableLiveData<List<MediaDef.LocalMusicInfo>> getLocalMusics() {
        return this.localMusics;
    }

    public MutableLiveData<List<MediaDef.LocalMusicInfo>> getPlaylist() {
        return this.playlist;
    }

    public MutableLiveData<MediaDef.LocalMusicInfo> getCurrentPlaying() {
        return this.currentPlaying;
    }

    public MutableLiveData<Boolean> isPlaying() {
        return this.isPlaying;
    }

    public MutableLiveData<Long> getDuration() {
        return this.duration;
    }

    public MutableLiveData<Long> getPosition() {
        return this.position;
    }

    public MutableLiveData<Integer> getFastPlayStatus() {
        return this.fastPlayStatus;
    }

    public MutableLiveData<Integer> getPlayMode() {
        return this.playMode;
    }

    public void addMusicsListener(LocalMusicBusiness.OnMusicsListener onMusicsListener) {
        LocalMusicBusiness.getInstance().addMusicsListener(onMusicsListener);
    }

    public void removeMusicsListener(LocalMusicBusiness.OnMusicsListener onMusicsListener) {
        LocalMusicBusiness.getInstance().removeMusicsListener(onMusicsListener);
    }

    public void addToLocal(MediaDef.UsbMusicInfo usbMusicInfo, LocalMusicBusiness.HandleAddResponse handleAddResponse) {
        LocalMusicBusiness.getInstance().addToLocal(usbMusicInfo, handleAddResponse);
    }

    public void addToLocal(List<MediaDef.UsbMusicInfo> list, LocalMusicBusiness.HandleAddResponse handleAddResponse) {
        LocalMusicBusiness.getInstance().addToLocal(list, handleAddResponse);
    }

    public void deleteLocal(MediaDef.LocalMusicInfo localMusicInfo, LocalMusicBusiness.HandleDeleteResponse handleDeleteResponse) {
        LocalMusicBusiness.getInstance().deleteLocal(localMusicInfo, handleDeleteResponse);
    }

    public void deleteLocals(List<MediaDef.LocalMusicInfo> list, LocalMusicBusiness.HandleDeleteResponse handleDeleteResponse) {
        LocalMusicBusiness.getInstance().deleteLocals(list, handleDeleteResponse);
    }

    public int checkLocalState(MediaDef.UsbMusicInfo usbMusicInfo) {
        return LocalMusicBusiness.getInstance().checkLocalState(usbMusicInfo);
    }

    public void changePlaylist(int r1) {
        LocalMusicBusiness.getInstance().changePlaylist(r1);
    }

    public void changePlaylist(int r1, List<MediaDef.LocalMusicInfo> list) {
        LocalMusicBusiness.getInstance().changePlaylist(r1, list);
    }

    public void changeCurrentPlaying(MediaDef.LocalMusicInfo localMusicInfo) {
        LocalMusicBusiness.getInstance().changeCurrentPlaying(localMusicInfo);
    }

    public void play() {
        LocalMusicBusiness.getInstance().play();
    }

    public void pause() {
        LocalMusicBusiness.getInstance().pause();
    }

    public void playPause() {
        LocalMusicBusiness.getInstance().playPause();
    }

    public void playNext() {
        LocalMusicBusiness.getInstance().playNext();
    }

    public void playPrior() {
        LocalMusicBusiness.getInstance().playPrior();
    }

    public void seekTo(long j) {
        LocalMusicBusiness.getInstance().seekTo(j);
    }

    public void fastBackward() {
        LocalMusicBusiness.getInstance().fastBackward();
    }

    public void fastForward() {
        LocalMusicBusiness.getInstance().fastForward();
    }

    public void stopFastPlay() {
        LocalMusicBusiness.getInstance().stopFastPlay();
    }

    public void changePlayMode(int r1) {
        LocalMusicBusiness.getInstance().changePlayMode(r1);
    }

    public boolean requestAudioFocus() {
        return LocalMusicBusiness.getInstance().requestAudioFocus();
    }
}
