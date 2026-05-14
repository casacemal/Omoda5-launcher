package com.chery.media.viewmodel;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.LiveData;
import com.avn.tools.log.CarLog;
import com.chery.media.model.business.RadioBusiness;
import com.chery.media.model.business.RadioDef;
import java.util.List;

/* loaded from: classes.dex */
public class RadioViewModel extends AndroidViewModel {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_TUNER, RadioViewModel.class);

    public RadioViewModel(Application application) {
        super(application);
    }

    public int scan(int r1, boolean z) {
        if (!RadioBusiness.getInstance().isFmAudioFocus() && !RadioBusiness.getInstance().isAmAudioFocus()) {
            RadioBusiness.getInstance().requestAudioFocus();
        }
        return RadioBusiness.getInstance().scan(r1, z);
    }

    public void seek(int r1, boolean z) {
        if (!RadioBusiness.getInstance().isFmAudioFocus() && !RadioBusiness.getInstance().isAmAudioFocus()) {
            RadioBusiness.getInstance().requestAudioFocus();
        }
        RadioBusiness.getInstance().seek(r1, z);
    }

    public void requestAudioFocus() {
        RadioBusiness.getInstance().requestAudioFocus();
    }

    public void close() {
        RadioBusiness.getInstance().close();
    }

    public LiveData<RadioDef> getCurrentChannel() {
        return RadioBusiness.getInstance().getCurrentChannel();
    }

    public LiveData<Integer> getCurrentBand() {
        return RadioBusiness.getInstance().getCurrentBand();
    }

    public LiveData<List<RadioDef>> getRadioList() {
        return RadioBusiness.getInstance().getRadioList();
    }

    public LiveData<Boolean> getPlayingState() {
        return RadioBusiness.getInstance().getPlayingState();
    }

    public LiveData<Integer> getTunerState() {
        return RadioBusiness.getInstance().getTunerState();
    }

    public LiveData<Integer> getArea() {
        return RadioBusiness.getInstance().getArea();
    }

    public void changeBand(int r1) {
        RadioBusiness.getInstance().setConfigure(r1);
    }

    public void tune(int r1) {
        RadioBusiness.getInstance().tune(r1);
        if (RadioBusiness.getInstance().isFmAudioFocus() || RadioBusiness.getInstance().isAmAudioFocus()) {
            return;
        }
        RadioBusiness.getInstance().requestAudioFocus();
    }

    public void tuneByList(int r1) {
        RadioBusiness.getInstance().tuneByList(r1);
        if (RadioBusiness.getInstance().isFmAudioFocus() || RadioBusiness.getInstance().isAmAudioFocus()) {
            return;
        }
        RadioBusiness.getInstance().requestAudioFocus();
    }

    public void playPause() {
        if (RadioBusiness.getInstance().getCurrentState().intValue() != 0) {
            RadioBusiness.getInstance().cancel();
            return;
        }
        if (RadioBusiness.getInstance().getPlayingState().getValue().booleanValue()) {
            RadioBusiness.getInstance().setPlayingState(false);
        } else if (RadioBusiness.getInstance().isFmAudioFocus() || RadioBusiness.getInstance().isAmAudioFocus()) {
            RadioBusiness.getInstance().setPlayingState(true);
        } else {
            RadioBusiness.getInstance().requestAudioFocus();
        }
    }

    public void addCollection(int r1, boolean z) {
        RadioBusiness.getInstance().addCollection(r1, z);
    }

    public void cancel() {
        RadioBusiness.getInstance().cancel();
    }
}
