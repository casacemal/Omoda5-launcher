package com.chery.media.viewmodel;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.UsbScannerBusiness;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class UsbScannerViewModel extends AndroidViewModel {
    private UsbScannerBusiness.OnUsbDeviceInfoListener usbDeviceInfoListener;
    private Map<Integer, MutableLiveData<UsbMountStatusData>> usbMountStatusMap;
    private Map<Integer, MutableLiveData<UsbScanStatusData>> usbScanStatusMap;

    public static class UsbMountStatusData extends UsbLiveData {
        public boolean mounted;

        public UsbMountStatusData(int r1, boolean z) {
            super(r1);
            this.mounted = z;
        }
    }

    public static class UsbScanStatusData extends UsbLiveData {
        public int status;

        public UsbScanStatusData(int r1, int r2) {
            super(r1);
            this.status = r2;
        }
    }

    public UsbScannerViewModel(Application application) {
        super(application);
        this.usbMountStatusMap = new HashMap();
        this.usbScanStatusMap = new HashMap();
        for (int r0 = 0; r0 <= 0; r0++) {
            MediaDef.UsbDeviceInfo usbDeviceInfo = UsbScannerBusiness.getInstance().getUsbDeviceInfo(r0);
            this.usbMountStatusMap.put(Integer.valueOf(r0), new MutableLiveData<>(new UsbMountStatusData(r0, usbDeviceInfo != null && usbDeviceInfo.mounted)));
            this.usbScanStatusMap.put(Integer.valueOf(r0), new MutableLiveData<>(new UsbScanStatusData(r0, usbDeviceInfo != null ? usbDeviceInfo.scanStatus : 32)));
        }
        this.usbDeviceInfoListener = new UsbScannerBusiness.OnUsbDeviceInfoListener() { // from class: com.chery.media.viewmodel.UsbScannerViewModel.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.UsbScannerBusiness.OnUsbDeviceInfoListener
            public void onMountStatusChanged(int r3, boolean z) {
                UsbMountStatusData usbMountStatusData = (UsbMountStatusData) ((MutableLiveData) UsbScannerViewModel.this.usbMountStatusMap.get(Integer.valueOf(r3))).getValue();
                usbMountStatusData.mounted = z;
                ((MutableLiveData) UsbScannerViewModel.this.usbMountStatusMap.get(Integer.valueOf(r3))).postValue(usbMountStatusData);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.chery.media.model.business.UsbScannerBusiness.OnUsbDeviceInfoListener
            public void onScanInfoUpdate(int r3, int r4) {
                UsbScanStatusData usbScanStatusData = (UsbScanStatusData) ((MutableLiveData) UsbScannerViewModel.this.usbScanStatusMap.get(Integer.valueOf(r3))).getValue();
                usbScanStatusData.status = r4;
                ((MutableLiveData) UsbScannerViewModel.this.usbScanStatusMap.get(Integer.valueOf(r3))).postValue(usbScanStatusData);
            }
        };
        UsbScannerBusiness.getInstance().addUsbDeviceInfoListener(this.usbDeviceInfoListener);
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        super.onCleared();
        UsbScannerBusiness.getInstance().removeUsbDeviceInfoListener(this.usbDeviceInfoListener);
    }

    public boolean isMounted(int r3) {
        if (this.usbMountStatusMap.containsKey(Integer.valueOf(r3))) {
            return this.usbMountStatusMap.get(Integer.valueOf(r3)).getValue().mounted;
        }
        return false;
    }

    public void observeUsbMountStatusDatas(LifecycleOwner lifecycleOwner, Observer<UsbMountStatusData> observer) {
        Iterator<MutableLiveData<UsbMountStatusData>> it = this.usbMountStatusMap.values().iterator();
        while (it.hasNext()) {
            it.next().observe(lifecycleOwner, observer);
        }
    }

    public int getUsbScanStatus(int r3) {
        if (this.usbScanStatusMap.containsKey(Integer.valueOf(r3))) {
            return this.usbScanStatusMap.get(Integer.valueOf(r3)).getValue().status;
        }
        return 32;
    }

    public void observeUsbScanStatusDatas(LifecycleOwner lifecycleOwner, Observer<UsbScanStatusData> observer) {
        Iterator<MutableLiveData<UsbScanStatusData>> it = this.usbScanStatusMap.values().iterator();
        while (it.hasNext()) {
            it.next().observe(lifecycleOwner, observer);
        }
    }

    public MediaDef.UsbDeviceInfo getUsbDeviceInfo(int r1) {
        return UsbScannerBusiness.getInstance().getUsbDeviceInfo(r1);
    }

    public List<MediaDef.UsbMusicInfo> getMusics(int r1) {
        return UsbScannerBusiness.getInstance().getMusics(r1);
    }

    public List<MediaDef.UsbVideoInfo> getVideos(int r1) {
        return UsbScannerBusiness.getInstance().getVideos(r1);
    }

    public List<MediaDef.UsbPictureInfo> getPictures(int r1) {
        return UsbScannerBusiness.getInstance().getPictures(r1);
    }

    public MediaDef.UsbFolderInfo getFolderInfo(int r1, String str) {
        return UsbScannerBusiness.getInstance().getFolderInfo(r1, str);
    }
}
