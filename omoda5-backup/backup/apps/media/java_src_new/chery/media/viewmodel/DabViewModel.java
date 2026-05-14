package com.chery.media.viewmodel;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.LiveData;
import com.avn.tools.log.CarLog;
import com.chery.media.model.business.DabAnnounceInfo;
import com.chery.media.model.business.DabBusiness;
import com.chery.media.model.business.DabInfo;
import com.chery.media.model.business.DabProgramInfo;
import java.util.List;
import p004sw.com.dabdrmradio.DabImage;

/* loaded from: classes.dex */
public class DabViewModel extends AndroidViewModel {
    private static final String TAG = CarLog.concatTag("DAB", DabViewModel.class);

    public DabViewModel(Application application) {
        super(application);
    }

    public void requestAudioFocus() {
        DabBusiness.getInstance().requestAudioFocus();
    }

    public void playPause() {
        DabBusiness.getInstance().playPause();
    }

    public void addCallback(DabBusiness.DabBusinessCallback dabBusinessCallback) {
        DabBusiness.getInstance().addCallback(dabBusinessCallback);
    }

    public void removeCallback(DabBusiness.DabBusinessCallback dabBusinessCallback) {
        DabBusiness.getInstance().removeCallback(dabBusinessCallback);
    }

    public void setLastListPage(int r1) {
        DabBusiness.getInstance().setLastListPage(r1);
    }

    public int getLastListPage() {
        return DabBusiness.getInstance().getLastListPage();
    }

    public void addFavor(DabInfo dabInfo) {
        DabBusiness.getInstance().addFavor(dabInfo);
    }

    public void cancelFavor(DabInfo dabInfo) {
        DabBusiness.getInstance().cancelFavor(dabInfo);
    }

    public List<DabInfo> getFavorList() {
        return DabBusiness.getInstance().getFavorList();
    }

    public List<DabInfo> getALLList() {
        return DabBusiness.getInstance().getALLList();
    }

    public boolean isFavor(DabInfo dabInfo) {
        return DabBusiness.getInstance().isFavor(dabInfo);
    }

    public void setCurPlayType(int r1, String str) {
        DabBusiness.getInstance().setCurPlayType(r1, str);
    }

    public void startScan() {
        DabBusiness.getInstance().startScan();
    }

    public void stopScan() {
        DabBusiness.getInstance().stopScan();
    }

    public void setAnnouncementTypeSwitch(int r1, boolean z) {
        DabBusiness.getInstance().setAnnouncementTypeSwitch(r1, z);
    }

    public List<String> getAllEnsembleName() {
        return DabBusiness.getInstance().getAllEnsembleName();
    }

    public List<DabInfo> getDabListByEnsembleName(String str) {
        return DabBusiness.getInstance().getDabListByEnsembleName(str);
    }

    public List<Integer> getAllPtyId() {
        return DabBusiness.getInstance().getAllPtyId();
    }

    public String getPtyName(int r1) {
        return DabBusiness.getInstance().getPtyName(r1);
    }

    public List<DabInfo> getDabListByPty(int r1) {
        return DabBusiness.getInstance().getDabListByPty(r1);
    }

    public void playChannel(DabInfo dabInfo) {
        DabBusiness.getInstance().playChannel(dabInfo);
    }

    public boolean isFirstTimeUsed() {
        return DabBusiness.getInstance().isFirstTimeUsed();
    }

    public void setFirstTimeUsedFalse() {
        DabBusiness.getInstance().setFirstTimeUsedFalse();
    }

    public LiveData<Boolean> getPlayingState() {
        return DabBusiness.getInstance().getPlayingState();
    }

    public LiveData<List<DabInfo>> getCurPlayList() {
        return DabBusiness.getInstance().getCurPlayList();
    }

    public LiveData<DabInfo> getCurPlayInfo() {
        return DabBusiness.getInstance().getCurPlayInfo();
    }

    public LiveData<String> getPlayLabel() {
        return DabBusiness.getInstance().getPlayLabel();
    }

    public LiveData<DabImage> getPlayImage() {
        return DabBusiness.getInstance().getPlayImage();
    }

    public LiveData<List<DabAnnounceInfo>> getAnnounceList() {
        return DabBusiness.getInstance().getAnnounceList();
    }

    public LiveData<Boolean> getScanState() {
        return DabBusiness.getInstance().getScanState();
    }

    public List<DabProgramInfo> getDabProgramInfoList(int r8, int r9, int r10, int r11, int r12, int r13) {
        return DabBusiness.getInstance().getDabProgramInfoList(r8, r9, r10, r11, r12, r13);
    }

    public void addReserve(DabProgramInfo dabProgramInfo) {
        DabBusiness.getInstance().addReserve(dabProgramInfo);
    }

    public void removeReserve(DabProgramInfo dabProgramInfo) {
        DabBusiness.getInstance().removeReserve(dabProgramInfo);
    }

    public boolean isReservedExpired(DabProgramInfo dabProgramInfo) {
        return DabBusiness.getInstance().isReservedExpired(dabProgramInfo);
    }

    public boolean isCurPlayingProgram(DabProgramInfo dabProgramInfo) {
        return DabBusiness.getInstance().isCurPlayingProgram(dabProgramInfo);
    }

    public void setDabOption(boolean z) {
        DabBusiness.getInstance().setDabOption(z);
    }

    public LiveData<Boolean> getDabOption() {
        return DabBusiness.getInstance().getDabOption();
    }

    public void playNext() {
        DabBusiness.getInstance().playNext();
    }

    public void playPrevious() {
        DabBusiness.getInstance().playPrevious();
    }

    public long getCurTimeSeconds() {
        return DabBusiness.getInstance().getCurTimeSeconds();
    }
}
