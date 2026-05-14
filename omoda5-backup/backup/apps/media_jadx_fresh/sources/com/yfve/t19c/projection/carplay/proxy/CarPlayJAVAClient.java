package com.yfve.t19c.projection.carplay.proxy;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.media.session.MediaSession;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.chery.common.PackageConstants;
import com.yfve.t19c.projection.carplay.proxy.ICPServiceInterface;
import com.yfve.t19c.projection.carplay.proxy.ICPServiceListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CarPlayJAVAClient {
    public static final String TAG = CarPlayJAVAClient.class.getSimpleName();
    private ICPServiceInterface mBinderClient = null;
    private List<CarPlayListener> mCallbackList = new ArrayList();
    private ICPServiceListener mCarPlayServiceListenerStub = new ICPServiceListener.Stub() { // from class: com.yfve.t19c.projection.carplay.proxy.CarPlayJAVAClient.1
        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onUpdateMediaToken(MediaSession.Token token) throws RemoteException {
            Log.i(CarPlayJAVAClient.TAG, "onUpdateMediaToken");
            Iterator it = CarPlayJAVAClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((CarPlayListener) it.next()).onUpdateMediaToken(token);
                } catch (Exception e) {
                    Log.e(CarPlayJAVAClient.TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onUpdateVideoFocus(boolean z) throws RemoteException {
            Log.i(CarPlayJAVAClient.TAG, "onUpdateVideoFocus");
            Iterator it = CarPlayJAVAClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((CarPlayListener) it.next()).onSetVideoFocus(z);
                } catch (Exception e) {
                    Log.e(CarPlayJAVAClient.TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onUpdateCallInfo(int r8, String str, String str2, long j) throws RemoteException {
            Log.i(CarPlayJAVAClient.TAG, "onUpdateCallInfo");
            Iterator it = CarPlayJAVAClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((CarPlayListener) it.next()).onUpdateCallInfo(r8, str, str2, j);
                } catch (Exception e) {
                    Log.e(CarPlayJAVAClient.TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onUpdateNaviInfo(String str, int r9, int r10, int r11, String str2) throws RemoteException {
            Log.i(CarPlayJAVAClient.TAG, "onUpdateNaviInfo");
            Iterator it = CarPlayJAVAClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((CarPlayListener) it.next()).onUpdateNaviInfo(str, r9, r10, r11, str2);
                } catch (Exception e) {
                    Log.e(CarPlayJAVAClient.TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onUpdateSiriSts(boolean z) {
            Log.i(CarPlayJAVAClient.TAG, "onUpdateSiriSts:sts=" + z);
            for (CarPlayListener carPlayListener : CarPlayJAVAClient.this.mCallbackList) {
                Log.i(CarPlayJAVAClient.TAG, "onUpdateSiriSts:Listener=" + carPlayListener);
                try {
                    carPlayListener.onUpdateSiriSts(z);
                } catch (Exception e) {
                    Log.e(CarPlayJAVAClient.TAG, e.toString());
                }
            }
            Log.i(CarPlayJAVAClient.TAG, "onUpdateSiriSts:end");
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onNotifyDisableBt(String str) {
            Log.i(CarPlayJAVAClient.TAG, "onNotifyDisableBt:btMacAddress=" + str);
            Iterator it = CarPlayJAVAClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((CarPlayListener) it.next()).onNotifyDisableBt(str);
                } catch (Exception e) {
                    Log.e(CarPlayJAVAClient.TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onNotifyVideoChange(boolean z) {
            Log.i(CarPlayJAVAClient.TAG, "onNotifyVideoChange:isStart=" + z);
            Iterator it = CarPlayJAVAClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((CarPlayListener) it.next()).onNotifyVideoChange(z);
                } catch (Exception e) {
                    Log.e(CarPlayJAVAClient.TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onNotifyWirelessCPEnalbe(boolean z) {
            Log.i(CarPlayJAVAClient.TAG, "onNotifyWirelessCPEnalbe:enable=" + z);
            Iterator it = CarPlayJAVAClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((CarPlayListener) it.next()).onNotifyWirelessCPEnalbe(z);
                } catch (Exception e) {
                    Log.e(CarPlayJAVAClient.TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onNotifyCPReadyToAuth(String str, int r5) {
            Log.i(CarPlayJAVAClient.TAG, "onNotifyCPReadyToAuth:uniqueInfo=" + str);
            Iterator it = CarPlayJAVAClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((CarPlayListener) it.next()).onNotifyCPReadyToAuth(str, r5);
                } catch (Exception e) {
                    Log.e(CarPlayJAVAClient.TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onNotiftIApAuthStatus(int r4, int r5) {
            Log.i(CarPlayJAVAClient.TAG, "onNotiftIApAuthStatus:AuthType=" + r4 + "state=" + r5);
            Iterator it = CarPlayJAVAClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((CarPlayListener) it.next()).onNotiftIApAuthStatus(r4, r5);
                } catch (Exception e) {
                    Log.e(CarPlayJAVAClient.TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onUSBIAP2DeviceStsChanged(boolean z, String str) {
            Log.i(CarPlayJAVAClient.TAG, "onUSBIAP2DeviceStsChanged:isDeviceAttatched=" + z);
            Iterator it = CarPlayJAVAClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((CarPlayListener) it.next()).onUSBIAP2DeviceStsChanged(z, str);
                } catch (Exception e) {
                    Log.e(CarPlayJAVAClient.TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.carplay.proxy.ICPServiceListener
        public void onNotifyWifi(int r4, boolean z, String str, String str2) {
            Log.i(CarPlayJAVAClient.TAG, "onNotifyWifi:connectType=" + r4 + ",uniqueInfo=" + str);
            Iterator it = CarPlayJAVAClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((CarPlayListener) it.next()).onNotifyWifi(r4, z, str, str2);
                } catch (Exception e) {
                    Log.e(CarPlayJAVAClient.TAG, e.toString());
                }
            }
        }
    };
    private DevConnection connection = new DevConnection();

    public void initialise(Context context) {
        Intent intent = new Intent();
        intent.setAction("t19c.intent.action.CARPLAY");
        intent.setPackage(PackageConstants.CarPlay.PACKAGE_NAME_SOURCE);
        try {
            Log.d(TAG, "bind carplay java service");
            context.bindService(intent, this.connection, 1);
        } catch (SecurityException e) {
            Log.d(TAG, "SecurityException:" + e);
        }
    }

    public void uninitialise(Context context) {
        context.unbindService(this.connection);
    }

    public void registerListener(CarPlayListener carPlayListener) {
        if (carPlayListener == null) {
            return;
        }
        Log.i(TAG, "registerListener::listener:" + carPlayListener);
        if (this.mCallbackList.contains(carPlayListener)) {
            return;
        }
        this.mCallbackList.add(carPlayListener);
    }

    public void unregisterListener(CarPlayListener carPlayListener) {
        ICPServiceInterface iCPServiceInterface = this.mBinderClient;
        if (iCPServiceInterface != null) {
            try {
                iCPServiceInterface.unregisteListener(this.mCarPlayServiceListenerStub);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        if (this.mCallbackList.contains(carPlayListener)) {
            this.mCallbackList.remove(carPlayListener);
        }
    }

    public void startCarPlaySession(String str, boolean z) {
        Log.d(TAG, "startCarPlaySession");
        ICPServiceInterface iCPServiceInterface = this.mBinderClient;
        if (iCPServiceInterface != null) {
            try {
                iCPServiceInterface.startCarPlaySession(str, z);
            } catch (RemoteException e) {
                Log.d(TAG, "RemoteException:" + e);
            }
        }
    }

    public void exitActivity() {
        Log.d(TAG, "exitActivity");
        ICPServiceInterface iCPServiceInterface = this.mBinderClient;
        if (iCPServiceInterface != null) {
            try {
                iCPServiceInterface.exitActivity();
            } catch (RemoteException e) {
                Log.d(TAG, "RemoteException:" + e);
            }
        }
    }

    public MediaSession.Token getMediaToken() {
        Log.d(TAG, "getMediaToken");
        ICPServiceInterface iCPServiceInterface = this.mBinderClient;
        if (iCPServiceInterface != null) {
            try {
                return iCPServiceInterface.getMediaToken();
            } catch (RemoteException e) {
                Log.d(TAG, "RemoteException:" + e);
            }
        }
        return null;
    }

    public boolean getCarPlayVideoState() {
        Log.d(TAG, "getCarPlayVideoState");
        ICPServiceInterface iCPServiceInterface = this.mBinderClient;
        if (iCPServiceInterface != null) {
            try {
                return iCPServiceInterface.getCarPlayVideoState();
            } catch (RemoteException e) {
                Log.d(TAG, "RemoteException:" + e);
            }
        }
        return false;
    }

    public void setCarPlayConnect() {
        Log.d(TAG, "setCarPlayConnect");
        ICPServiceInterface iCPServiceInterface = this.mBinderClient;
        if (iCPServiceInterface != null) {
            try {
                iCPServiceInterface.setCarPlayConnect();
            } catch (RemoteException e) {
                Log.d(TAG, "RemoteException:" + e);
            }
        }
    }

    public void roleSwitchComplete(String str) {
        Log.d(TAG, "roleSwitchComplete:serialNumber=" + str);
        ICPServiceInterface iCPServiceInterface = this.mBinderClient;
        if (iCPServiceInterface != null) {
            try {
                iCPServiceInterface.roleSwitchComplete(str);
            } catch (RemoteException e) {
                Log.d(TAG, "RemoteException:" + e);
            }
        }
    }

    public void requestNativeUI() {
        Log.d(TAG, "requestNativeUI");
        ICPServiceInterface iCPServiceInterface = this.mBinderClient;
        if (iCPServiceInterface != null) {
            try {
                iCPServiceInterface.requestVideoResource();
            } catch (RemoteException e) {
                Log.d(TAG, "RemoteException:" + e);
            }
        }
    }

    public void requestCPMedia() {
        Log.d(TAG, "requestCPMedia");
        ICPServiceInterface iCPServiceInterface = this.mBinderClient;
        if (iCPServiceInterface != null) {
            try {
                iCPServiceInterface.requestCPMedia();
            } catch (RemoteException e) {
                Log.d(TAG, "RemoteException:" + e);
            }
        }
    }

    public void requestResource(boolean z, boolean z2, boolean z3, int r7) {
        Log.d(TAG, "requestResource:isResourceVideo=" + z);
        Log.d(TAG, "requestResource:isResourceBorrow=" + z2);
        Log.d(TAG, "requestResource:isBorrowStart=" + z3);
        ICPServiceInterface iCPServiceInterface = this.mBinderClient;
        if (iCPServiceInterface != null) {
            try {
                iCPServiceInterface.requestResource(z, z2, z3, r7);
            } catch (RemoteException e) {
                Log.d(TAG, "RemoteException:" + e);
            }
        }
    }

    private final class DevConnection implements ServiceConnection {
        private DevConnection() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(CarPlayJAVAClient.TAG, "onServiceConnected::component class name: " + componentName.getClassName());
            CarPlayJAVAClient.this.mBinderClient = ICPServiceInterface.Stub.asInterface(iBinder);
            try {
                CarPlayJAVAClient.this.mBinderClient.registeListener(CarPlayJAVAClient.this.mCarPlayServiceListenerStub);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            Iterator it = CarPlayJAVAClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((CarPlayListener) it.next()).onUpdateClientSts(true);
                } catch (Exception e2) {
                    Log.e(CarPlayJAVAClient.TAG, e2.toString());
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(CarPlayJAVAClient.TAG, "onServiceDisconnected::component class name: " + componentName.getClassName());
            CarPlayJAVAClient.this.mBinderClient = null;
            Iterator it = CarPlayJAVAClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((CarPlayListener) it.next()).onUpdateClientSts(false);
                } catch (Exception e) {
                    Log.e(CarPlayJAVAClient.TAG, e.toString());
                }
            }
        }
    }

    public boolean isCPStarted() {
        Log.d(TAG, "isCPStarted");
        ICPServiceInterface iCPServiceInterface = this.mBinderClient;
        if (iCPServiceInterface != null) {
            try {
                return iCPServiceInterface.isCPStarted();
            } catch (RemoteException e) {
                Log.d(TAG, "RemoteException:" + e);
            }
        }
        return false;
    }

    public String getSerialNumber() {
        Log.d(TAG, "getSerialNumber");
        ICPServiceInterface iCPServiceInterface = this.mBinderClient;
        if (iCPServiceInterface != null) {
            try {
                return iCPServiceInterface.getSerialNumber();
            } catch (RemoteException e) {
                Log.d(TAG, "RemoteException:" + e);
            }
        }
        return "";
    }
}
