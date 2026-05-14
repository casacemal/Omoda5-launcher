package android.car.test;

import android.car.CarManagerBase;
import android.os.IBinder;

/* loaded from: classes.dex */
public class CarTestManagerBinderWrapper implements CarManagerBase {
    public final IBinder binder;

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
    }

    public CarTestManagerBinderWrapper(IBinder iBinder) {
        this.binder = iBinder;
    }
}
