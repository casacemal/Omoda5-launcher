package com.chery.device;

import android.content.Context;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.yfve.t19c.projection.devicelist.Device;
import com.yfve.t19c.projection.devicelist.DeviceManagerClient;
import com.yfve.t19c.projection.devicelist.OnDeviceListListener;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DeviceModel {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_COMMON, DeviceModel.class);
    private DeviceConnectListener mDeviceListener;
    private DeviceManagerClient mDeviceMangerClient;

    public static final class ConnectType {
        public static final int AA_USB = 1;
        public static final int AA_WIRELESS = 2;
        public static final int CP_USB = 3;
        public static final int CP_WIRELESS = 4;
    }

    public static final class ConnectionState {
        public static final int BUSY = -2;
        public static final int CONNECTED = 0;
        public static final int CONNECTING = -1;
        public static final int DISCONNECTED = 1;
    }

    public interface DeviceConnectListener {
        void onDeviceUpdate(Device device);

        void onRequestBluetoothPair(String str);

        void onSessionStateUpdate(String str, String str2, int r3, String str3);
    }

    public DeviceModel(Context context) {
        DeviceManagerClient deviceManagerClient = new DeviceManagerClient();
        this.mDeviceMangerClient = deviceManagerClient;
        try {
            deviceManagerClient.connect(context);
            this.mDeviceMangerClient.registerListener(new ProxyDeviceListener());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void registerListener(DeviceConnectListener deviceConnectListener) {
        this.mDeviceListener = deviceConnectListener;
    }

    public void unRegisterListener() {
        this.mDeviceListener = null;
    }

    public List<Device> getList() {
        PFLog.m29i(TAG, "getList");
        ArrayList arrayList = new ArrayList();
        try {
            return this.mDeviceMangerClient != null ? this.mDeviceMangerClient.getList() : arrayList;
        } catch (Exception e) {
            e.printStackTrace();
            return arrayList;
        }
    }

    public List<Device> getHistoryDevices() {
        PFLog.m29i(TAG, "getHistoryDevices");
        ArrayList arrayList = new ArrayList();
        try {
            return this.mDeviceMangerClient != null ? this.mDeviceMangerClient.getHistoryDevices() : arrayList;
        } catch (Exception e) {
            e.printStackTrace();
            return arrayList;
        }
    }

    public void startSession(int r4, String str, String str2) {
        PFLog.m29i(TAG, "startSession type:" + r4 + ",serialNumber:" + str + ",btMac:" + str2);
        try {
            if (this.mDeviceMangerClient != null) {
                this.mDeviceMangerClient.startSession(r4, str, str2);
            } else {
                PFLog.m27e(TAG, "startSession: mDeviceMangerClient == null");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onBluetoothPairResult(String str, int r5) {
        PFLog.m29i(TAG, "onBluetoothPairResult mac: " + str + ",result: " + r5);
        try {
            if (this.mDeviceMangerClient != null) {
                this.mDeviceMangerClient.onBluetoothPairResult(str, r5);
            } else {
                PFLog.m27e(TAG, "onBluetoothPairResult: mDeviceMangerClient == null");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ondeviceUpdate(Device device) {
        PFLog.m29i(TAG, "ondeviceUpdate: " + device.toString());
        DeviceConnectListener deviceConnectListener = this.mDeviceListener;
        if (deviceConnectListener != null) {
            deviceConnectListener.onDeviceUpdate(device);
        }
    }

    private class ProxyDeviceListener extends OnDeviceListListener {
        private ProxyDeviceListener() {
        }

        @Override // com.yfve.t19c.projection.devicelist.OnDeviceListListener
        public void onDeviceUpdate(Device device) {
            super.onDeviceUpdate(device);
            if (device != null) {
                PFLog.m29i(DeviceModel.TAG, "Device update: " + device.toString());
                DeviceModel.this.ondeviceUpdate(device);
            }
        }

        @Override // com.yfve.t19c.projection.devicelist.OnDeviceListListener
        public void onNotification(int r1, String str, String str2, String str3, int r5) {
            super.onNotification(r1, str, str2, str3, r5);
        }

        @Override // com.yfve.t19c.projection.devicelist.OnDeviceListListener
        public void onRequestBluetoothPair(String str) {
            super.onRequestBluetoothPair(str);
            PFLog.m29i(DeviceModel.TAG, "onRequestBluetoothPair mac: " + str);
            if (DeviceModel.this.mDeviceListener != null) {
                DeviceModel.this.mDeviceListener.onRequestBluetoothPair(str);
            }
        }

        @Override // com.yfve.t19c.projection.devicelist.OnDeviceListListener
        public void onSessionStateUpdate(String str, String str2, int r6, String str3) {
            super.onSessionStateUpdate(str, str2, r6, str3);
            PFLog.m29i(DeviceModel.TAG, "onSessionStateUpdate mac: " + str2);
            if (DeviceModel.this.mDeviceListener != null) {
                DeviceModel.this.mDeviceListener.onSessionStateUpdate(str, str2, r6, str3);
            }
        }
    }
}
