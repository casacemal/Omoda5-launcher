package com.avn.tools.usb;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbManager;
import android.os.Build;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.util.Log;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.PointerIconCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class UsbWatcher {
    public static final int CATEGORY_ANDROID = 4;
    public static final int CATEGORY_HUB = 5;
    public static final int CATEGORY_IOS = 3;
    public static final int CATEGORY_MASS_STORAGE = 1;
    public static final int CATEGORY_NO_RESPOND = 6;
    public static final int CATEGORY_TBOX = 8;
    public static final int CATEGORY_UNKNOWN = 0;
    public static final int CATEGORY_UNSUPPORTED = 7;
    public static final int CONNECTION_STATE_INSERTED = 1;
    public static final int CONNECTION_STATE_MOUNTED = 2;
    public static final int CONNECTION_STATE_REMOVED = 0;
    public static final int CONNECTION_STATE_UNMOUNTABLE = 3;
    public static final int TYPE_NONE = 0;
    public static final int TYPE_USB1 = 1;
    public static final int TYPE_USB2 = 2;
    private UsbManager mUsbManager;
    private static final String TAG = UsbWatcher.class.getSimpleName();
    private static String USB1_SYS_DEVICE_PATH = "/sys/devices/platform/soc/soc:usb3@31120000/31220000.dwc3/xhci-hcd.1.auto/usb3/3-1/";
    private static String USB2_SYS_DEVICE_PATH = "/sys/devices/platform/soc/soc:usb3@31260000/31260000.dwc3/xhci-hcd.0.auto/usb1/1-1/1-1.1/";
    private static UsbWatcher mInstance = new UsbWatcher();
    protected Context mContext = null;
    private UsbInsertReceiver mUsbInsertReceiver = new UsbInsertReceiver();
    private UsbMountReceiver mUsbMountReceiver = new UsbMountReceiver();
    private Map<Integer, DeviceInfo> mDeviceInfos = new HashMap();
    private Map<Integer, UsbDevice> mUsbDeviceMap = new HashMap();
    private HashSet<Integer> mAndroidVendorIDs = new HashSet<>();
    private List<onConnectionStateListener> mListeners = new ArrayList();

    public interface onConnectionStateListener {
        void onInserted(int r1);

        void onMounted(int r1, List<String> list);

        void onRemoved(int r1);
    }

    private static class DeviceInfo {
        String name;
        String sysDevPath = "";
        int connectionState = 0;
        int category = 0;
        int devideId = 0;
        String serialNumber = "";
        int vendorId = 0;
        int productId = 0;
        List<String> mountedPaths = new ArrayList();
        String uuid = "";

        public DeviceInfo(String str) {
            this.name = "";
            this.name = str;
        }

        boolean isInserted() {
            return this.connectionState > 0;
        }

        boolean isMounted() {
            return this.connectionState == 2;
        }

        void clear() {
            this.connectionState = 0;
            this.category = 0;
            this.devideId = -1;
            this.serialNumber = "";
            this.vendorId = 0;
            this.productId = 0;
            this.mountedPaths.clear();
            this.uuid = "";
        }
    }

    public static UsbWatcher instance() {
        return mInstance;
    }

    public void addConnectionListener(onConnectionStateListener onconnectionstatelistener) {
        synchronized (instance()) {
            Iterator<onConnectionStateListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                if (onconnectionstatelistener == it.next()) {
                    return;
                }
            }
            this.mListeners.add(onconnectionstatelistener);
        }
    }

    public void removeConnectionListener(onConnectionStateListener onconnectionstatelistener) {
        synchronized (instance()) {
            Iterator<onConnectionStateListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                if (onconnectionstatelistener == it.next()) {
                    it.remove();
                }
            }
        }
    }

    public void init(Context context) throws NoSuchMethodException, SecurityException {
        int r4;
        Log.v(TAG, "init");
        this.mContext = context;
        registerReceiver();
        this.mDeviceInfos.put(1, new DeviceInfo("usb1"));
        this.mDeviceInfos.get(1).sysDevPath = USB1_SYS_DEVICE_PATH;
        this.mDeviceInfos.put(2, new DeviceInfo("usb2"));
        this.mDeviceInfos.get(2).sysDevPath = USB2_SYS_DEVICE_PATH;
        UsbManager usbManager = (UsbManager) this.mContext.getSystemService("usb");
        this.mUsbManager = usbManager;
        Collection<UsbDevice> collectionValues = usbManager.getDeviceList().values();
        Log.v(TAG, "usbDeviceList size = " + collectionValues.size());
        for (UsbDevice usbDevice : collectionValues) {
            Log.v(TAG, "UsbDevice : " + usbDevice.toString());
        }
        for (UsbDevice usbDevice2 : collectionValues) {
            Log.v(TAG, String.format("device id: %d", Integer.valueOf(usbDevice2.getDeviceId())));
            if (usbDevice2.getDeviceId() / 1000 == 3) {
                r4 = 1;
            } else if (usbDevice2.getDeviceId() / 1000 != 1) {
                return;
            } else {
                r4 = 2;
            }
            Log.v(TAG, String.format("device usbType: %d", Integer.valueOf(r4)));
            DeviceInfo deviceInfo = this.mDeviceInfos.get(Integer.valueOf(r4));
            if (!deviceInfo.isInserted()) {
                Log.v(TAG, String.format("%s inserted!", deviceInfo.name));
                this.mUsbDeviceMap.put(Integer.valueOf(r4), usbDevice2);
                deviceInfo.connectionState = 1;
                deviceInfo.devideId = usbDevice2.getDeviceId();
                checkCategory(r4, usbDevice2);
                Log.v(TAG, String.format("%s category: %d", deviceInfo.name, Integer.valueOf(deviceInfo.category)));
                deviceInfo.serialNumber = getSerialNumber(usbDevice2);
                Log.v(TAG, String.format("%s serialNumber: %s", deviceInfo.name, deviceInfo.serialNumber));
            }
        }
        checkMounted(false);
    }

    public void uninit() {
        unRegisterReceiver();
        this.mDeviceInfos.clear();
        this.mUsbDeviceMap.clear();
        this.mContext = null;
    }

    public int getConnectionState(int r1) {
        DeviceInfo deviceInfo = this.mDeviceInfos.get(Integer.valueOf(r1));
        if (deviceInfo == null) {
            return 0;
        }
        return deviceInfo.connectionState;
    }

    public int getVid(int r1) {
        DeviceInfo deviceInfo = this.mDeviceInfos.get(Integer.valueOf(r1));
        if (deviceInfo == null) {
            return 0;
        }
        return deviceInfo.vendorId;
    }

    public int getPid(int r1) {
        DeviceInfo deviceInfo = this.mDeviceInfos.get(Integer.valueOf(r1));
        if (deviceInfo == null) {
            return 0;
        }
        return deviceInfo.productId;
    }

    public int getCategory(int r1) {
        DeviceInfo deviceInfo = this.mDeviceInfos.get(Integer.valueOf(r1));
        if (deviceInfo == null) {
            return 0;
        }
        return deviceInfo.category;
    }

    public String getSerialNumber(int r1) {
        DeviceInfo deviceInfo = this.mDeviceInfos.get(Integer.valueOf(r1));
        return deviceInfo == null ? "" : deviceInfo.serialNumber;
    }

    public List<String> getMountedPaths(int r1) {
        DeviceInfo deviceInfo = this.mDeviceInfos.get(Integer.valueOf(r1));
        if (deviceInfo == null) {
            return new ArrayList();
        }
        return deviceInfo.mountedPaths;
    }

    public String getUid(int r1) {
        DeviceInfo deviceInfo = this.mDeviceInfos.get(Integer.valueOf(r1));
        return deviceInfo == null ? "" : deviceInfo.uuid;
    }

    private void registerReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(VolumeInfo.ACTION_USB_DEVICE_ATTACHED);
        intentFilter.addAction(VolumeInfo.ACTION_USB_DEVICE_DETACHED);
        this.mContext.registerReceiver(this.mUsbInsertReceiver, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        if (Build.VERSION.SDK_INT >= 23) {
            intentFilter2.addAction(VolumeInfo.ACTION_VOLUME_STATE_CHANGED);
        } else {
            intentFilter2.addAction("android.intent.action.MEDIA_PREMOUNT");
            intentFilter2.addAction("android.intent.action.MEDIA_MOUNTED");
            intentFilter2.addAction("android.intent.action.MEDIA_UNMOUNTABLE");
            intentFilter2.addDataScheme("file");
        }
        this.mContext.registerReceiver(this.mUsbMountReceiver, intentFilter2);
    }

    private void unRegisterReceiver() {
        this.mContext.unregisterReceiver(this.mUsbInsertReceiver);
        this.mContext.unregisterReceiver(this.mUsbMountReceiver);
    }

    class UsbInsertReceiver extends BroadcastReceiver {
        UsbInsertReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int r8;
            String action = intent.getAction();
            Log.v(UsbWatcher.TAG, action);
            UsbDevice usbDevice = (UsbDevice) intent.getParcelableExtra("device");
            if (!action.equals(VolumeInfo.ACTION_USB_DEVICE_ATTACHED)) {
                if (action.equals(VolumeInfo.ACTION_USB_DEVICE_DETACHED)) {
                    if (usbDevice == null) {
                        Log.e(UsbWatcher.TAG, "EXCEPTION: remove UsbDevice NULL");
                        return;
                    }
                    Log.v(UsbWatcher.TAG, String.format("device id: %d", Integer.valueOf(usbDevice.getDeviceId())));
                    Iterator it = UsbWatcher.this.mDeviceInfos.keySet().iterator();
                    while (it.hasNext()) {
                        int r0 = ((Integer) it.next()).intValue();
                        DeviceInfo deviceInfo = (DeviceInfo) UsbWatcher.this.mDeviceInfos.get(Integer.valueOf(r0));
                        if (deviceInfo.devideId == usbDevice.getDeviceId()) {
                            if (deviceInfo.isInserted()) {
                                Log.v(UsbWatcher.TAG, String.format("%s removed!", deviceInfo.name));
                                UsbWatcher.this.mUsbDeviceMap.put(Integer.valueOf(r0), null);
                                ((DeviceInfo) UsbWatcher.this.mDeviceInfos.get(Integer.valueOf(r0))).clear();
                                UsbWatcher.this.emitUsbRemoved(r0);
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            if (usbDevice == null) {
                Log.e(UsbWatcher.TAG, "EXCEPTION: insert UsbDevice NULL");
                return;
            }
            Log.v(UsbWatcher.TAG, String.format("device name: %s", usbDevice.getDeviceName()));
            Log.v(UsbWatcher.TAG, String.format("device id: %d", Integer.valueOf(usbDevice.getDeviceId())));
            if (usbDevice.getDeviceId() / 1000 == 3) {
                r8 = 1;
            } else if (usbDevice.getDeviceId() / 1000 != 1) {
                return;
            } else {
                r8 = 2;
            }
            Log.v(UsbWatcher.TAG, String.format("device usbType: %d", Integer.valueOf(r8)));
            DeviceInfo deviceInfo2 = (DeviceInfo) UsbWatcher.this.mDeviceInfos.get(Integer.valueOf(r8));
            if (deviceInfo2.isInserted()) {
                return;
            }
            Log.v(UsbWatcher.TAG, String.format("%s inserted!", deviceInfo2.name));
            UsbWatcher.this.mUsbDeviceMap.put(Integer.valueOf(r8), usbDevice);
            deviceInfo2.connectionState = 1;
            deviceInfo2.devideId = usbDevice.getDeviceId();
            UsbWatcher.this.checkCategory(r8, usbDevice);
            Log.v(UsbWatcher.TAG, String.format("%s category: %d", deviceInfo2.name, Integer.valueOf(deviceInfo2.category)));
            deviceInfo2.serialNumber = UsbWatcher.this.getSerialNumber(usbDevice);
            Log.v(UsbWatcher.TAG, String.format("%s serialNumber: %s", deviceInfo2.name, deviceInfo2.serialNumber));
            UsbWatcher.this.emitUsbInserted(r8);
        }
    }

    class UsbMountReceiver extends BroadcastReceiver {
        UsbMountReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws NoSuchMethodException, SecurityException {
            String action = intent.getAction();
            Log.v(UsbWatcher.TAG, action);
            Log.v(UsbWatcher.TAG, "data:" + intent.getDataString());
            for (String str : intent.getExtras().keySet()) {
                Object obj = intent.getExtras().get(str);
                String str2 = UsbWatcher.TAG;
                Object[] objArr = new Object[2];
                objArr[0] = str;
                objArr[1] = obj != null ? obj.toString() : "";
                Log.v(str2, String.format("key:%s value:%s", objArr));
            }
            if (Build.VERSION.SDK_INT >= 23) {
                if (action.equals(VolumeInfo.ACTION_VOLUME_STATE_CHANGED) && intent.getIntExtra(VolumeInfo.EXTRA_VOLUME_STATE, 0) == 2) {
                    UsbWatcher.this.checkMounted(true);
                    return;
                }
                return;
            }
            if (action.equals("android.intent.action.MEDIA_MOUNTED")) {
                UsbWatcher.this.checkMounted(true);
            } else {
                action.equals("android.intent.action.MEDIA_UNMOUNTABLE");
            }
        }
    }

    private int getDeviceNum(int r3) throws IOException {
        File file = new File(this.mDeviceInfos.get(Integer.valueOf(r3)).sysDevPath + "devnum");
        if (!file.exists()) {
            return -1;
        }
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[128];
                fileInputStream.read(bArr);
                try {
                    fileInputStream.close();
                    return Integer.parseInt(new String(bArr).trim());
                } catch (IOException e) {
                    e.printStackTrace();
                    return -1;
                }
            } catch (FileNotFoundException e2) {
                e2.printStackTrace();
                return -1;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkCategory(int r5, UsbDevice usbDevice) {
        Log.v(TAG, "checkCategory VID:" + usbDevice.getVendorId());
        Log.v(TAG, "checkCategory PID:" + usbDevice.getProductId());
        for (int r0 = 0; r0 < usbDevice.getInterfaceCount(); r0++) {
            Log.v(TAG, "checkCategory :: getInterface(i) : " + usbDevice.getInterface(r0).toString());
        }
        if (findUsbHubByInterface(usbDevice)) {
            Log.v(TAG, "----Find Hub existing----");
            this.mDeviceInfos.get(Integer.valueOf(r5)).category = 5;
            return;
        }
        if (findAndroidDevice(usbDevice)) {
            Log.v(TAG, "----Find Android existing----");
            this.mDeviceInfos.get(Integer.valueOf(r5)).category = 4;
            return;
        }
        if (findIOSDeviceByVIDPID(usbDevice)) {
            Log.v(TAG, "----Find IOS existing----");
            this.mDeviceInfos.get(Integer.valueOf(r5)).category = 3;
            return;
        }
        if (findTBoxByVID(usbDevice)) {
            Log.v(TAG, "----Find T-Box existing----");
            this.mDeviceInfos.get(Integer.valueOf(r5)).category = 8;
        } else if (findMassStorageByInterface(usbDevice)) {
            Log.v(TAG, "----Find Mass Storage existing----");
            this.mDeviceInfos.get(Integer.valueOf(r5)).category = 1;
        } else if (findUnsupportedDeviceByPID(usbDevice)) {
            Log.v(TAG, "----Find unsupported device existing----");
            this.mDeviceInfos.get(Integer.valueOf(r5)).category = 7;
        }
    }

    private boolean findUsbHubByInterface(UsbDevice usbDevice) {
        for (int r0 = 0; r0 < usbDevice.getInterfaceCount(); r0++) {
            if (usbDevice.getInterface(r0).getInterfaceClass() == 9) {
                Log.v(TAG, "findUsbHubByInterface : true");
                return true;
            }
        }
        Log.v(TAG, "findUsbHubByInterface : false");
        return false;
    }

    private boolean findAndroidDevice(UsbDevice usbDevice) {
        if (usbDevice.getVendorId() == 6353) {
            return true;
        }
        return findAndroidDeviceByInterface(usbDevice) && findAndroidDeviceByVID(usbDevice);
    }

    private boolean findAndroidDeviceByInterface(UsbDevice usbDevice) {
        for (int r0 = 0; r0 < usbDevice.getInterfaceCount(); r0++) {
            if (usbDevice.getInterface(r0).getInterfaceClass() == 255 && usbDevice.getInterface(r0).getInterfaceSubclass() == 66 && usbDevice.getInterface(r0).getInterfaceProtocol() == 1) {
                Log.v(TAG, "findAndroidDeviceByInterface : true");
                return true;
            }
        }
        Log.v(TAG, "findAndroidDeviceByInterface : false");
        return false;
    }

    private boolean findAndroidDeviceByVID(UsbDevice usbDevice) {
        if (this.mAndroidVendorIDs.isEmpty()) {
            this.mAndroidVendorIDs.add(6353);
            this.mAndroidVendorIDs.add(32903);
            this.mAndroidVendorIDs.add(2996);
            this.mAndroidVendorIDs.add(1256);
            this.mAndroidVendorIDs.add(8888);
            this.mAndroidVendorIDs.add(4100);
            this.mAndroidVendorIDs.add(4817);
            this.mAndroidVendorIDs.add(1282);
            this.mAndroidVendorIDs.add(4046);
            this.mAndroidVendorIDs.add(1161);
            this.mAndroidVendorIDs.add(16700);
            this.mAndroidVendorIDs.add(2389);
            this.mAndroidVendorIDs.add(2334);
            this.mAndroidVendorIDs.add(1245);
            this.mAndroidVendorIDs.add(6610);
            this.mAndroidVendorIDs.add(1154);
            this.mAndroidVendorIDs.add(4265);
            this.mAndroidVendorIDs.add(1478);
            this.mAndroidVendorIDs.add(8791);
            this.mAndroidVendorIDs.add(1033);
            this.mAndroidVendorIDs.add(1242);
            this.mAndroidVendorIDs.add(2352);
            this.mAndroidVendorIDs.add(8019);
            this.mAndroidVendorIDs.add(8470);
            this.mAndroidVendorIDs.add(2821);
            this.mAndroidVendorIDs.add(1137);
            this.mAndroidVendorIDs.add(1105);
            this.mAndroidVendorIDs.add(3868);
            this.mAndroidVendorIDs.add(1044);
            this.mAndroidVendorIDs.add(9248);
            this.mAndroidVendorIDs.add(4633);
            this.mAndroidVendorIDs.add(7099);
            this.mAndroidVendorIDs.add(8198);
            this.mAndroidVendorIDs.add(6127);
            this.mAndroidVendorIDs.add(57408);
            this.mAndroidVendorIDs.add(9443);
            this.mAndroidVendorIDs.add(7501);
            this.mAndroidVendorIDs.add(3705);
            this.mAndroidVendorIDs.add(5730);
            this.mAndroidVendorIDs.add(1221);
            this.mAndroidVendorIDs.add(9699);
            this.mAndroidVendorIDs.add(1032);
            this.mAndroidVendorIDs.add(8980);
            this.mAndroidVendorIDs.add(1356);
            this.mAndroidVendorIDs.add(6473);
            this.mAndroidVendorIDs.add(7871);
            this.mAndroidVendorIDs.add(8759);
            this.mAndroidVendorIDs.add(9024);
            this.mAndroidVendorIDs.add(5845);
            this.mAndroidVendorIDs.add(6565);
            this.mAndroidVendorIDs.add(8921);
            this.mAndroidVendorIDs.add(10007);
            this.mAndroidVendorIDs.add(6609);
            this.mAndroidVendorIDs.add(10294);
            this.mAndroidVendorIDs.add(8222);
            this.mAndroidVendorIDs.add(4251);
            this.mAndroidVendorIDs.add(3725);
            this.mAndroidVendorIDs.add(8320);
            this.mAndroidVendorIDs.add(7493);
            this.mAndroidVendorIDs.add(Integer.valueOf(PointerIconCompat.TYPE_GRAB));
            this.mAndroidVendorIDs.add(7994);
            this.mAndroidVendorIDs.add(10823);
            this.mAndroidVendorIDs.add(10981);
            this.mAndroidVendorIDs.add(10013);
            this.mAndroidVendorIDs.add(11022);
            this.mAndroidVendorIDs.add(10821);
            this.mAndroidVendorIDs.add(10864);
            this.mAndroidVendorIDs.add(8711);
            this.mAndroidVendorIDs.add(10665);
            this.mAndroidVendorIDs.add(6018);
            this.mAndroidVendorIDs.add(39861);
            this.mAndroidVendorIDs.add(10608);
            this.mAndroidVendorIDs.add(1504);
            this.mAndroidVendorIDs.add(11084);
        }
        if (this.mAndroidVendorIDs.contains(Integer.valueOf(usbDevice.getVendorId()))) {
            Log.v(TAG, "findAndroidDeviceByVID : true");
            return true;
        }
        Log.v(TAG, "findAndroidDeviceByVID : false");
        return false;
    }

    private boolean findIOSDeviceByVIDPID(UsbDevice usbDevice) {
        if (usbDevice.getVendorId() == 1452 && (usbDevice.getProductId() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) == 4608) {
            Log.v(TAG, "findIOSDeviceByVIDPID : true");
            return true;
        }
        Log.v(TAG, "findIOSDeviceByVIDPID : false");
        return false;
    }

    private boolean findTBoxByVID(UsbDevice usbDevice) {
        if (usbDevice.getVendorId() == 1317) {
            Log.v(TAG, "findTBoxByVID : true");
            return true;
        }
        Log.v(TAG, "findTBoxByVID : false");
        return false;
    }

    private boolean findMassStorageByInterface(UsbDevice usbDevice) {
        for (int r0 = 0; r0 < usbDevice.getInterfaceCount(); r0++) {
            if (usbDevice.getInterface(r0).getInterfaceClass() == 8) {
                Log.v(TAG, "findMassStorageByInterface : true");
                return true;
            }
        }
        Log.v(TAG, "findMassStorageByInterface : false");
        return false;
    }

    private boolean findUnsupportedDeviceByPID(UsbDevice usbDevice) {
        HashSet hashSet = new HashSet();
        hashSet.add(new Object(2965, 6032) { // from class: com.avn.tools.usb.UsbWatcher.1VPID
            int pid;
            int vid;

            {
                this.vid = ı;
                this.pid = ı;
            }
        });
        hashSet.add(new Object(1133, 2249) { // from class: com.avn.tools.usb.UsbWatcher.1VPID
            int pid;
            int vid;

            {
                this.vid = ı;
                this.pid = ı;
            }
        });
        int r2 = 1118;
        hashSet.add(new Object(r2, 1817) { // from class: com.avn.tools.usb.UsbWatcher.1VPID
            int pid;
            int vid;

            {
                this.vid = r2;
                this.pid = ı;
            }
        });
        hashSet.add(new Object(r2, 132) { // from class: com.avn.tools.usb.UsbWatcher.1VPID
            int pid;
            int vid;

            {
                this.vid = r2;
                this.pid = ı;
            }
        });
        hashSet.add(new Object(6666, InputDeviceCompat.SOURCE_DPAD) { // from class: com.avn.tools.usb.UsbWatcher.1VPID
            int pid;
            int vid;

            {
                this.vid = r2;
                this.pid = ı;
            }
        });
        if (hashSet.contains(new Object(usbDevice.getVendorId(), usbDevice.getProductId()) { // from class: com.avn.tools.usb.UsbWatcher.1VPID
            int pid;
            int vid;

            {
                this.vid = r2;
                this.pid = ı;
            }
        })) {
            Log.v(TAG, "findUnsupportedDeviceByPID : true");
            return true;
        }
        Log.v(TAG, "findUnsupportedDeviceByPID : false");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSerialNumber(UsbDevice usbDevice) {
        UsbManager usbManager;
        UsbDeviceConnection usbDeviceConnectionOpenDevice;
        return (usbDevice == null || (usbManager = this.mUsbManager) == null || (usbDeviceConnectionOpenDevice = usbManager.openDevice(usbDevice)) == null) ? "" : usbDeviceConnectionOpenDevice.getSerial();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkMounted(boolean z) throws NoSuchMethodException, SecurityException {
        List<StorageVolume> listAsList;
        String state;
        boolean zIsRemovable;
        String uuid;
        int r1;
        Log.v(TAG, "checkMounted emit : " + z);
        try {
            StorageManager storageManager = (StorageManager) this.mContext.getSystemService("storage");
            if (Build.VERSION.SDK_INT >= 24) {
                listAsList = storageManager.getStorageVolumes();
            } else {
                listAsList = Arrays.asList((StorageVolume[]) StorageManager.class.getMethod("getVolumeList", new Class[0]).invoke(storageManager, new Object[0]));
            }
            Log.v(TAG, "StorageVolume size = " + listAsList.size());
            for (StorageVolume storageVolume : listAsList) {
                Class<?> cls = storageVolume.getClass();
                String str = (String) cls.getMethod("getId", new Class[0]).invoke(storageVolume, new Object[0]);
                String str2 = (String) cls.getMethod("getPath", new Class[0]).invoke(storageVolume, new Object[0]);
                if (Build.VERSION.SDK_INT >= 24) {
                    zIsRemovable = storageVolume.isRemovable();
                    uuid = storageVolume.getUuid();
                    state = storageVolume.getState();
                } else {
                    Method method = cls.getMethod("isRemovable", new Class[0]);
                    Method method2 = cls.getMethod("getUuid", new Class[0]);
                    Method method3 = cls.getMethod("getState", new Class[0]);
                    boolean zBooleanValue = ((Boolean) method.invoke(storageVolume, new Object[0])).booleanValue();
                    String str3 = (String) method2.invoke(storageVolume, new Object[0]);
                    state = (String) method3.invoke(storageVolume, new Object[0]);
                    zIsRemovable = zBooleanValue;
                    uuid = str3;
                }
                Log.v(TAG, "checkMounted id:" + str);
                Log.v(TAG, "checkMounted isRemovable:" + zIsRemovable);
                Log.v(TAG, "checkMounted mountedUuid:" + uuid);
                Log.v(TAG, "checkMounted mountedState:" + state);
                Log.v(TAG, "checkMounted mountedPath:" + str2);
                if (zIsRemovable && str2 != null && state.equals("mounted")) {
                    if (str.equals("public:8,17")) {
                        r1 = 1;
                    } else if (str.equals("public:8,1")) {
                        r1 = 2;
                    }
                    Log.v(TAG, String.format("%s mounted!", this.mDeviceInfos.get(Integer.valueOf(r1)).name));
                    if (this.mDeviceInfos.get(Integer.valueOf(r1)).isInserted() && !this.mDeviceInfos.get(Integer.valueOf(r1)).isMounted()) {
                        this.mDeviceInfos.get(Integer.valueOf(r1)).mountedPaths.add(str2);
                        this.mDeviceInfos.get(Integer.valueOf(r1)).uuid = uuid;
                        this.mDeviceInfos.get(Integer.valueOf(r1)).connectionState = 2;
                        if (z) {
                            emitUsbMounted(r1, this.mDeviceInfos.get(Integer.valueOf(r1)).mountedPaths);
                        }
                    }
                }
            }
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void emitUsbInserted(int r6) {
        Log.v(TAG, "emitUsbInserted usbtype = " + this.mDeviceInfos.get(Integer.valueOf(r6)).name);
        synchronized (instance()) {
            Iterator<onConnectionStateListener> it = this.mListeners.iterator();
            Log.v(TAG, "connectionStateListener count = " + this.mListeners.size());
            while (it.hasNext()) {
                onConnectionStateListener next = it.next();
                if (next == null) {
                    it.remove();
                } else {
                    next.onInserted(r6);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void emitUsbRemoved(int r5) {
        Log.v(TAG, "emitUsbRemoved usbtype = " + this.mDeviceInfos.get(Integer.valueOf(r5)).name);
        synchronized (instance()) {
            Iterator<onConnectionStateListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                onConnectionStateListener next = it.next();
                if (next == null) {
                    it.remove();
                } else {
                    next.onRemoved(r5);
                }
            }
        }
    }

    private void emitUsbMounted(int r5, List<String> list) {
        Log.v(TAG, "emitUsbMounted usbtype = " + this.mDeviceInfos.get(Integer.valueOf(r5)).name);
        Log.v(TAG, "emitUsbMounted mountPath = " + list);
        synchronized (instance()) {
            Iterator<onConnectionStateListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                onConnectionStateListener next = it.next();
                if (next == null) {
                    it.remove();
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(list);
                    next.onMounted(r5, arrayList);
                }
            }
        }
    }
}
