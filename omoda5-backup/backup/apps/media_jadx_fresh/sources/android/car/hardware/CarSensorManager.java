package android.car.hardware;

import android.car.CarManagerBase;
import android.car.hardware.property.CarPropertyManager;
import android.car.hardware.property.ICarProperty;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.util.ArraySet;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

@Deprecated
/* loaded from: classes.dex */
public final class CarSensorManager implements CarManagerBase {
    private static final int INDEX_WHEEL_DISTANCE_ENABLE_FLAG = 0;
    private static final int INDEX_WHEEL_DISTANCE_FRONT_LEFT = 1;
    private static final int INDEX_WHEEL_DISTANCE_FRONT_RIGHT = 2;
    private static final int INDEX_WHEEL_DISTANCE_REAR_LEFT = 4;
    private static final int INDEX_WHEEL_DISTANCE_REAR_RIGHT = 3;
    public static final int SENSOR_RATE_FAST = 10;
    public static final int SENSOR_RATE_FASTEST = 100;
    public static final int SENSOR_RATE_NORMAL = 1;
    public static final int SENSOR_RATE_ONCHANGE = 0;
    public static final int SENSOR_RATE_UI = 5;
    public static final int SENSOR_TYPE_ABS_ACTIVE = 287310858;
    public static final int SENSOR_TYPE_CAR_SPEED = 291504647;
    public static final int SENSOR_TYPE_ENGINE_OIL_LEVEL = 289407747;
    public static final int SENSOR_TYPE_ENV_OUTSIDE_TEMPERATURE = 291505923;
    public static final int SENSOR_TYPE_EV_BATTERY_CHARGE_RATE = 291504908;
    public static final int SENSOR_TYPE_EV_BATTERY_LEVEL = 291504905;
    public static final int SENSOR_TYPE_EV_CHARGE_PORT_CONNECTED = 287310603;
    public static final int SENSOR_TYPE_EV_CHARGE_PORT_OPEN = 287310602;
    public static final int SENSOR_TYPE_FUEL_DOOR_OPEN = 287310600;
    public static final int SENSOR_TYPE_FUEL_LEVEL = 291504903;
    public static final int SENSOR_TYPE_GEAR = 289408000;
    public static final int SENSOR_TYPE_IGNITION_STATE = 289408009;
    public static final int SENSOR_TYPE_NIGHT = 287310855;
    public static final int SENSOR_TYPE_ODOMETER = 291504644;
    public static final int SENSOR_TYPE_PARKING_BRAKE = 287310850;
    public static final int SENSOR_TYPE_RESERVED1 = 1;
    public static final int SENSOR_TYPE_RESERVED10 = 10;
    public static final int SENSOR_TYPE_RESERVED11 = 11;
    public static final int SENSOR_TYPE_RESERVED12 = 12;
    public static final int SENSOR_TYPE_RESERVED13 = 13;
    public static final int SENSOR_TYPE_RESERVED14 = 14;
    public static final int SENSOR_TYPE_RESERVED15 = 15;
    public static final int SENSOR_TYPE_RESERVED16 = 16;
    public static final int SENSOR_TYPE_RESERVED17 = 17;
    public static final int SENSOR_TYPE_RESERVED18 = 18;
    public static final int SENSOR_TYPE_RESERVED19 = 19;
    public static final int SENSOR_TYPE_RESERVED20 = 20;
    public static final int SENSOR_TYPE_RESERVED21 = 21;
    public static final int SENSOR_TYPE_RESERVED26 = 26;
    public static final int SENSOR_TYPE_RESERVED8 = 8;
    public static final int SENSOR_TYPE_RPM = 291504901;
    public static final int SENSOR_TYPE_TRACTION_CONTROL_ACTIVE = 287310859;
    public static final int SENSOR_TYPE_WHEEL_TICK_DISTANCE = 290521862;
    private static final String TAG = "CarSensorManager";
    private static final int WHEEL_TICK_DISTANCE_BUNDLE_SIZE = 6;
    private final CarPropertyManager mCarPropertyMgr;
    private final ArraySet<Integer> mSensorConfigIds = new ArraySet<>(Arrays.asList(291504647, 291504901, 291504644, 291504903, 287310850, 289408000, 287310855, 291505923, 289408009, 290521862, 287310858, 287310859, 287310600, 291504905, 287310602, 287310603, 291504908, 289407747));
    private CarPropertyEventListenerToBase mCarPropertyEventListener = null;
    private final HashMap<OnSensorChangedListener, CarPropertyEventListenerToBase> mListenerMap = new HashMap<>();

    public interface OnSensorChangedListener {
        void onSensorChanged(CarSensorEvent carSensorEvent);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SensorRate {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SensorType {
    }

    private void handleOnErrorEvent(int r1, int r2) {
    }

    private static class CarPropertyEventListenerToBase implements CarPropertyManager.CarPropertyEventCallback {
        private final OnSensorChangedListener mListener;
        private final WeakReference<CarSensorManager> mManager;

        @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
        public void onErrorEvent(int r1, int r2) {
        }

        CarPropertyEventListenerToBase(CarSensorManager carSensorManager, OnSensorChangedListener onSensorChangedListener) {
            this.mManager = new WeakReference<>(carSensorManager);
            this.mListener = onSensorChangedListener;
        }

        @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
        public void onChangeEvent(CarPropertyValue carPropertyValue) {
            CarSensorManager carSensorManager = this.mManager.get();
            if (carSensorManager != null) {
                carSensorManager.handleOnChangeEvent(carPropertyValue, this.mListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnChangeEvent(CarPropertyValue carPropertyValue, OnSensorChangedListener onSensorChangedListener) {
        synchronized (this.mListenerMap) {
            onSensorChangedListener.onSensorChanged(createCarSensorEvent(carPropertyValue));
        }
    }

    public CarSensorManager(IBinder iBinder, Context context, Handler handler) {
        this.mCarPropertyMgr = new CarPropertyManager(ICarProperty.Stub.asInterface(iBinder), handler);
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
        synchronized (this.mListenerMap) {
            this.mListenerMap.clear();
        }
        this.mCarPropertyMgr.onCarDisconnected();
    }

    public int[] getSupportedSensors() {
        List<CarPropertyConfig> propertyList = getPropertyList();
        int size = propertyList.size();
        int[] r1 = new int[size];
        for (int r2 = 0; r2 < size; r2++) {
            r1[r2] = propertyList.get(r2).getPropertyId();
        }
        return r1;
    }

    public List<CarPropertyConfig> getPropertyList() {
        return this.mCarPropertyMgr.getPropertyList(this.mSensorConfigIds);
    }

    public boolean isSensorSupported(int r5) {
        for (int r0 : getSupportedSensors()) {
            if (r5 == r0) {
                return true;
            }
        }
        return false;
    }

    public static boolean isSensorSupported(int[] r4, int r5) {
        for (int r0 : r4) {
            if (r5 == r0) {
                return true;
            }
        }
        return false;
    }

    public boolean registerListener(OnSensorChangedListener onSensorChangedListener, int r5, int r6) {
        if (r6 != 100 && r6 != 1 && r6 != 5 && r6 != 10 && r6 != 0) {
            throw new IllegalArgumentException("wrong rate " + r6);
        }
        if (this.mListenerMap.get(onSensorChangedListener) == null) {
            this.mCarPropertyEventListener = new CarPropertyEventListenerToBase(this, onSensorChangedListener);
        } else {
            this.mCarPropertyEventListener = this.mListenerMap.get(onSensorChangedListener);
        }
        if (!this.mCarPropertyMgr.registerCallback(this.mCarPropertyEventListener, r5, r6)) {
            return false;
        }
        this.mListenerMap.put(onSensorChangedListener, this.mCarPropertyEventListener);
        return true;
    }

    public void unregisterListener(OnSensorChangedListener onSensorChangedListener) {
        synchronized (this.mListenerMap) {
            CarPropertyEventListenerToBase carPropertyEventListenerToBase = this.mListenerMap.get(onSensorChangedListener);
            this.mCarPropertyEventListener = carPropertyEventListenerToBase;
            this.mCarPropertyMgr.unregisterCallback(carPropertyEventListenerToBase);
            this.mListenerMap.remove(onSensorChangedListener);
        }
    }

    public void unregisterListener(OnSensorChangedListener onSensorChangedListener, int r4) {
        CarPropertyEventListenerToBase carPropertyEventListenerToBase;
        synchronized (this.mListenerMap) {
            carPropertyEventListenerToBase = this.mListenerMap.get(onSensorChangedListener);
            this.mCarPropertyEventListener = carPropertyEventListenerToBase;
        }
        this.mCarPropertyMgr.unregisterCallback(carPropertyEventListenerToBase, r4);
    }

    public CarSensorEvent getLatestSensorEvent(int r3) {
        return createCarSensorEvent(this.mCarPropertyMgr.getProperty(r3, 0));
    }

    private CarSensorEvent createCarSensorEvent(CarPropertyValue carPropertyValue) {
        int propertyId = carPropertyValue.getPropertyId() & 16711680;
        if (propertyId == 2097152) {
            CarSensorEvent carSensorEvent = new CarSensorEvent(carPropertyValue.getPropertyId(), carPropertyValue.getTimestamp(), 0, 1, 0);
            carSensorEvent.intValues[0] = ((Boolean) carPropertyValue.getValue()).booleanValue() ? 1 : 0;
            return carSensorEvent;
        }
        if (propertyId == 4194304) {
            CarSensorEvent carSensorEvent2 = new CarSensorEvent(carPropertyValue.getPropertyId(), carPropertyValue.getTimestamp(), 0, 1, 0);
            carSensorEvent2.intValues[0] = ((Integer) carPropertyValue.getValue()).intValue();
            return carSensorEvent2;
        }
        if (propertyId == 5308416) {
            Object[] objArr = (Object[]) carPropertyValue.getValue();
            CarSensorEvent carSensorEvent3 = new CarSensorEvent(carPropertyValue.getPropertyId(), carPropertyValue.getTimestamp(), 0, 0, objArr.length);
            for (int r1 = 0; r1 < objArr.length; r1++) {
                carSensorEvent3.longValues[r1] = ((Long) objArr[r1]).longValue();
            }
            return carSensorEvent3;
        }
        if (propertyId == 6291456) {
            CarSensorEvent carSensorEvent4 = new CarSensorEvent(carPropertyValue.getPropertyId(), carPropertyValue.getTimestamp(), 1, 0, 0);
            carSensorEvent4.floatValues[0] = ((Float) carPropertyValue.getValue()).floatValue();
            return carSensorEvent4;
        }
        Log.e(TAG, "unhandled VehiclePropertyType for propId=" + carPropertyValue.getPropertyId());
        return null;
    }

    public CarSensorConfig getSensorConfig(int r4) {
        Bundle bundleCreateWheelDistanceTickBundle;
        if (r4 == 290521862) {
            Iterator<CarPropertyConfig> it = this.mCarPropertyMgr.getPropertyList().iterator();
            while (true) {
                if (!it.hasNext()) {
                    bundleCreateWheelDistanceTickBundle = null;
                    break;
                }
                CarPropertyConfig next = it.next();
                if (next.getPropertyId() == r4) {
                    bundleCreateWheelDistanceTickBundle = createWheelDistanceTickBundle(next.getConfigArray());
                    break;
                }
            }
        } else {
            bundleCreateWheelDistanceTickBundle = Bundle.EMPTY;
        }
        return new CarSensorConfig(r4, bundleCreateWheelDistanceTickBundle);
    }

    private Bundle createWheelDistanceTickBundle(List<Integer> list) {
        Bundle bundle = new Bundle(6);
        bundle.putInt(CarSensorConfig.WHEEL_TICK_DISTANCE_SUPPORTED_WHEELS, list.get(0).intValue());
        bundle.putInt(CarSensorConfig.WHEEL_TICK_DISTANCE_FRONT_LEFT_UM_PER_TICK, list.get(1).intValue());
        bundle.putInt(CarSensorConfig.WHEEL_TICK_DISTANCE_FRONT_RIGHT_UM_PER_TICK, list.get(2).intValue());
        bundle.putInt(CarSensorConfig.WHEEL_TICK_DISTANCE_REAR_RIGHT_UM_PER_TICK, list.get(3).intValue());
        bundle.putInt(CarSensorConfig.WHEEL_TICK_DISTANCE_REAR_LEFT_UM_PER_TICK, list.get(4).intValue());
        return bundle;
    }
}
