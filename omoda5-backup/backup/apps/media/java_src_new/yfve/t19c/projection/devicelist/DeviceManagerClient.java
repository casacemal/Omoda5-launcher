package com.yfve.t19c.projection.devicelist;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.yfve.t19c.projection.devicelist.DeviceListManager;
import com.yfve.t19c.projection.devicelist.OnConnectListener;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DeviceManagerClient {
    private static final String TAG = "DeviceManagerClient";
    private static String packageName;
    private DeviceListManager binder;
    private final ServiceConnection connection;
    private final IBinder.DeathRecipient deathRecipient;
    private OnConnectListener mOnConnectListener;
    private final List<OnDeviceListListener> mOnDeviceListListeners;

    @Deprecated
    public DeviceManagerClient(OnConnectListener onConnectListener) {
        this.mOnDeviceListListeners = new ArrayList();
        this.mOnConnectListener = new OnConnectListener.Stub() { // from class: com.yfve.t19c.projection.devicelist.DeviceManagerClient.1
            @Override // com.yfve.t19c.projection.devicelist.OnConnectListener
            public void onDeviceUpdate(Device device) {
                for (OnDeviceListListener onDeviceListListener : DeviceManagerClient.this.mOnDeviceListListeners) {
                    if (onDeviceListListener != null) {
                        onDeviceListListener.onDeviceUpdate(device);
                    } else {
                        Log.d(DeviceManagerClient.TAG, "onDeviceUpdate: listener is null");
                    }
                }
            }

            @Override // com.yfve.t19c.projection.devicelist.OnConnectListener
            public void onNotification(int r8, String str, String str2, String str3, int r12) {
                for (OnDeviceListListener onDeviceListListener : DeviceManagerClient.this.mOnDeviceListListeners) {
                    if (onDeviceListListener != null) {
                        onDeviceListListener.onNotification(r8, str, str2, str3, r12);
                    } else {
                        Log.d(DeviceManagerClient.TAG, "onNotification: listener is null");
                    }
                }
            }

            @Override // com.yfve.t19c.projection.devicelist.OnConnectListener
            public void onRequestBluetoothPair(String str) {
                for (OnDeviceListListener onDeviceListListener : DeviceManagerClient.this.mOnDeviceListListeners) {
                    if (onDeviceListListener != null) {
                        onDeviceListListener.onRequestBluetoothPair(str);
                    } else {
                        Log.d(DeviceManagerClient.TAG, "onRequestBluetoothPair: listener is null");
                    }
                }
            }

            @Override // com.yfve.t19c.projection.devicelist.OnConnectListener
            public void onSessionStateUpdate(String str, String str2, int r5, String str3) {
                for (OnDeviceListListener onDeviceListListener : DeviceManagerClient.this.mOnDeviceListListeners) {
                    if (onDeviceListListener != null) {
                        onDeviceListListener.onSessionStateUpdate(str, str2, r5, str3);
                    } else {
                        Log.d(DeviceManagerClient.TAG, "onSessionStateUpdate: listener is null");
                    }
                }
            }
        };
        this.deathRecipient = new IBinder.DeathRecipient() { // from class: com.yfve.t19c.projection.devicelist.DeviceManagerClient.2
            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                Log.e(DeviceManagerClient.TAG, "binderDied() called    " + DeviceManagerClient.packageName);
                if (DeviceManagerClient.this.binder != null) {
                    DeviceManagerClient.this.binder.asBinder().unlinkToDeath(this, 0);
                    DeviceManagerClient.this.binder = null;
                }
            }
        };
        this.connection = new ServiceConnection() { // from class: com.yfve.t19c.projection.devicelist.DeviceManagerClient.3
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws RemoteException {
                Log.d(DeviceManagerClient.TAG, "onServiceConnected() called with: name = [" + componentName + "]    " + DeviceManagerClient.packageName);
                DeviceManagerClient.this.binder = DeviceListManager.Stub.asInterface(iBinder);
                try {
                    iBinder.linkToDeath(DeviceManagerClient.this.deathRecipient, 0);
                    if (DeviceManagerClient.this.mOnConnectListener == null || !DeviceManagerClient.this.binderNotNull()) {
                        return;
                    }
                    DeviceManagerClient.this.binder.registerListener(DeviceManagerClient.this.mOnConnectListener);
                } catch (RemoteException e) {
                    Log.e(DeviceManagerClient.TAG, e.toString());
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.e(DeviceManagerClient.TAG, "onServiceDisconnected() called with: name = [" + componentName + "]    " + DeviceManagerClient.packageName);
                if (DeviceManagerClient.this.mOnConnectListener == null || !DeviceManagerClient.this.binderNotNull()) {
                    return;
                }
                try {
                    DeviceManagerClient.this.binder.unregisterListener(DeviceManagerClient.this.mOnConnectListener);
                } catch (RemoteException e) {
                    Log.e(DeviceManagerClient.TAG, e.toString());
                }
            }
        };
        this.mOnConnectListener = onConnectListener;
    }

    public DeviceManagerClient() {
        this.mOnDeviceListListeners = new ArrayList();
        this.mOnConnectListener = new OnConnectListener.Stub() { // from class: com.yfve.t19c.projection.devicelist.DeviceManagerClient.1
            @Override // com.yfve.t19c.projection.devicelist.OnConnectListener
            public void onDeviceUpdate(Device device) {
                for (OnDeviceListListener onDeviceListListener : DeviceManagerClient.this.mOnDeviceListListeners) {
                    if (onDeviceListListener != null) {
                        onDeviceListListener.onDeviceUpdate(device);
                    } else {
                        Log.d(DeviceManagerClient.TAG, "onDeviceUpdate: listener is null");
                    }
                }
            }

            @Override // com.yfve.t19c.projection.devicelist.OnConnectListener
            public void onNotification(int r8, String str, String str2, String str3, int r12) {
                for (OnDeviceListListener onDeviceListListener : DeviceManagerClient.this.mOnDeviceListListeners) {
                    if (onDeviceListListener != null) {
                        onDeviceListListener.onNotification(r8, str, str2, str3, r12);
                    } else {
                        Log.d(DeviceManagerClient.TAG, "onNotification: listener is null");
                    }
                }
            }

            @Override // com.yfve.t19c.projection.devicelist.OnConnectListener
            public void onRequestBluetoothPair(String str) {
                for (OnDeviceListListener onDeviceListListener : DeviceManagerClient.this.mOnDeviceListListeners) {
                    if (onDeviceListListener != null) {
                        onDeviceListListener.onRequestBluetoothPair(str);
                    } else {
                        Log.d(DeviceManagerClient.TAG, "onRequestBluetoothPair: listener is null");
                    }
                }
            }

            @Override // com.yfve.t19c.projection.devicelist.OnConnectListener
            public void onSessionStateUpdate(String str, String str2, int r5, String str3) {
                for (OnDeviceListListener onDeviceListListener : DeviceManagerClient.this.mOnDeviceListListeners) {
                    if (onDeviceListListener != null) {
                        onDeviceListListener.onSessionStateUpdate(str, str2, r5, str3);
                    } else {
                        Log.d(DeviceManagerClient.TAG, "onSessionStateUpdate: listener is null");
                    }
                }
            }
        };
        this.deathRecipient = new IBinder.DeathRecipient() { // from class: com.yfve.t19c.projection.devicelist.DeviceManagerClient.2
            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                Log.e(DeviceManagerClient.TAG, "binderDied() called    " + DeviceManagerClient.packageName);
                if (DeviceManagerClient.this.binder != null) {
                    DeviceManagerClient.this.binder.asBinder().unlinkToDeath(this, 0);
                    DeviceManagerClient.this.binder = null;
                }
            }
        };
        this.connection = new ServiceConnection() { // from class: com.yfve.t19c.projection.devicelist.DeviceManagerClient.3
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws RemoteException {
                Log.d(DeviceManagerClient.TAG, "onServiceConnected() called with: name = [" + componentName + "]    " + DeviceManagerClient.packageName);
                DeviceManagerClient.this.binder = DeviceListManager.Stub.asInterface(iBinder);
                try {
                    iBinder.linkToDeath(DeviceManagerClient.this.deathRecipient, 0);
                    if (DeviceManagerClient.this.mOnConnectListener == null || !DeviceManagerClient.this.binderNotNull()) {
                        return;
                    }
                    DeviceManagerClient.this.binder.registerListener(DeviceManagerClient.this.mOnConnectListener);
                } catch (RemoteException e) {
                    Log.e(DeviceManagerClient.TAG, e.toString());
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.e(DeviceManagerClient.TAG, "onServiceDisconnected() called with: name = [" + componentName + "]    " + DeviceManagerClient.packageName);
                if (DeviceManagerClient.this.mOnConnectListener == null || !DeviceManagerClient.this.binderNotNull()) {
                    return;
                }
                try {
                    DeviceManagerClient.this.binder.unregisterListener(DeviceManagerClient.this.mOnConnectListener);
                } catch (RemoteException e) {
                    Log.e(DeviceManagerClient.TAG, e.toString());
                }
            }
        };
    }

    public void registerListener(OnDeviceListListener onDeviceListListener) {
        Log.d(TAG, "registerListener() called    " + packageName);
        Log.d(TAG, "registerListener: " + packageName);
        if (onDeviceListListener != null) {
            this.mOnDeviceListListeners.add(onDeviceListListener);
        }
    }

    public void unregisterListener(OnDeviceListListener onDeviceListListener) {
        Log.d(TAG, "unregisterListener called    " + packageName);
        if (onDeviceListListener != null) {
            this.mOnDeviceListListeners.remove(onDeviceListListener);
        }
    }

    public void connect(Context context) {
        packageName = context.getApplicationInfo().packageName;
        Log.d(TAG, "connect() called    " + packageName);
        Intent intent = new Intent();
        intent.setPackage("com.yfve.t19c.projection.devicemanager");
        intent.setAction("com.yfve.t19c.projection.devicemanager.list");
        context.bindService(intent, this.connection, 1);
    }

    public void disConnect(Context context) {
        Log.d(TAG, "disConnect() called    " + packageName);
        context.unbindService(this.connection);
    }

    public void startSession(int r3, String str, String str2) {
        Log.d(TAG, "startSession() called with: connectType = [" + r3 + "], serial = [" + str + "], mac = [" + str2 + "]    " + packageName);
        try {
            if (binderNotNull()) {
                this.binder.startSession(str, str2, r3);
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        }
    }

    public List<Device> getList() {
        Log.d(TAG, "getList() called    " + packageName);
        try {
            if (binderNotNull()) {
                return this.binder.getAliveDevices();
            }
            return null;
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public List<Device> getHistoryDevices() {
        Log.d(TAG, "getHistoryDevices() called    " + packageName);
        try {
            if (binderNotNull()) {
                return this.binder.getHistoryDevices();
            }
            return null;
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public void onBluetoothPairResult(String str, int r4) {
        Log.d(TAG, "onBluetoothPairResult() called with: mac = [" + str + "], result = [" + r4 + "]    " + packageName);
        try {
            if (binderNotNull()) {
                this.binder.onBluetoothPairResult(str, r4);
            }
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean binderNotNull() {
        if (this.binder != null) {
            return true;
        }
        Log.e(TAG, "binder is null");
        return false;
    }
}
