package android.car.settings;

import android.car.CarManagerBase;
import android.car.settings.ICarConfigurationManager;
import android.os.IBinder;
import android.os.RemoteException;

/* loaded from: classes.dex */
public class CarConfigurationManager implements CarManagerBase {
    private static final String TAG = "CarConfigurationManager";
    private final ICarConfigurationManager mConfigurationService;

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
    }

    public CarConfigurationManager(IBinder iBinder) {
        this.mConfigurationService = ICarConfigurationManager.Stub.asInterface(iBinder);
    }

    public SpeedBumpConfiguration getSpeedBumpConfiguration() {
        try {
            return this.mConfigurationService.getSpeedBumpConfiguration();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }
}
