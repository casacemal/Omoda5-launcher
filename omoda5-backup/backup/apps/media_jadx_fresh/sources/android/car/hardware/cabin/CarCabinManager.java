package android.car.hardware.cabin;

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
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

@SystemApi
@Deprecated
/* loaded from: classes.dex */
public final class CarCabinManager implements CarManagerBase {
    private static final boolean DBG = false;
    public static final int ID_DOOR_LOCK = 371198722;
    public static final int ID_DOOR_MOVE = 373295873;
    public static final int ID_DOOR_POS = 373295872;
    public static final int ID_MIRROR_FOLD = 287312709;
    public static final int ID_MIRROR_LOCK = 287312708;
    public static final int ID_MIRROR_Y_MOVE = 339741507;
    public static final int ID_MIRROR_Y_POS = 339741506;
    public static final int ID_MIRROR_Z_MOVE = 339741505;
    public static final int ID_MIRROR_Z_POS = 339741504;
    public static final int ID_SEAT_BACKREST_ANGLE_1_MOVE = 356518792;
    public static final int ID_SEAT_BACKREST_ANGLE_1_POS = 356518791;
    public static final int ID_SEAT_BACKREST_ANGLE_2_MOVE = 356518794;
    public static final int ID_SEAT_BACKREST_ANGLE_2_POS = 356518793;
    public static final int ID_SEAT_BELT_BUCKLED = 354421634;
    public static final int ID_SEAT_BELT_HEIGHT_MOVE = 356518788;
    public static final int ID_SEAT_BELT_HEIGHT_POS = 356518787;
    public static final int ID_SEAT_DEPTH_MOVE = 356518798;
    public static final int ID_SEAT_DEPTH_POS = 356518797;
    public static final int ID_SEAT_FORE_AFT_MOVE = 356518790;
    public static final int ID_SEAT_FORE_AFT_POS = 356518789;
    public static final int ID_SEAT_HEADREST_ANGLE_MOVE = 356518808;
    public static final int ID_SEAT_HEADREST_ANGLE_POS = 356518807;
    public static final int ID_SEAT_HEADREST_FORE_AFT_MOVE = 356518810;
    public static final int ID_SEAT_HEADREST_FORE_AFT_POS = 356518809;
    public static final int ID_SEAT_HEADREST_HEIGHT_MOVE = 356518806;
    public static final int ID_SEAT_HEADREST_HEIGHT_POS = 356518805;
    public static final int ID_SEAT_HEIGHT_MOVE = 356518796;
    public static final int ID_SEAT_HEIGHT_POS = 356518795;
    public static final int ID_SEAT_LUMBAR_FORE_AFT_MOVE = 356518802;
    public static final int ID_SEAT_LUMBAR_FORE_AFT_POS = 356518801;
    public static final int ID_SEAT_LUMBAR_SIDE_SUPPORT_MOVE = 356518804;
    public static final int ID_SEAT_LUMBAR_SIDE_SUPPORT_POS = 356518803;
    public static final int ID_SEAT_MEMORY_SELECT = 356518784;
    public static final int ID_SEAT_MEMORY_SET = 356518785;
    public static final int ID_SEAT_TILT_MOVE = 356518800;
    public static final int ID_SEAT_TILT_POS = 356518799;
    public static final int ID_WINDOW_LOCK = 322964420;
    public static final int ID_WINDOW_MOVE = 322964417;
    public static final int ID_WINDOW_POS = 322964416;
    private static final String TAG = "CarCabinManager";
    private final CarPropertyManager mCarPropertyMgr;
    private final ArraySet<CarCabinEventCallback> mCallbacks = new ArraySet<>();
    private CarPropertyEventListenerToBase mListenerToBase = null;
    private final ArraySet<Integer> mCabinPropertyIds = new ArraySet<>(Arrays.asList(373295872, 373295873, 371198722, 339741504, 339741505, 339741506, 339741507, 287312708, 287312709, 356518784, 356518785, 354421634, 356518787, 356518788, 356518789, 356518790, 356518791, 356518792, 356518793, 356518794, 356518795, 356518796, 356518797, 356518798, 356518799, 356518800, 356518801, 356518802, 356518803, 356518804, Integer.valueOf(ID_SEAT_HEADREST_HEIGHT_POS), 356518806, 356518807, 356518808, 356518809, 356518810, 322964416, 322964417, Integer.valueOf(ID_WINDOW_LOCK)));

    public interface CarCabinEventCallback {
        void onChangeEvent(CarPropertyValue carPropertyValue);

        void onErrorEvent(int r1, int r2);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface PropertyId {
    }

    public static boolean isZonedProperty(int r0) {
        return true;
    }

    private static class CarPropertyEventListenerToBase implements CarPropertyManager.CarPropertyEventCallback {
        private final WeakReference<CarCabinManager> mManager;

        public CarPropertyEventListenerToBase(CarCabinManager carCabinManager) {
            this.mManager = new WeakReference<>(carCabinManager);
        }

        @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
        public void onChangeEvent(CarPropertyValue carPropertyValue) {
            CarCabinManager carCabinManager = this.mManager.get();
            if (carCabinManager != null) {
                carCabinManager.handleOnChangeEvent(carPropertyValue);
            }
        }

        @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
        public void onErrorEvent(int r1, int r2) {
            CarCabinManager carCabinManager = this.mManager.get();
            if (carCabinManager != null) {
                carCabinManager.handleOnErrorEvent(r1, r2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnChangeEvent(CarPropertyValue carPropertyValue) {
        ArraySet arraySet;
        synchronized (this) {
            arraySet = new ArraySet((ArraySet) this.mCallbacks);
        }
        Iterator it = arraySet.iterator();
        while (it.hasNext()) {
            ((CarCabinEventCallback) it.next()).onChangeEvent(carPropertyValue);
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
            ((CarCabinEventCallback) it.next()).onErrorEvent(r3, r4);
        }
    }

    public CarCabinManager(IBinder iBinder, Context context, Handler handler) {
        this.mCarPropertyMgr = new CarPropertyManager(ICarProperty.Stub.asInterface(iBinder), handler);
    }

    public synchronized void registerCallback(CarCabinEventCallback carCabinEventCallback) {
        if (this.mCallbacks.isEmpty()) {
            this.mListenerToBase = new CarPropertyEventListenerToBase(this);
        }
        Iterator<CarPropertyConfig> it = getPropertyList().iterator();
        while (it.hasNext()) {
            this.mCarPropertyMgr.registerCallback(this.mListenerToBase, it.next().getPropertyId(), 0.0f);
        }
        this.mCallbacks.add(carCabinEventCallback);
    }

    public synchronized void unregisterCallback(CarCabinEventCallback carCabinEventCallback) {
        this.mCallbacks.remove(carCabinEventCallback);
        Iterator<CarPropertyConfig> it = getPropertyList().iterator();
        while (it.hasNext()) {
            this.mCarPropertyMgr.unregisterCallback(this.mListenerToBase, it.next().getPropertyId());
        }
        if (this.mCallbacks.isEmpty()) {
            this.mListenerToBase = null;
        }
    }

    public List<CarPropertyConfig> getPropertyList() {
        return this.mCarPropertyMgr.getPropertyList(this.mCabinPropertyIds);
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
        if (this.mCabinPropertyIds.contains(Integer.valueOf(r3))) {
            this.mCarPropertyMgr.setBooleanProperty(r3, r4, z);
        }
    }

    public void setFloatProperty(int r3, int r4, float f) {
        if (this.mCabinPropertyIds.contains(Integer.valueOf(r3))) {
            this.mCarPropertyMgr.setFloatProperty(r3, r4, f);
        }
    }

    public void setIntProperty(int r3, int r4, int r5) {
        if (this.mCabinPropertyIds.contains(Integer.valueOf(r3))) {
            this.mCarPropertyMgr.setIntProperty(r3, r4, r5);
        }
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
        this.mCarPropertyMgr.onCarDisconnected();
    }
}
