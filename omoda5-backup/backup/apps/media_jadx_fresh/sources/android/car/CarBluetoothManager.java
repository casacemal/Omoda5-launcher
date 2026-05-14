package android.car;

import android.car.ICarBluetooth;
import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class CarBluetoothManager implements CarManagerBase {
    private static final String TAG = "CarBluetoothManager";
    private final Context mContext;
    private final ICarBluetooth mService;

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
    }

    public void connectDevices() {
        try {
            this.mService.connectDevices();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public CarBluetoothManager(IBinder iBinder, Context context) {
        this.mContext = context;
        this.mService = ICarBluetooth.Stub.asInterface(iBinder);
    }
}
