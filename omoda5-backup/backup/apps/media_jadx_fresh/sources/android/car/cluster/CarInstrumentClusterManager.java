package android.car.cluster;

import android.annotation.SystemApi;
import android.car.CarManagerBase;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;

@SystemApi
@Deprecated
/* loaded from: classes.dex */
public class CarInstrumentClusterManager implements CarManagerBase {

    @SystemApi
    public static final String CATEGORY_NAVIGATION = "android.car.cluster.NAVIGATION";

    @SystemApi
    public static final String KEY_EXTRA_ACTIVITY_STATE = "android.car.cluster.ClusterActivityState";

    @SystemApi
    @Deprecated
    public interface Callback {
        void onClusterActivityStateChanged(String str, Bundle bundle);
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
    }

    @SystemApi
    public void registerCallback(String str, Callback callback) {
    }

    @SystemApi
    public void startActivity(Intent intent) {
    }

    @SystemApi
    public void unregisterCallback(Callback callback) {
    }

    public CarInstrumentClusterManager(IBinder iBinder, Handler handler) {
    }
}
