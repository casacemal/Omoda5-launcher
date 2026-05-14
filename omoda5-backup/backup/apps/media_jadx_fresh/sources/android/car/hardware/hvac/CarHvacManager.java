package android.car.hardware.hvac;

import android.annotation.SystemApi;
import android.car.CarManagerBase;
import android.car.hardware.CarPropertyConfig;
import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.car.hardware.property.ICarProperty;
import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.util.ArraySet;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

@SystemApi
@Deprecated
/* loaded from: classes.dex */
public final class CarHvacManager implements CarManagerBase {
    private static final boolean DBG = false;
    public static final int FAN_DIRECTION_DEFROST = 4;
    public static final int FAN_DIRECTION_FACE = 1;
    public static final int FAN_DIRECTION_FLOOR = 2;
    public static final int ID_MIRROR_DEFROSTER_ON = 339739916;
    public static final int ID_OUTSIDE_AIR_TEMP = 291505923;
    public static final int ID_STEERING_WHEEL_HEAT = 289408269;
    public static final int ID_TEMPERATURE_DISPLAY_UNITS = 289408270;
    public static final int ID_WINDOW_DEFROSTER_ON = 320865540;
    public static final int ID_ZONED_AC_ON = 354419973;
    public static final int ID_ZONED_AIR_RECIRCULATION_ON = 354419976;
    public static final int ID_ZONED_AUTOMATIC_MODE_ON = 354419978;
    public static final int ID_ZONED_DUAL_ZONE_ON = 354419977;
    public static final int ID_ZONED_FAN_DIRECTION = 356517121;
    public static final int ID_ZONED_FAN_DIRECTION_AVAILABLE = 356582673;
    public static final int ID_ZONED_FAN_SPEED_RPM = 356517135;
    public static final int ID_ZONED_FAN_SPEED_SETPOINT = 356517120;
    public static final int ID_ZONED_HVAC_AUTO_RECIRC_ON = 354419986;
    public static final int ID_ZONED_HVAC_POWER_ON = 354419984;
    public static final int ID_ZONED_MAX_AC_ON = 354419974;
    public static final int ID_ZONED_MAX_DEFROST_ON = 354419975;
    public static final int ID_ZONED_SEAT_TEMP = 356517131;
    public static final int ID_ZONED_TEMP_ACTUAL = 358614274;
    public static final int ID_ZONED_TEMP_SETPOINT = 358614275;
    private static final String TAG = "CarHvacManager";
    private final CarPropertyManager mCarPropertyMgr;
    private final ArraySet<CarHvacEventCallback> mCallbacks = new ArraySet<>();
    private CarPropertyEventListenerToBase mListenerToBase = null;
    private final ArraySet<Integer> mHvacPropertyIds = new ArraySet<>(Arrays.asList(339739916, 289408269, 291505923, 289408270, 358614275, 358614274, 356517120, 356517135, 356582673, 356517121, 356517131, 354419973, 354419978, 354419976, 354419974, 354419977, 354419975, 354419984, 354419986, 320865540));

    public interface CarHvacEventCallback {
        void onChangeEvent(CarPropertyValue carPropertyValue);

        void onErrorEvent(int r1, int r2);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface PropertyId {
    }

    private static class CarPropertyEventListenerToBase implements CarPropertyManager.CarPropertyEventCallback {
        private final WeakReference<CarHvacManager> mManager;

        public CarPropertyEventListenerToBase(CarHvacManager carHvacManager) {
            this.mManager = new WeakReference<>(carHvacManager);
        }

        @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
        public void onChangeEvent(CarPropertyValue carPropertyValue) {
            CarHvacManager carHvacManager = this.mManager.get();
            if (carHvacManager != null) {
                carHvacManager.handleOnChangeEvent(carPropertyValue);
            }
        }

        @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
        public void onErrorEvent(int r1, int r2) {
            CarHvacManager carHvacManager = this.mManager.get();
            if (carHvacManager != null) {
                carHvacManager.handleOnErrorEvent(r1, r2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnChangeEvent(CarPropertyValue carPropertyValue) {
        ArraySet arraySet;
        synchronized (this) {
            arraySet = new ArraySet((ArraySet) this.mCallbacks);
        }
        if (arraySet.isEmpty()) {
            return;
        }
        Iterator it = arraySet.iterator();
        while (it.hasNext()) {
            ((CarHvacEventCallback) it.next()).onChangeEvent(carPropertyValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnErrorEvent(int r3, int r4) {
        ArraySet arraySet;
        synchronized (this) {
            arraySet = new ArraySet((ArraySet) this.mCallbacks);
        }
        if (arraySet.isEmpty()) {
            return;
        }
        Iterator it = arraySet.iterator();
        while (it.hasNext()) {
            ((CarHvacEventCallback) it.next()).onErrorEvent(r3, r4);
        }
    }

    public CarHvacManager(IBinder iBinder, Context context, Handler handler) {
        this.mCarPropertyMgr = new CarPropertyManager(ICarProperty.Stub.asInterface(iBinder), handler);
    }

    public synchronized void registerCallback(CarHvacEventCallback carHvacEventCallback) {
        if (this.mCallbacks.isEmpty()) {
            this.mListenerToBase = new CarPropertyEventListenerToBase(this);
        }
        Iterator<CarPropertyConfig> it = getPropertyList().iterator();
        while (it.hasNext()) {
            this.mCarPropertyMgr.registerCallback(this.mListenerToBase, it.next().getPropertyId(), 0.0f);
        }
        this.mCallbacks.add(carHvacEventCallback);
    }

    public synchronized void unregisterCallback(CarHvacEventCallback carHvacEventCallback) {
        this.mCallbacks.remove(carHvacEventCallback);
        try {
            Iterator<CarPropertyConfig> it = getPropertyList().iterator();
            while (it.hasNext()) {
                this.mCarPropertyMgr.unregisterCallback(this.mListenerToBase, it.next().getPropertyId());
            }
        } catch (Exception e) {
            Log.e(TAG, "getPropertyList exception ", e);
        }
        if (this.mCallbacks.isEmpty()) {
            this.mCarPropertyMgr.unregisterCallback(this.mListenerToBase);
            this.mListenerToBase = null;
        }
    }

    public List<CarPropertyConfig> getPropertyList() {
        return this.mCarPropertyMgr.getPropertyList(this.mHvacPropertyIds);
    }

    public boolean isPropertyAvailable(int r1, int r2) {
        return this.mCarPropertyMgr.isPropertyAvailable(r1, r2);
    }

    public boolean getBooleanProperty(int r1, int r2) {
        return this.mCarPropertyMgr.getBooleanProperty(r1, r2);
    }

    public float getFloatProperty(int r1, int r2) {
        return this.mCarPropertyMgr.getFloatProperty(r1, r2);
    }

    public int getIntProperty(int r1, int r2) {
        return this.mCarPropertyMgr.getIntProperty(r1, r2);
    }

    public void setBooleanProperty(int r3, int r4, boolean z) {
        if (this.mHvacPropertyIds.contains(Integer.valueOf(r3))) {
            this.mCarPropertyMgr.setBooleanProperty(r3, r4, z);
        }
    }

    public void setFloatProperty(int r3, int r4, float f) {
        if (this.mHvacPropertyIds.contains(Integer.valueOf(r3))) {
            this.mCarPropertyMgr.setFloatProperty(r3, r4, f);
        }
    }

    public void setIntProperty(int r3, int r4, int r5) {
        if (this.mHvacPropertyIds.contains(Integer.valueOf(r3))) {
            this.mCarPropertyMgr.setIntProperty(r3, r4, r5);
        }
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
        this.mCarPropertyMgr.onCarDisconnected();
    }
}
