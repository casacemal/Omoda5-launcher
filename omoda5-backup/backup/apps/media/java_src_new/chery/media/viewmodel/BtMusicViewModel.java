package com.chery.media.viewmodel;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.LiveData;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.media.model.business.BtMusicBusiness;

/* loaded from: classes.dex */
public class BtMusicViewModel extends AndroidViewModel {
    private static final String TAG = CarLog.concatTag("MEDIA", BtMusicViewModel.class);
    private final Application application;

    public BtMusicViewModel(Application application) {
        super(application);
        PFLog.m29i(TAG, "BtMusicViewModel init");
        this.application = application;
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        PFLog.m29i(TAG, "onCleared");
        super.onCleared();
    }

    public LiveData<Boolean> getBtMusicState() {
        return BtMusicBusiness.getInstance().getBtMusicState();
    }

    public LiveData<BtMusicBusiness.BtMusicInfo> getBtMusicInfo() {
        return BtMusicBusiness.getInstance().getBtMusicInfo();
    }

    public LiveData<Integer> getBtMusicPosition() {
        return BtMusicBusiness.getInstance().getBtMusicPosition();
    }

    public LiveData<Boolean> getPlaybackState() {
        return BtMusicBusiness.getInstance().getPlaybackState();
    }

    public LiveData<String> getConnectedDevice() {
        return BtMusicBusiness.getInstance().getBtDeviceName();
    }

    public void playPause() {
        if (BtMusicBusiness.getInstance().isFocus()) {
            BtMusicBusiness.getInstance().playPause();
        } else {
            BtMusicBusiness.getInstance().setPlayOnCanPlay(true);
            BtMusicBusiness.getInstance().requestBtMusicAudioFocus();
        }
    }

    public void previous() {
        if (BtMusicBusiness.getInstance().isFocus()) {
            BtMusicBusiness.getInstance().previous();
        } else {
            PFLog.m29i(TAG, "previous : audioFocus is not Btmusic");
        }
    }

    public void next() {
        if (BtMusicBusiness.getInstance().isFocus()) {
            BtMusicBusiness.getInstance().next();
        } else {
            PFLog.m29i(TAG, "previous : audioFocus is not Btmusic");
        }
    }

    public boolean requestBtMusicAudioFocus() {
        return BtMusicBusiness.getInstance().requestBtMusicAudioFocus();
    }
}
