package com.chery.media.viewmodel;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;
import com.avn.tools.log.CarLog;
import com.chery.media.model.business.MediaBusiness;

/* loaded from: classes.dex */
public class MediaViewModel extends AndroidViewModel {
    private static final String TAG = CarLog.concatTag("MEDIA", MediaViewModel.class);
    private MediaBusiness.OnAudioSourceChangeListener audioSourceChangeListener;
    private MutableLiveData<Integer> currentAudioSource;

    public MediaViewModel(Application application) {
        super(application);
        this.currentAudioSource = new MutableLiveData<>(Integer.valueOf(MediaBusiness.getInstance().getCurrentAudioSource()));
        this.audioSourceChangeListener = new MediaBusiness.OnAudioSourceChangeListener() { // from class: com.chery.media.viewmodel.MediaViewModel.1
            @Override // com.chery.media.model.business.MediaBusiness.OnAudioSourceChangeListener
            public void onAudioSourceChanged(int r1, int r2) {
                MediaViewModel.this.currentAudioSource.postValue(Integer.valueOf(r2));
            }
        };
        MediaBusiness.getInstance().addAudioSourceChangeListener(this.audioSourceChangeListener);
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        super.onCleared();
        MediaBusiness.getInstance().removeAudioSourceChangeListener(this.audioSourceChangeListener);
    }

    public MutableLiveData<Integer> getCurrentAudioSource() {
        return this.currentAudioSource;
    }
}
