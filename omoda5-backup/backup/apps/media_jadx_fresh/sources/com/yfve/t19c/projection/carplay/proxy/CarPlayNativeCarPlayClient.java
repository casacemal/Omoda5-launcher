package com.yfve.t19c.projection.carplay.proxy;

import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import android.view.Surface;
import com.yfve.t19c.projection.carplay.service.cpclient.ICarPlayComm;
import com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CarPlayNativeCarPlayClient implements IBinder.DeathRecipient {
    private static final int BIND_FAIL_RETRY_CNT = 10;
    private static final int BIND_FAIL_RETRY_INTERVAL = 1000;
    private static final int CARPLAY_COMMAND_DISABLE_BLUETOOTH = 2;
    public static final String DESCRIPTOR = "CarPlayCommService";
    public static final String TAG = CarPlayNativeCarPlayClient.class.getSimpleName();
    private String mDeviceName;
    private boolean mHasFirstModeChange = false;
    private ICarPlayComm mCarPlayClient = null;
    private boolean isCPConnected = false;
    private List<CarPlayListener> mCallbackList = new ArrayList();
    private ICarPlaySessionListener mCarPlaySessionListenerStub = new ICarPlaySessionListener.Stub() { // from class: com.yfve.t19c.projection.carplay.proxy.CarPlayNativeCarPlayClient.1
        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onControl(int r1, byte[] bArr) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onDuckAudio(int r1, int r2) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onPrepareCpSession(String str, boolean z) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onUnduckAudio(int r1) throws RemoteException {
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onInitialize() throws RemoteException {
            Log.i(CarPlayNativeCarPlayClient.TAG, "onInitialize is called.");
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onFinalize(String str, String str2) throws RemoteException {
            Log.i(CarPlayNativeCarPlayClient.TAG, "onFinalize is called.");
            for (CarPlayListener carPlayListener : CarPlayNativeCarPlayClient.this.mCallbackList) {
                try {
                    Log.i(CarPlayNativeCarPlayClient.TAG, "onFinalize onSessionStsUpdate is called.");
                    carPlayListener.onSessionStsUpdate(1, null, null);
                } catch (Exception e) {
                    Log.e(CarPlayNativeCarPlayClient.TAG, e.toString());
                }
            }
            CarPlayNativeCarPlayClient.this.mHasFirstModeChange = false;
            CarPlayNativeCarPlayClient.this.isCPConnected = false;
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onStarted(String str, String str2) throws RemoteException {
            Log.i(CarPlayNativeCarPlayClient.TAG, "onStarted::btMac is " + str);
            Log.i(CarPlayNativeCarPlayClient.TAG, "onStarted::deviceName is " + str2);
            for (CarPlayListener carPlayListener : CarPlayNativeCarPlayClient.this.mCallbackList) {
                try {
                    Log.i(CarPlayNativeCarPlayClient.TAG, "onStarted onSessionStsUpdate is called.");
                    carPlayListener.onSessionStsUpdate(0, str, str2);
                } catch (Exception e) {
                    Log.e(CarPlayNativeCarPlayClient.TAG, e.toString());
                }
            }
            CarPlayNativeCarPlayClient.this.mDeviceName = str2;
            CarPlayNativeCarPlayClient.this.isCPConnected = true;
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onModesChanged(int r1, int r2, boolean z, boolean z2, int r5) throws RemoteException {
            Log.i(CarPlayNativeCarPlayClient.TAG, "onModesChanged:mDeviceName=" + CarPlayNativeCarPlayClient.this.mDeviceName);
            if (CarPlayNativeCarPlayClient.this.mHasFirstModeChange) {
                return;
            }
            CarPlayNativeCarPlayClient.this.mHasFirstModeChange = true;
            if (r1 == 2) {
                Iterator it = CarPlayNativeCarPlayClient.this.mCallbackList.iterator();
                while (it.hasNext()) {
                    try {
                        ((CarPlayListener) it.next()).onNotifyLauncherPop(1, "iPhone for Apple CarPlay is reconnected", CarPlayNativeCarPlayClient.this.mDeviceName);
                    } catch (Exception e) {
                        Log.e(CarPlayNativeCarPlayClient.TAG, e.toString());
                    }
                }
            }
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onRequestUI(byte[] bArr) throws RemoteException {
            Log.i(CarPlayNativeCarPlayClient.TAG, "onRequestUI is called:" + bArr);
            Iterator it = CarPlayNativeCarPlayClient.this.mCallbackList.iterator();
            while (it.hasNext()) {
                try {
                    ((CarPlayListener) it.next()).onSetVideoFocus(true);
                } catch (Exception e) {
                    Log.e(CarPlayNativeCarPlayClient.TAG, e.toString());
                }
            }
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onSetEnhancedSiriParams(int r1, int r2) throws RemoteException {
            Log.i(CarPlayNativeCarPlayClient.TAG, "onSetEnhancedSiriParams");
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onVideoChange(boolean z) {
            Log.i(CarPlayNativeCarPlayClient.TAG, "onVideoChange:" + z);
        }

        @Override // com.yfve.t19c.projection.carplay.service.cpclient.ICarPlaySessionListener
        public void onSuggestUI(List<String> list) throws RemoteException {
            Log.i(CarPlayNativeCarPlayClient.TAG, "onSuggestUI");
        }
    };

    public CarPlayNativeCarPlayClient() throws InterruptedException, RemoteException {
        connectService();
    }

    public boolean registerListener(CarPlayListener carPlayListener) {
        if (carPlayListener == null) {
            return false;
        }
        Log.i(TAG, "registerListener::listener:" + carPlayListener);
        if (!this.mCallbackList.contains(carPlayListener)) {
            this.mCallbackList.add(carPlayListener);
        }
        return connectService();
    }

    public void unregisterListener(CarPlayListener carPlayListener) {
        ICarPlayComm iCarPlayComm = this.mCarPlayClient;
        if (iCarPlayComm != null) {
            try {
                iCarPlayComm.unregisterCarPlaySessionListener(this.mCarPlaySessionListenerStub);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        if (this.mCallbackList.contains(carPlayListener)) {
            this.mCallbackList.remove(carPlayListener);
        }
    }

    public void touchScreenUpdate(byte b, int r2, int r3) {
        ICarPlayComm iCarPlayComm = this.mCarPlayClient;
        if (iCarPlayComm != null) {
            try {
                iCarPlayComm.touchScreenUpdate(b, r2, r3);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void setSurface(Surface surface) {
        if (this.mCarPlayClient != null) {
            try {
                Log.d(TAG, "setSurface");
                this.mCarPlayClient.setSurface(surface);
                return;
            } catch (RemoteException e) {
                e.printStackTrace();
                return;
            }
        }
        Log.d(TAG, "binder for native carplay is null");
    }

    public void requestUI(String str) throws UnsupportedEncodingException {
        Log.d(TAG, "requestUI called");
        if (this.mCarPlayClient != null) {
            byte[] bytes = new byte[32];
            if (str != null) {
                Log.d(TAG, "input string is " + str);
                try {
                    bytes = str.getBytes("UTF-8");
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            } else {
                Log.d(TAG, "input string is null");
            }
            try {
                Log.d(TAG, "sendUIRequest11111");
                this.mCarPlayClient.sendUIRequest(bytes);
                Log.d(TAG, "sendUIRequest22222");
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    public void startCarPlaySession(String str) {
        ICarPlayComm iCarPlayComm = this.mCarPlayClient;
        if (iCarPlayComm != null) {
            try {
                iCarPlayComm.startCarPlaySession(str, true);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void stopCarPlaySession() {
        ICarPlayComm iCarPlayComm = this.mCarPlayClient;
        if (iCarPlayComm != null) {
            try {
                iCarPlayComm.stopCarPlaySession();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void lunchCarPlayApp(String str) {
        ICarPlayComm iCarPlayComm = this.mCarPlayClient;
        if (iCarPlayComm != null) {
            try {
                iCarPlayComm.lunchCarPlayApp(str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private void getBinderClient() throws InterruptedException, RemoteException {
        IBinder service = null;
        for (int r2 = 0; r2 < 10; r2++) {
            Log.i(TAG, "try to get binder for CarPlayCommService");
            service = ServiceManager.getService(DESCRIPTOR);
            if (service != null) {
                break;
            }
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        if (service == null) {
            Log.i(TAG, "Binder still null");
            return;
        }
        Log.i(TAG, "binded");
        try {
            service.linkToDeath(this, 0);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            Log.i(TAG, e2.toString());
        }
        ICarPlayComm iCarPlayCommAsInterface = ICarPlayComm.Stub.asInterface(service);
        this.mCarPlayClient = iCarPlayCommAsInterface;
        if (iCarPlayCommAsInterface == null) {
            Log.i(TAG, "Service is null");
            return;
        }
        try {
            iCarPlayCommAsInterface.registerCarPlaySessionListener(this.mCarPlaySessionListenerStub);
        } catch (RemoteException e3) {
            Log.e(TAG, "RemoteException:" + e3);
        }
    }

    private boolean connectService() throws InterruptedException, RemoteException {
        Log.i(TAG, "connectService");
        if (this.mCarPlayClient != null) {
            Log.i(TAG, "already binded");
            return true;
        }
        Log.i(TAG, "try to get binder in sub thread");
        getBinderClient();
        return true;
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() throws InterruptedException, RemoteException {
        Log.i(TAG, "binderDied");
        if (this.isCPConnected) {
            for (CarPlayListener carPlayListener : this.mCallbackList) {
                try {
                    Log.i(TAG, "binderDied!!! send onSessionStsUpdate Finalize");
                    carPlayListener.onSessionStsUpdate(1, null, null);
                } catch (Exception e) {
                    Log.e(TAG, e.toString());
                }
            }
            this.isCPConnected = false;
        }
        this.mHasFirstModeChange = false;
        this.mCarPlayClient = null;
        connectService();
    }
}
