package android.car.content.p000pm;

import android.annotation.SystemApi;
import android.car.CarManagerBase;
import android.car.content.p000pm.ICarPackageManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class CarPackageManager implements CarManagerBase {

    @SystemApi
    public static final int FLAG_SET_POLICY_ADD = 2;

    @SystemApi
    public static final int FLAG_SET_POLICY_REMOVE = 4;

    @SystemApi
    public static final int FLAG_SET_POLICY_WAIT_FOR_CHANGE = 1;
    private static final String TAG = "CarPackageManager";
    private final Context mContext;
    private final ICarPackageManager mService;

    @Retention(RetentionPolicy.SOURCE)
    public @interface SetPolicyFlags {
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
    }

    public CarPackageManager(IBinder iBinder, Context context) {
        this.mService = ICarPackageManager.Stub.asInterface(iBinder);
        this.mContext = context;
    }

    @SystemApi
    public void setAppBlockingPolicy(String str, CarAppBlockingPolicy carAppBlockingPolicy, int r4) {
        if ((r4 & 1) != 0 && Looper.getMainLooper().isCurrentThread()) {
            throw new IllegalStateException("FLAG_SET_POLICY_WAIT_FOR_CHANGE cannot be used in main thread");
        }
        try {
            this.mService.setAppBlockingPolicy(str, carAppBlockingPolicy, r4);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void restartTask(int r1) {
        try {
            this.mService.restartTask(r1);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SystemApi
    public boolean isActivityBackedBySafeActivity(ComponentName componentName) {
        try {
            return this.mService.isActivityBackedBySafeActivity(componentName);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void setEnableActivityBlocking(boolean z) {
        try {
            this.mService.setEnableActivityBlocking(z);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean isActivityDistractionOptimized(String str, String str2) {
        try {
            return this.mService.isActivityDistractionOptimized(str, str2);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean isServiceDistractionOptimized(String str, String str2) {
        try {
            return this.mService.isServiceDistractionOptimized(str, str2);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }
}
