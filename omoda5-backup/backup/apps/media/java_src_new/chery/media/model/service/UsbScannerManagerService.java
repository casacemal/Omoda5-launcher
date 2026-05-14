package com.chery.media.model.service;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.media.UsbScannerResult;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.avn.tools.usb.UsbWatcher;
import com.avn.tools.usb.VolumeInfo;
import com.chery.media.IMediaService;
import com.chery.media.IMediaServiceListener;
import com.chery.media.util.DumpUsbScannerManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* loaded from: classes.dex */
public class UsbScannerManagerService extends Service {
    private static final String TAG = CarLog.concatTag("MEDIA", UsbScannerManagerService.class);
    public static final int USB_SCAN_COMPLETED = 35;
    public static final int USB_SCAN_INCOMPLETE = 37;
    public static final int USB_SCAN_IN_PROGRESS = 34;
    public static final int USB_SCAN_NONE = 32;
    public static final int USB_SCAN_STARTED = 33;
    public static final int USB_SCAN_TIMEOUT = 36;
    private Handler handler;
    private String mountPath;
    private BroadcastReceiver usbDeviceReceiver;
    private DumpUsbScannerManager usbScannerManager;
    private UsbWatcher usbWatcher;
    private int attachedDeviceId = 0;
    private boolean isMounted = false;
    private int scanStatus = 32;
    private IMediaService.Stub stub = new IMediaService.Stub() { // from class: com.chery.media.model.service.UsbScannerManagerService.1
        @Override // com.chery.media.IMediaService
        public boolean isUsbMounted() throws RemoteException {
            return UsbScannerManagerService.this.isMounted;
        }

        @Override // com.chery.media.IMediaService
        public String getUsbMountPath() throws RemoteException {
            return UsbScannerManagerService.this.mountPath;
        }

        @Override // com.chery.media.IMediaService
        public int getUsbScanStatus() throws RemoteException {
            return UsbScannerManagerService.this.scanStatus;
        }

        @Override // com.chery.media.IMediaService
        public void addListener(IMediaServiceListener iMediaServiceListener) throws RemoteException {
            UsbScannerManagerService.this.mediaServiceListenerRemoteCallbackList.register(iMediaServiceListener);
        }

        @Override // com.chery.media.IMediaService
        public void removeListener(IMediaServiceListener iMediaServiceListener) throws RemoteException {
            UsbScannerManagerService.this.mediaServiceListenerRemoteCallbackList.unregister(iMediaServiceListener);
        }
    };
    private RemoteCallbackList<IMediaServiceListener> mediaServiceListenerRemoteCallbackList = new RemoteCallbackList<>();

    @Override // android.app.Service
    public void onCreate() throws NoSuchMethodException, SecurityException {
        PFLog.m25d(TAG, "onCreate");
        super.onCreate();
        if (this.handler == null) {
            this.handler = new Handler();
        }
        if (this.usbScannerManager == null) {
            DumpUsbScannerManager dumpUsbScannerManager = new DumpUsbScannerManager(this);
            this.usbScannerManager = dumpUsbScannerManager;
            dumpUsbScannerManager.addServiceListener(new DumpUsbScannerManager.UsbServiceListener() { // from class: com.chery.media.model.service.UsbScannerManagerService.2
                @Override // com.chery.media.util.DumpUsbScannerManager.UsbServiceListener
                public void onDisconnected() {
                }

                @Override // com.chery.media.util.DumpUsbScannerManager.UsbServiceListener
                public void onConnected() {
                    if (UsbScannerManagerService.this.isMounted) {
                        UsbScannerManagerService usbScannerManagerService = UsbScannerManagerService.this;
                        usbScannerManagerService.setScanStatus(usbScannerManagerService.usbScannerManager.getScanStatus(1, 1), UsbScannerManagerService.this.mountPath);
                    }
                }
            });
            this.usbScannerManager.addUsbScannerListener(new DumpUsbScannerManager.UsbScannerListener() { // from class: com.chery.media.model.service.UsbScannerManagerService.3
                @Override // com.chery.media.util.DumpUsbScannerManager.UsbScannerListener
                public void onMountReceived(int r1, String str, int r3) {
                    UsbScannerManagerService.this.setMounted(true, "/storage/" + str);
                }

                @Override // com.chery.media.util.DumpUsbScannerManager.UsbScannerListener
                public void onUnMountReceived(int r1, String str, int r3) {
                    UsbScannerManagerService.this.setMounted(false, null);
                }

                @Override // com.chery.media.util.DumpUsbScannerManager.UsbScannerListener
                public void onMediaSyncStarted(int r1, String str, int r3) {
                    UsbScannerManagerService.this.setScanStatus(33, "/storage/" + str);
                }

                @Override // com.chery.media.util.DumpUsbScannerManager.UsbScannerListener
                public void onMediaSyncInProgress(int r1, String str, int r3, UsbScannerResult usbScannerResult) {
                    UsbScannerManagerService.this.setScanStatus(34, "/storage/" + str);
                }

                @Override // com.chery.media.util.DumpUsbScannerManager.UsbScannerListener
                public void onMediaSyncCompleted(int r1, String str, int r3) {
                    UsbScannerManagerService.this.setScanStatus(35, "/storage/" + str);
                }
            });
        }
        this.usbScannerManager.connect();
        checkAttachedDevice();
        PFLog.m25d(TAG, "attachedDeviceId:" + this.attachedDeviceId);
        this.usbDeviceReceiver = new BroadcastReceiver() { // from class: com.chery.media.model.service.UsbScannerManagerService.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                PFLog.m25d(UsbScannerManagerService.TAG, "onReceive:" + intent);
                UsbDevice usbDevice = (UsbDevice) intent.getParcelableExtra("device");
                PFLog.m25d(UsbScannerManagerService.TAG, "usbDevice:" + usbDevice);
                if (!VolumeInfo.ACTION_USB_DEVICE_ATTACHED.equals(intent.getAction()) && VolumeInfo.ACTION_USB_DEVICE_DETACHED.equals(intent.getAction()) && usbDevice.getDeviceId() == UsbScannerManagerService.this.attachedDeviceId) {
                    PFLog.m25d(UsbScannerManagerService.TAG, "delete attachedDeviceId");
                    UsbScannerManagerService.this.attachedDeviceId = 0;
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(VolumeInfo.ACTION_USB_DEVICE_ATTACHED);
        intentFilter.addAction(VolumeInfo.ACTION_USB_DEVICE_DETACHED);
        registerReceiver(this.usbDeviceReceiver, intentFilter);
        checkMountedDevice();
    }

    @Override // android.app.Service
    public void onDestroy() {
        PFLog.m25d(TAG, "onDestroy");
        super.onDestroy();
        this.usbScannerManager.disconnect();
        unregisterReceiver(this.usbDeviceReceiver);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.stub;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMounted(boolean z, String str) {
        if (z == this.isMounted) {
            return;
        }
        if (!z) {
            setScanStatus(32, null);
        }
        PFLog.m25d(TAG, "setMounted " + z + " " + str);
        this.isMounted = z;
        this.mountPath = str;
        emitMounted();
    }

    private void emitMounted() {
        int r0 = this.mediaServiceListenerRemoteCallbackList.beginBroadcast();
        if (this.isMounted) {
            for (int r1 = 0; r1 < r0; r1++) {
                try {
                    ((IMediaServiceListener) this.mediaServiceListenerRemoteCallbackList.getBroadcastItem(r1)).onUsbMounted(this.mountPath, this.attachedDeviceId > 0);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        } else {
            for (int r2 = 0; r2 < r0; r2++) {
                try {
                    ((IMediaServiceListener) this.mediaServiceListenerRemoteCallbackList.getBroadcastItem(r2)).onUsbUnMounted();
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
        this.mediaServiceListenerRemoteCallbackList.finishBroadcast();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScanStatus(int r3, String str) {
        if (r3 != this.scanStatus || r3 == 34) {
            if (r3 != 32) {
                setMounted(true, str);
            }
            PFLog.m25d(TAG, "setScanStatus " + r3);
            this.scanStatus = r3;
            emitScanStatusChanged();
        }
    }

    private void emitScanStatusChanged() {
        int r0 = this.mediaServiceListenerRemoteCallbackList.beginBroadcast();
        for (int r1 = 0; r1 < r0; r1++) {
            try {
                ((IMediaServiceListener) this.mediaServiceListenerRemoteCallbackList.getBroadcastItem(r1)).onUSbScanStatusChanged(this.scanStatus);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.mediaServiceListenerRemoteCallbackList.finishBroadcast();
    }

    private void checkAttachedDevice() {
        PFLog.m25d(TAG, "checkAttachedDevice");
        Collection<UsbDevice> collectionValues = ((UsbManager) getSystemService("usb")).getDeviceList().values();
        PFLog.m25d(TAG, "usbDeviceList size = " + collectionValues.size());
        for (UsbDevice usbDevice : collectionValues) {
            PFLog.m25d(TAG, "UsbDevice : " + usbDevice.toString());
            for (int r2 = 0; r2 < usbDevice.getInterfaceCount(); r2++) {
                if (usbDevice.getInterface(r2).getInterfaceClass() == 8) {
                    PFLog.m25d(TAG, "find mass storage device");
                    this.attachedDeviceId = usbDevice.getDeviceId();
                    return;
                }
            }
        }
    }

    private void checkMountedDevice() throws NoSuchMethodException, SecurityException {
        Method method;
        List<StorageVolume> listAsList;
        Method method2;
        Method method3;
        Method method4;
        boolean zBooleanValue;
        String uuid;
        String state;
        PFLog.m25d(TAG, "checkMountedDevice");
        StorageManager storageManager = (StorageManager) getSystemService("storage");
        if (Build.VERSION.SDK_INT >= 24) {
            listAsList = storageManager.getStorageVolumes();
        } else {
            try {
                method = StorageManager.class.getMethod("getVolumeList", new Class[0]);
            } catch (NoSuchMethodException e) {
                e.printStackTrace();
                method = null;
            }
            if (method != null) {
                try {
                    listAsList = Arrays.asList((StorageVolume[]) method.invoke(storageManager, new Object[0]));
                } catch (IllegalAccessException | InvocationTargetException e2) {
                    e2.printStackTrace();
                }
            } else {
                listAsList = null;
            }
        }
        if (listAsList == null) {
            PFLog.m27e(TAG, "can not get storage volumes");
            return;
        }
        PFLog.m25d(TAG, "StorageVolume size = " + listAsList.size());
        for (StorageVolume storageVolume : listAsList) {
            try {
                Method method5 = StorageVolume.class.getMethod("getId", new Class[0]);
                Method method6 = StorageVolume.class.getMethod("getPath", new Class[0]);
                try {
                    String str = (String) method5.invoke(storageVolume, new Object[0]);
                    String str2 = (String) method6.invoke(storageVolume, new Object[0]);
                    if (Build.VERSION.SDK_INT >= 24) {
                        zBooleanValue = storageVolume.isRemovable();
                        uuid = storageVolume.getUuid();
                        state = storageVolume.getState();
                    } else {
                        try {
                            method2 = StorageVolume.class.getMethod("isRemovable", new Class[0]);
                            try {
                                method3 = StorageVolume.class.getMethod("getUuid", new Class[0]);
                                try {
                                    method4 = StorageVolume.class.getMethod("getState", new Class[0]);
                                } catch (NoSuchMethodException e3) {
                                    e = e3;
                                    e.printStackTrace();
                                    method4 = null;
                                    zBooleanValue = ((Boolean) method2.invoke(storageVolume, new Object[0])).booleanValue();
                                    uuid = (String) method3.invoke(storageVolume, new Object[0]);
                                    state = (String) method4.invoke(storageVolume, new Object[0]);
                                    PFLog.m25d(TAG, "checkMounted id:" + str);
                                    PFLog.m25d(TAG, "checkMounted isRemovable:" + zBooleanValue);
                                    PFLog.m25d(TAG, "checkMounted mountedUuid:" + uuid);
                                    PFLog.m25d(TAG, "checkMounted mountedState:" + state);
                                    PFLog.m25d(TAG, "checkMounted mountedPath:" + str2);
                                    if (!zBooleanValue) {
                                    }
                                }
                            } catch (NoSuchMethodException e4) {
                                e = e4;
                                method3 = null;
                            }
                        } catch (NoSuchMethodException e5) {
                            e = e5;
                            method2 = null;
                            method3 = null;
                        }
                        try {
                            zBooleanValue = ((Boolean) method2.invoke(storageVolume, new Object[0])).booleanValue();
                            uuid = (String) method3.invoke(storageVolume, new Object[0]);
                            state = (String) method4.invoke(storageVolume, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException e6) {
                            e6.printStackTrace();
                            return;
                        }
                    }
                    PFLog.m25d(TAG, "checkMounted id:" + str);
                    PFLog.m25d(TAG, "checkMounted isRemovable:" + zBooleanValue);
                    PFLog.m25d(TAG, "checkMounted mountedUuid:" + uuid);
                    PFLog.m25d(TAG, "checkMounted mountedState:" + state);
                    PFLog.m25d(TAG, "checkMounted mountedPath:" + str2);
                    if (!zBooleanValue && str2 != null) {
                        if (state.equals("mounted")) {
                            setMounted(true, str2);
                            return;
                        }
                        return;
                    }
                } catch (IllegalAccessException | InvocationTargetException e7) {
                    e7.printStackTrace();
                    return;
                }
            } catch (NoSuchMethodException e8) {
                e8.printStackTrace();
                return;
            }
        }
    }
}
