package android.car.hardware.power;

import android.annotation.SystemApi;
import android.car.CarManagerBase;
import android.car.hardware.power.ICarPower;
import android.car.hardware.power.ICarPowerStateListener;
import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CompletableFuture;
import java.util.function.BiConsumer;

@SystemApi
/* loaded from: classes.dex */
public class CarPowerManager implements CarManagerBase {
    private static final boolean DBG = false;
    private static final String TAG = "CarPowerManager";
    private CompletableFuture<Void> mFuture;
    private CarPowerStateListener mListener;
    private ICarPowerStateListener mListenerToService;
    private CarPowerStateListenerWithCompletion mListenerWithCompletion;
    private final Object mLock = new Object();
    private final ICarPower mService;

    public interface CarPowerStateListener {

        /* renamed from: ON */
        public static final int f2ON = 6;
        public static final int PWR_MODE_ABNORMAL = 14;
        public static final int PWR_MODE_NONE = 9;
        public static final int PWR_MODE_OFF = 10;
        public static final int PWR_MODE_OFF_USER = 16;
        public static final int PWR_MODE_PARTIALRUN = 17;
        public static final int PWR_MODE_PROTECTION = 18;
        public static final int PWR_MODE_RUN = 12;
        public static final int PWR_MODE_SLEEP = 13;
        public static final int PWR_MODE_STANDBY = 11;
        public static final int PWR_MODE_TEMPRUN_ENDING = 19;
        public static final int PWR_MODE_TEMP_ON = 15;
        public static final int PWR_REQ_SYSTEM_OFF = 20;
        public static final int PWR_SCREEN_OFF = 22;
        public static final int PWR_SCREEN_ON = 21;
        public static final int SHUTDOWN_CANCELLED = 8;
        public static final int SHUTDOWN_ENTER = 5;
        public static final int SHUTDOWN_PREPARE = 7;
        public static final int SUSPEND_ENTER = 2;
        public static final int SUSPEND_EXIT = 3;
        public static final int WAIT_FOR_VHAL = 1;

        void onStateChanged(int r1);
    }

    public interface CarPowerStateListenerWithCompletion {
        void onStateChanged(int r1, CompletableFuture<Void> completableFuture);
    }

    public CarPowerManager(IBinder iBinder, Context context, Handler handler) {
        this.mService = ICarPower.Stub.asInterface(iBinder);
    }

    public void requestShutdownOnNextSuspend() {
        try {
            this.mService.requestShutdownOnNextSuspend();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void scheduleNextWakeupTime(int r1) {
        try {
            this.mService.scheduleNextWakeupTime(r1);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void setListener(CarPowerStateListener carPowerStateListener) {
        synchronized (this.mLock) {
            if (this.mListener != null || this.mListenerWithCompletion != null) {
                throw new IllegalStateException("Listener must be cleared first");
            }
            this.mListener = carPowerStateListener;
            setServiceForListenerLocked(false);
        }
    }

    public void setListenerWithCompletion(CarPowerStateListenerWithCompletion carPowerStateListenerWithCompletion) {
        synchronized (this.mLock) {
            if (this.mListener != null || this.mListenerWithCompletion != null) {
                throw new IllegalStateException("Listener must be cleared first");
            }
            this.mListenerWithCompletion = carPowerStateListenerWithCompletion;
            setServiceForListenerLocked(true);
        }
    }

    private void setServiceForListenerLocked(final boolean z) {
        if (this.mListenerToService == null) {
            ICarPowerStateListener.Stub stub = new ICarPowerStateListener.Stub() { // from class: android.car.hardware.power.CarPowerManager.1
                @Override // android.car.hardware.power.ICarPowerStateListener
                public void onStateChanged(int r2) throws RemoteException {
                    if (z) {
                        CarPowerManager.this.updateFuture(r2);
                        CarPowerManager.this.mListenerWithCompletion.onStateChanged(r2, CarPowerManager.this.mFuture);
                    } else {
                        CarPowerManager.this.mListener.onStateChanged(r2);
                    }
                }
            };
            try {
                if (z) {
                    this.mService.registerListenerWithCompletion(stub);
                } else {
                    this.mService.registerListener(stub);
                }
                this.mListenerToService = stub;
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public void clearListener() {
        ICarPowerStateListener iCarPowerStateListener;
        synchronized (this.mLock) {
            iCarPowerStateListener = this.mListenerToService;
            this.mListenerToService = null;
            this.mListener = null;
            this.mListenerWithCompletion = null;
            cleanupFuture();
        }
        if (iCarPowerStateListener == null) {
            Log.w(TAG, "unregisterListener: listener was not registered");
            return;
        }
        try {
            this.mService.unregisterListener(iCarPowerStateListener);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFuture(int r2) {
        cleanupFuture();
        if (r2 == 7) {
            CompletableFuture<Void> completableFuture = new CompletableFuture<>();
            this.mFuture = completableFuture;
            completableFuture.whenComplete(new BiConsumer() { // from class: android.car.hardware.power.-$$Lambda$CarPowerManager$0LhGRWlJk6LDgHSx02yuXNtpPMI
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    this.f$0.lambda$updateFuture$0$CarPowerManager((Void) obj, (Throwable) obj2);
                }
            });
        }
    }

    public /* synthetic */ void lambda$updateFuture$0$CarPowerManager(Void r2, Throwable th) {
        if (th != null && !(th instanceof CancellationException)) {
            Log.e(TAG, "Exception occurred while waiting for future", th);
        }
        try {
            this.mService.finished(this.mListenerToService);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    private void cleanupFuture() {
        CompletableFuture<Void> completableFuture = this.mFuture;
        if (completableFuture != null) {
            if (!completableFuture.isDone()) {
                this.mFuture.cancel(false);
            }
            this.mFuture = null;
        }
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
        ICarPowerStateListener iCarPowerStateListener;
        synchronized (this.mLock) {
            iCarPowerStateListener = this.mListenerToService;
        }
        if (iCarPowerStateListener != null) {
            clearListener();
        }
    }

    public void setBackLightEnable(boolean z) {
        try {
            this.mService.setBackLightEnable(z);
        } catch (RemoteException e) {
            Log.e(TAG, "Exception in seBackLightEnable", e);
        }
    }

    public boolean getBackLightStatus() {
        try {
            return this.mService.getBackLightStatus();
        } catch (RemoteException e) {
            Log.e(TAG, "Exception in getBackLightStatus", e);
            return true;
        }
    }

    public int getBootReason() {
        try {
            return this.mService.getBootReason();
        } catch (RemoteException e) {
            Log.e(TAG, "Exception in getBootReason", e);
            return 0;
        }
    }

    public void requestMCUDoFactoryReset() {
        try {
            Log.i(TAG, "request MCU Do Factory Reset");
            this.mService.requestMCUDoFactoryReset();
        } catch (RemoteException e) {
            Log.e(TAG, "Exception in requestMCUDoFactoryReset", e);
        }
    }

    public void requestRestartNow() {
        try {
            this.mService.requestRestartNow();
        } catch (RemoteException e) {
            Log.e(TAG, "Exception in requestRestartNow", e);
        }
    }

    public String getMCUVersion() {
        try {
            return this.mService.getMCUVersion();
        } catch (RemoteException e) {
            Log.e(TAG, "Exception in getMCUVersion", e);
            return "";
        }
    }

    public String getMCUVersionForApp() {
        try {
            return this.mService.getMCUVersionForApp();
        } catch (RemoteException e) {
            Log.e(TAG, "Exception in getMCUVersionForApp", e);
            return "";
        }
    }

    public void reEnterTempRunMode() {
        try {
            this.mService.reEnterTempRunMode();
        } catch (RemoteException e) {
            Log.e(TAG, "Exception in reEnterTempRunMode", e);
        }
    }

    public void setTempRunTime(int r2) {
        if (r2 <= 0 || r2 > 120) {
            return;
        }
        try {
            this.mService.setTempRunTime(r2);
        } catch (RemoteException e) {
            Log.e(TAG, "Exception in setTempRunTime", e);
        }
    }

    public int getTempRunTime() {
        try {
            return this.mService.getTempRunTime();
        } catch (RemoteException e) {
            Log.e(TAG, "Exception in getTempRunTime", e);
            return 20;
        }
    }

    public int getCurrentPowerMode() {
        try {
            return this.mService.getCurrentPowerMode();
        } catch (RemoteException e) {
            Log.e(TAG, "Exception in getCurrentPowerMode", e);
            return 9;
        }
    }

    public float voltageInfoQuery() {
        float fVoltageInfoQuery;
        try {
            fVoltageInfoQuery = this.mService.voltageInfoQuery();
        } catch (RemoteException e) {
            Log.e(TAG, "Exception in getVoltageInfo", e);
            fVoltageInfoQuery = 0.0f;
        }
        Log.d(TAG, "voltageInfoQuery: voltageInfo " + fVoltageInfoQuery);
        return fVoltageInfoQuery;
    }

    public void sendEventToMCU(boolean z) {
        try {
            this.mService.sendEventToMCU(z);
        } catch (RemoteException e) {
            Log.e(TAG, "Exception in getCurrentPowerMode", e);
        }
    }

    public void sendPROModeExit(boolean z) {
        try {
            this.mService.sendPROModeExit(z);
        } catch (RemoteException e) {
            Log.e(TAG, "Exception in getCurrentPowerMode", e);
        }
    }
}
