package com.chery.setting;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.provider.Settings;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class BtSettingManager {
    public static final String ACTION_SHOW_DIALOG = "com.chery.settings.view.settings.showdialog";
    public static final String Content_BLUETOOTH_ADDRESS = "com.chery.settings.BluetoothAddress";
    public static final String EXTRA_HINT = "com.chery.settings.view.settings.dialoghint";
    private static final String TAG = CarLog.concatTag(CarLog.TAG_BT_SETTING, BtSettingManager.class);
    private static volatile BtSettingManager sInstance = null;

    public static BtSettingManager getInstance() {
        if (sInstance == null) {
            synchronized (BtSettingManager.class) {
                if (sInstance == null) {
                    sInstance = new BtSettingManager();
                }
            }
        }
        return sInstance;
    }

    public static class BtDeviceInfo {
        public BluetoothDevice device;
        public int hfpState = 0;
        public int a2dpState = 0;
        public int bondState = 10;
        public boolean connectCarPlay = false;
        public boolean isCPFirstConnect = true;
        public boolean isWirelessCPEnable = false;
        public String serial = "";
        public boolean isSupportWirelessCP = false;
        public boolean CPConnected = false;
        public boolean isSupportWirelessAA = false;
        public boolean AAConnected = false;

        public BtDeviceInfo() {
        }

        public BtDeviceInfo(BluetoothDevice bluetoothDevice) {
            this.device = bluetoothDevice;
        }

        public BtDeviceInfo deepCopy() {
            BtDeviceInfo btDeviceInfo = new BtDeviceInfo();
            btDeviceInfo.device = this.device;
            btDeviceInfo.hfpState = this.hfpState;
            btDeviceInfo.a2dpState = this.a2dpState;
            btDeviceInfo.bondState = this.bondState;
            btDeviceInfo.connectCarPlay = this.connectCarPlay;
            btDeviceInfo.isCPFirstConnect = this.isCPFirstConnect;
            btDeviceInfo.isWirelessCPEnable = this.isWirelessCPEnable;
            btDeviceInfo.serial = this.serial;
            btDeviceInfo.isSupportWirelessCP = this.isSupportWirelessCP;
            btDeviceInfo.CPConnected = this.CPConnected;
            btDeviceInfo.isSupportWirelessAA = this.isSupportWirelessAA;
            btDeviceInfo.AAConnected = this.AAConnected;
            return btDeviceInfo;
        }

        public String toString() {
            String str;
            if (this.device != null) {
                str = "[" + this.device.getAddress() + "] " + this.device.getName();
            } else {
                str = "Null";
            }
            return str + ", hfpState = " + this.hfpState + ", a2dpState = " + this.a2dpState + ", bondState = " + this.bondState + "\n   connectCarPlay = " + this.connectCarPlay + ", isCPFirstConnect = " + this.isCPFirstConnect + ", isWirelessCPEnable = " + this.isWirelessCPEnable + ", serial: " + this.serial + "\n   isSupportWirelessCP = " + this.isSupportWirelessCP + ", CPConnection = " + this.CPConnected + "\n   isSupportWirelessAA = " + this.isSupportWirelessAA + ", AAConnection = " + this.AAConnected;
        }
    }

    public ArrayList<BtDeviceInfo> getPairedDeviceInfo(Context context) {
        ArrayList arrayList = new ArrayList();
        try {
            String string = Settings.Global.getString(context.getContentResolver(), Content_BLUETOOTH_ADDRESS);
            if (string != null && !string.isEmpty()) {
                arrayList.addAll((List) new Gson().fromJson(string, new TypeToken<List<BtDeviceInfo>>() { // from class: com.chery.setting.BtSettingManager.1
                }.getType()));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        ArrayList arrayList2 = new ArrayList();
        Set<BluetoothDevice> bondedDevices = BluetoothAdapter.getDefaultAdapter().getBondedDevices();
        if (bondedDevices != null) {
            arrayList2.addAll(bondedDevices);
        }
        PFLog.m29i(TAG, "[readSavedBtList] adapterListSize = " + arrayList2.size() + ", localListSize = " + arrayList.size());
        ArrayList<BtDeviceInfo> arrayList3 = new ArrayList<>();
        if (arrayList.isEmpty()) {
            if (!arrayList2.isEmpty()) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    BluetoothDevice bluetoothDevice = (BluetoothDevice) it.next();
                    PFLog.m29i(TAG, "localList empty, adapterDevice: " + bluetoothDevice.toString());
                    arrayList3.add(new BtDeviceInfo(bluetoothDevice));
                }
            }
        } else {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                BtDeviceInfo btDeviceInfo = (BtDeviceInfo) it2.next();
                Iterator it3 = arrayList2.iterator();
                while (true) {
                    if (it3.hasNext()) {
                        BluetoothDevice bluetoothDevice2 = (BluetoothDevice) it3.next();
                        if (btDeviceInfo.device.getAddress().equals(bluetoothDevice2.getAddress())) {
                            PFLog.m29i(TAG, "matching device: " + bluetoothDevice2.toString());
                            arrayList3.add(btDeviceInfo);
                            it3.remove();
                            break;
                        }
                    }
                }
            }
            if (!arrayList2.isEmpty()) {
                Iterator it4 = arrayList2.iterator();
                while (it4.hasNext()) {
                    BluetoothDevice bluetoothDevice3 = (BluetoothDevice) it4.next();
                    PFLog.m29i(TAG, "unmatching device: " + bluetoothDevice3.toString());
                    arrayList3.add(new BtDeviceInfo(bluetoothDevice3));
                }
            }
        }
        return arrayList3;
    }

    public static String transferBtMacToHex(String str) throws NumberFormatException {
        PFLog.m29i(TAG, "transferBtMacToHex start: " + str);
        String str2 = "";
        while (true) {
            if (str == null || str.isEmpty()) {
                break;
            }
            int r3 = str.indexOf(":");
            String str3 = "0";
            if (r3 > 0) {
                int r6 = Integer.parseInt(str.substring(0, r3), 10);
                if (r6 >= 16) {
                    str3 = "";
                }
                str2 = str2 + ((str3 + Integer.toHexString(r6).toUpperCase()) + ":");
                str = str.substring(r3 + 1);
            } else {
                int r8 = Integer.parseInt(str, 10);
                str2 = str2 + ((r8 < 16 ? "0" : "") + Integer.toHexString(r8).toUpperCase());
            }
        }
        PFLog.m29i(TAG, "transferBtMacToHex end: " + str2);
        return str2;
    }

    public static BluetoothDevice getBluetoothDevice(String str) {
        if (BluetoothAdapter.checkBluetoothAddress(str)) {
            return BluetoothAdapter.getDefaultAdapter().getRemoteDevice(str);
        }
        PFLog.m33w(TAG, "getRemoteDevice failed: [" + str + "] is not a valid Bluetooth address");
        return null;
    }

    public static String printDevice(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null) {
            return "Null";
        }
        return "[" + bluetoothDevice.getAddress() + "] " + bluetoothDevice.getName();
    }
}
