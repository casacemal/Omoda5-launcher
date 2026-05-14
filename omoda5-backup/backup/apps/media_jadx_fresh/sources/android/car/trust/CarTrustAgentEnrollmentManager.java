package android.car.trust;

import android.annotation.SystemApi;
import android.bluetooth.BluetoothDevice;
import android.car.CarManagerBase;
import android.car.trust.ICarTrustAgentBleCallback;
import android.car.trust.ICarTrustAgentEnrollment;
import android.car.trust.ICarTrustAgentEnrollmentCallback;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.List;

@SystemApi
/* loaded from: classes.dex */
public final class CarTrustAgentEnrollmentManager implements CarManagerBase {
    public static final int ENROLLMENT_HANDSHAKE_FAILURE = 1;
    public static final int ENROLLMENT_NOT_ALLOWED = 2;
    private static final String KEY_ACTIVE = "active";
    private static final String KEY_HANDLE = "handle";
    private static final int MSG_ENROLL_ADVERTISING_FAILED = 1;
    private static final int MSG_ENROLL_ADVERTISING_STARTED = 0;
    private static final int MSG_ENROLL_AUTH_STRING_AVAILABLE = 5;
    private static final int MSG_ENROLL_DEVICE_CONNECTED = 2;
    private static final int MSG_ENROLL_DEVICE_DISCONNECTED = 3;
    private static final int MSG_ENROLL_HANDSHAKE_FAILURE = 4;
    private static final int MSG_ENROLL_TOKEN_ADDED = 6;
    private static final int MSG_ENROLL_TOKEN_REMOVED = 8;
    private static final int MSG_ENROLL_TOKEN_STATE_CHANGED = 7;
    private static final String TAG = "CarTrustEnrollMgr";
    private CarTrustAgentBleCallback mBleCallback;
    private final Context mContext;
    private CarTrustAgentEnrollmentCallback mEnrollmentCallback;
    private final ICarTrustAgentEnrollment mEnrollmentService;
    private final EventCallbackHandler mEventCallbackHandler;
    private Object mListenerLock = new Object();
    private final ListenerToEnrollmentService mListenerToEnrollmentService = new ListenerToEnrollmentService(this);
    private final ListenerToBleService mListenerToBleService = new ListenerToBleService(this);

    public interface CarTrustAgentBleCallback {
        void onBleEnrollmentDeviceConnected(BluetoothDevice bluetoothDevice);

        void onBleEnrollmentDeviceDisconnected(BluetoothDevice bluetoothDevice);

        void onEnrollmentAdvertisingFailed();

        void onEnrollmentAdvertisingStarted();
    }

    public interface CarTrustAgentEnrollmentCallback {
        void onAuthStringAvailable(BluetoothDevice bluetoothDevice, String str);

        void onEnrollmentHandshakeFailure(BluetoothDevice bluetoothDevice, int r2);

        void onEscrowTokenActiveStateChanged(long j, boolean z);

        void onEscrowTokenAdded(long j);

        void onEscrowTokenRemoved(long j);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TrustedDeviceEnrollmentError {
    }

    public CarTrustAgentEnrollmentManager(IBinder iBinder, Context context, Handler handler) {
        this.mContext = context;
        this.mEnrollmentService = ICarTrustAgentEnrollment.Stub.asInterface(iBinder);
        this.mEventCallbackHandler = new EventCallbackHandler(this, handler.getLooper());
    }

    @Override // android.car.CarManagerBase
    public synchronized void onCarDisconnected() {
    }

    public void startEnrollmentAdvertising() {
        try {
            this.mEnrollmentService.startEnrollmentAdvertising();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void stopEnrollmentAdvertising() {
        try {
            this.mEnrollmentService.stopEnrollmentAdvertising();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void enrollmentHandshakeAccepted(BluetoothDevice bluetoothDevice) {
        try {
            this.mEnrollmentService.enrollmentHandshakeAccepted(bluetoothDevice);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void terminateEnrollmentHandshake() {
        try {
            this.mEnrollmentService.terminateEnrollmentHandshake();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean isEscrowTokenActive(long j, int r3) {
        try {
            return this.mEnrollmentService.isEscrowTokenActive(j, r3);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void removeEscrowToken(long j, int r3) {
        try {
            this.mEnrollmentService.removeEscrowToken(j, r3);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void removeAllTrustedDevices(int r1) {
        try {
            this.mEnrollmentService.removeAllTrustedDevices(r1);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void setTrustedDeviceEnrollmentEnabled(boolean z) {
        try {
            this.mEnrollmentService.setTrustedDeviceEnrollmentEnabled(z);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void setTrustedDeviceUnlockEnabled(boolean z) {
        try {
            this.mEnrollmentService.setTrustedDeviceUnlockEnabled(z);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void setEnrollmentCallback(CarTrustAgentEnrollmentCallback carTrustAgentEnrollmentCallback) {
        if (carTrustAgentEnrollmentCallback == null) {
            unregisterEnrollmentCallback();
        } else {
            registerEnrollmentCallback(carTrustAgentEnrollmentCallback);
        }
    }

    private void registerEnrollmentCallback(CarTrustAgentEnrollmentCallback carTrustAgentEnrollmentCallback) {
        synchronized (this.mListenerLock) {
            if (carTrustAgentEnrollmentCallback != null) {
                if (this.mEnrollmentCallback == null) {
                    try {
                        this.mEnrollmentService.registerEnrollmentCallback(this.mListenerToEnrollmentService);
                        this.mEnrollmentCallback = carTrustAgentEnrollmentCallback;
                    } catch (RemoteException e) {
                        throw e.rethrowFromSystemServer();
                    }
                }
            }
        }
    }

    private void unregisterEnrollmentCallback() {
        synchronized (this.mListenerLock) {
            if (this.mEnrollmentCallback != null) {
                try {
                    this.mEnrollmentService.unregisterEnrollmentCallback(this.mListenerToEnrollmentService);
                    this.mEnrollmentCallback = null;
                } catch (RemoteException e) {
                    throw e.rethrowFromSystemServer();
                }
            }
        }
    }

    public void setBleCallback(CarTrustAgentBleCallback carTrustAgentBleCallback) {
        if (carTrustAgentBleCallback == null) {
            unregisterBleCallback();
        } else {
            registerBleCallback(carTrustAgentBleCallback);
        }
    }

    private void registerBleCallback(CarTrustAgentBleCallback carTrustAgentBleCallback) {
        synchronized (this.mListenerLock) {
            if (carTrustAgentBleCallback != null) {
                if (this.mBleCallback == null) {
                    try {
                        this.mEnrollmentService.registerBleCallback(this.mListenerToBleService);
                        this.mBleCallback = carTrustAgentBleCallback;
                    } catch (RemoteException e) {
                        throw e.rethrowFromSystemServer();
                    }
                }
            }
        }
    }

    private void unregisterBleCallback() {
        synchronized (this.mListenerLock) {
            if (this.mBleCallback != null) {
                try {
                    this.mEnrollmentService.unregisterBleCallback(this.mListenerToBleService);
                    this.mBleCallback = null;
                } catch (RemoteException e) {
                    throw e.rethrowFromSystemServer();
                }
            }
        }
    }

    public List<TrustedDeviceInfo> getEnrolledDeviceInfoForUser(int r1) {
        try {
            return this.mEnrollmentService.getEnrolledDeviceInfosForUser(r1);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Handler getEventCallbackHandler() {
        return this.mEventCallbackHandler;
    }

    private static final class ListenerToEnrollmentService extends ICarTrustAgentEnrollmentCallback.Stub {
        private final WeakReference<CarTrustAgentEnrollmentManager> mMgr;

        ListenerToEnrollmentService(CarTrustAgentEnrollmentManager carTrustAgentEnrollmentManager) {
            this.mMgr = new WeakReference<>(carTrustAgentEnrollmentManager);
        }

        @Override // android.car.trust.ICarTrustAgentEnrollmentCallback
        public void onEnrollmentHandshakeFailure(BluetoothDevice bluetoothDevice, int r6) {
            CarTrustAgentEnrollmentManager carTrustAgentEnrollmentManager = this.mMgr.get();
            if (carTrustAgentEnrollmentManager == null) {
                return;
            }
            carTrustAgentEnrollmentManager.getEventCallbackHandler().sendMessage(carTrustAgentEnrollmentManager.getEventCallbackHandler().obtainMessage(4, new AuthInfo(bluetoothDevice, null, r6)));
        }

        @Override // android.car.trust.ICarTrustAgentEnrollmentCallback
        public void onAuthStringAvailable(BluetoothDevice bluetoothDevice, String str) {
            CarTrustAgentEnrollmentManager carTrustAgentEnrollmentManager = this.mMgr.get();
            if (carTrustAgentEnrollmentManager == null) {
                return;
            }
            carTrustAgentEnrollmentManager.getEventCallbackHandler().sendMessage(carTrustAgentEnrollmentManager.getEventCallbackHandler().obtainMessage(5, new AuthInfo(bluetoothDevice, str, 0)));
        }

        @Override // android.car.trust.ICarTrustAgentEnrollmentCallback
        public void onEscrowTokenAdded(long j) {
            CarTrustAgentEnrollmentManager carTrustAgentEnrollmentManager = this.mMgr.get();
            if (carTrustAgentEnrollmentManager == null) {
                return;
            }
            Message messageObtainMessage = carTrustAgentEnrollmentManager.getEventCallbackHandler().obtainMessage(6);
            Bundle bundle = new Bundle();
            bundle.putLong(CarTrustAgentEnrollmentManager.KEY_HANDLE, j);
            messageObtainMessage.setData(bundle);
            carTrustAgentEnrollmentManager.getEventCallbackHandler().sendMessage(messageObtainMessage);
        }

        @Override // android.car.trust.ICarTrustAgentEnrollmentCallback
        public void onEscrowTokenRemoved(long j) {
            CarTrustAgentEnrollmentManager carTrustAgentEnrollmentManager = this.mMgr.get();
            if (carTrustAgentEnrollmentManager == null) {
                return;
            }
            Message messageObtainMessage = carTrustAgentEnrollmentManager.getEventCallbackHandler().obtainMessage(8);
            Bundle bundle = new Bundle();
            bundle.putLong(CarTrustAgentEnrollmentManager.KEY_HANDLE, j);
            messageObtainMessage.setData(bundle);
            carTrustAgentEnrollmentManager.getEventCallbackHandler().sendMessage(messageObtainMessage);
        }

        @Override // android.car.trust.ICarTrustAgentEnrollmentCallback
        public void onEscrowTokenActiveStateChanged(long j, boolean z) {
            CarTrustAgentEnrollmentManager carTrustAgentEnrollmentManager = this.mMgr.get();
            if (carTrustAgentEnrollmentManager == null) {
                return;
            }
            Message messageObtainMessage = carTrustAgentEnrollmentManager.getEventCallbackHandler().obtainMessage(7);
            Bundle bundle = new Bundle();
            bundle.putLong(CarTrustAgentEnrollmentManager.KEY_HANDLE, j);
            bundle.putBoolean(CarTrustAgentEnrollmentManager.KEY_ACTIVE, z);
            messageObtainMessage.setData(bundle);
            carTrustAgentEnrollmentManager.getEventCallbackHandler().sendMessage(messageObtainMessage);
        }
    }

    private static final class ListenerToBleService extends ICarTrustAgentBleCallback.Stub {
        private final WeakReference<CarTrustAgentEnrollmentManager> mMgr;

        ListenerToBleService(CarTrustAgentEnrollmentManager carTrustAgentEnrollmentManager) {
            this.mMgr = new WeakReference<>(carTrustAgentEnrollmentManager);
        }

        @Override // android.car.trust.ICarTrustAgentBleCallback
        public void onEnrollmentAdvertisingStarted() {
            CarTrustAgentEnrollmentManager carTrustAgentEnrollmentManager = this.mMgr.get();
            if (carTrustAgentEnrollmentManager == null) {
                return;
            }
            carTrustAgentEnrollmentManager.getEventCallbackHandler().sendMessage(carTrustAgentEnrollmentManager.getEventCallbackHandler().obtainMessage(0));
        }

        @Override // android.car.trust.ICarTrustAgentBleCallback
        public void onEnrollmentAdvertisingFailed() {
            CarTrustAgentEnrollmentManager carTrustAgentEnrollmentManager = this.mMgr.get();
            if (carTrustAgentEnrollmentManager == null) {
                return;
            }
            carTrustAgentEnrollmentManager.getEventCallbackHandler().sendMessage(carTrustAgentEnrollmentManager.getEventCallbackHandler().obtainMessage(1));
        }

        @Override // android.car.trust.ICarTrustAgentBleCallback
        public void onBleEnrollmentDeviceConnected(BluetoothDevice bluetoothDevice) {
            CarTrustAgentEnrollmentManager carTrustAgentEnrollmentManager = this.mMgr.get();
            if (carTrustAgentEnrollmentManager == null) {
                return;
            }
            carTrustAgentEnrollmentManager.getEventCallbackHandler().sendMessage(carTrustAgentEnrollmentManager.getEventCallbackHandler().obtainMessage(2, bluetoothDevice));
        }

        @Override // android.car.trust.ICarTrustAgentBleCallback
        public void onBleEnrollmentDeviceDisconnected(BluetoothDevice bluetoothDevice) {
            CarTrustAgentEnrollmentManager carTrustAgentEnrollmentManager = this.mMgr.get();
            if (carTrustAgentEnrollmentManager == null) {
                return;
            }
            carTrustAgentEnrollmentManager.getEventCallbackHandler().sendMessage(carTrustAgentEnrollmentManager.getEventCallbackHandler().obtainMessage(3, bluetoothDevice));
        }
    }

    private static final class EventCallbackHandler extends Handler {
        private final WeakReference<CarTrustAgentEnrollmentManager> mEnrollmentManager;

        EventCallbackHandler(CarTrustAgentEnrollmentManager carTrustAgentEnrollmentManager, Looper looper) {
            super(looper);
            this.mEnrollmentManager = new WeakReference<>(carTrustAgentEnrollmentManager);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            CarTrustAgentEnrollmentManager carTrustAgentEnrollmentManager = this.mEnrollmentManager.get();
            if (carTrustAgentEnrollmentManager == null) {
            }
            switch (message.what) {
                case 0:
                case 1:
                case 2:
                case 3:
                    carTrustAgentEnrollmentManager.dispatchBleCallback(message);
                    break;
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    carTrustAgentEnrollmentManager.dispatchEnrollmentCallback(message);
                    break;
                default:
                    Log.e(CarTrustAgentEnrollmentManager.TAG, "Unknown message:" + message.what);
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchBleCallback(Message message) {
        CarTrustAgentBleCallback carTrustAgentBleCallback;
        synchronized (this.mListenerLock) {
            carTrustAgentBleCallback = this.mBleCallback;
        }
        if (carTrustAgentBleCallback == null) {
            return;
        }
        int r0 = message.what;
        if (r0 == 0) {
            carTrustAgentBleCallback.onEnrollmentAdvertisingStarted();
            return;
        }
        if (r0 == 1) {
            carTrustAgentBleCallback.onEnrollmentAdvertisingFailed();
        } else if (r0 == 2) {
            carTrustAgentBleCallback.onBleEnrollmentDeviceConnected((BluetoothDevice) message.obj);
        } else {
            if (r0 != 3) {
                return;
            }
            carTrustAgentBleCallback.onBleEnrollmentDeviceDisconnected((BluetoothDevice) message.obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchEnrollmentCallback(Message message) {
        CarTrustAgentEnrollmentCallback carTrustAgentEnrollmentCallback;
        synchronized (this.mListenerLock) {
            carTrustAgentEnrollmentCallback = this.mEnrollmentCallback;
        }
        if (carTrustAgentEnrollmentCallback == null) {
            return;
        }
        switch (message.what) {
            case 4:
                AuthInfo authInfo = (AuthInfo) message.obj;
                carTrustAgentEnrollmentCallback.onEnrollmentHandshakeFailure(authInfo.mDevice, authInfo.mErrorCode);
                return;
            case 5:
                AuthInfo authInfo2 = (AuthInfo) message.obj;
                if (authInfo2.mDevice == null || authInfo2.mAuthString == null) {
                    return;
                }
                carTrustAgentEnrollmentCallback.onAuthStringAvailable(authInfo2.mDevice, authInfo2.mAuthString);
                return;
            case 6:
                Bundle data = message.getData();
                if (data == null) {
                    return;
                }
                carTrustAgentEnrollmentCallback.onEscrowTokenAdded(data.getLong(KEY_HANDLE));
                return;
            case 7:
                Bundle data2 = message.getData();
                if (data2 == null) {
                    return;
                }
                carTrustAgentEnrollmentCallback.onEscrowTokenActiveStateChanged(data2.getLong(KEY_HANDLE), data2.getBoolean(KEY_ACTIVE));
                return;
            case 8:
                Bundle data3 = message.getData();
                if (data3 == null) {
                    return;
                }
                carTrustAgentEnrollmentCallback.onEscrowTokenRemoved(data3.getLong(KEY_HANDLE));
                return;
            default:
                return;
        }
    }

    private static class AuthInfo {
        final String mAuthString;
        final BluetoothDevice mDevice;
        final int mErrorCode;

        AuthInfo(BluetoothDevice bluetoothDevice, String str, int r3) {
            this.mDevice = bluetoothDevice;
            this.mAuthString = str;
            this.mErrorCode = r3;
        }
    }
}
