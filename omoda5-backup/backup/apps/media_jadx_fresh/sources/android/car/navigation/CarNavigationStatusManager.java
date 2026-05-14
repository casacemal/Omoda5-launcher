package android.car.navigation;

import android.annotation.SystemApi;
import android.car.CarManagerBase;
import android.car.cluster.renderer.IInstrumentClusterNavigation;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;

@SystemApi
/* loaded from: classes.dex */
public final class CarNavigationStatusManager implements CarManagerBase {
    private static final String TAG = "CAR.L.NAV";
    private final IInstrumentClusterNavigation mService;

    public CarNavigationStatusManager(IBinder iBinder) {
        this.mService = IInstrumentClusterNavigation.Stub.asInterface(iBinder);
    }

    @Deprecated
    public void sendEvent(int r1, Bundle bundle) {
        sendNavigationStateChange(bundle);
    }

    public void sendNavigationStateChange(Bundle bundle) {
        try {
            this.mService.onNavigationStateChanged(bundle);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
        Log.e("CAR.L.NAV", "Car service disconnected");
    }

    public CarNavigationInstrumentCluster getInstrumentClusterInfo() {
        try {
            return this.mService.getInstrumentClusterInfo();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }
}
