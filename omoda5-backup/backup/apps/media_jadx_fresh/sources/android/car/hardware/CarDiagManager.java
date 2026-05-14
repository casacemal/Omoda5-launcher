package android.car.hardware;

import android.annotation.SystemApi;
import android.car.CarManagerBase;
import android.car.CarNotConnectedException;
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
/* loaded from: classes.dex */
public final class CarDiagManager implements CarManagerBase {
    private static final boolean DBG = false;
    private static final String TAG = "CarDiagManager";
    private final CarPropertyManager mCarPropertyMgr;
    private final ArraySet<CarDiagEventCallback> mCallbacks = new ArraySet<>();
    private CarPropertyEventListenerToBase mListenerToBase = null;
    private final ArraySet<Integer> mDiagPropertyIds = new ArraySet<>(Arrays.asList(561008644, 561008645, 561008650, 561008654, 561008655, 561008656, 561008663, 561008664, 561008665, 561008666, 561008667, 561008668, 561008669, 561008670, 561008671, 561008672, 561008673, 561008674, 561008676, 561008784, 561008677, 561008678, 561008679, 561008680, 561008681, 561008682, 561008683, 561008684, 561008686, 561008687, 561008688, 561008689, 561008690, 561008691, 561008692, 561008693, 561008694, 561008695, 561008696, 561008697, 561008698, 561008699, 561008700, 561008701, 561008702, 561008703, 561008704, 561008705, 561008706, 561008707, 561008708, 561008709, 561008710, 561008711, 561008712, 561008713, 561008714, 561008715, 561008716, 561008717, 561008718, 561008719, 561008720, 561008721, 561008722, 561008723, 561008724, 561008725, 561008726, 561008727, 561008743, 561008744, 561008745, 561008746, 561008747, 561008748, 561008749, 561008750, 561008751, 561008752, 561008753, 561008754, 561008755, 561008756, 561008757, 561008758, 561008759, 561008760, 561008761, 561008762, 561008763, 561008764, 561008765, 561008766, 561008767, 561008768, 561008769, 561008770, 561008771, 561008772, 561008773, 561008778, 561008779, 561008780, 561008781, 561008782, 561008783));

    public interface CarDiagEventCallback {
        void onChangeEvent(CarPropertyValue carPropertyValue);

        void onErrorEvent(int r1, int r2);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface PropertyId {
    }

    private static class CarPropertyEventListenerToBase implements CarPropertyManager.CarPropertyEventCallback {
        private final WeakReference<CarDiagManager> mManager;

        public CarPropertyEventListenerToBase(CarDiagManager carDiagManager) {
            this.mManager = new WeakReference<>(carDiagManager);
        }

        @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
        public void onChangeEvent(CarPropertyValue carPropertyValue) {
            CarDiagManager carDiagManager = this.mManager.get();
            if (carDiagManager != null) {
                carDiagManager.handleOnChangeEvent(carPropertyValue);
            }
        }

        @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
        public void onErrorEvent(int r1, int r2) {
            CarDiagManager carDiagManager = this.mManager.get();
            if (carDiagManager != null) {
                carDiagManager.handleOnErrorEvent(r1, r2);
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
            ((CarDiagEventCallback) it.next()).onChangeEvent(carPropertyValue);
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
            ((CarDiagEventCallback) it.next()).onErrorEvent(r3, r4);
        }
    }

    public CarDiagManager(IBinder iBinder, Context context, Handler handler) {
        this.mCarPropertyMgr = new CarPropertyManager(ICarProperty.Stub.asInterface(iBinder), handler);
    }

    public synchronized void registerCallback(CarDiagEventCallback carDiagEventCallback) {
        if (this.mCallbacks.isEmpty()) {
            this.mListenerToBase = new CarPropertyEventListenerToBase(this);
        }
        Iterator<CarPropertyConfig> it = getPropertyList().iterator();
        while (it.hasNext()) {
            this.mCarPropertyMgr.registerCallback(this.mListenerToBase, it.next().getPropertyId(), 0.0f);
        }
        this.mCallbacks.add(carDiagEventCallback);
    }

    public synchronized void unregisterCallback(CarDiagEventCallback carDiagEventCallback) {
        this.mCallbacks.remove(carDiagEventCallback);
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
        return this.mCarPropertyMgr.getPropertyList(this.mDiagPropertyIds);
    }

    public boolean isPropertyAvailable(int r1, int r2) {
        return this.mCarPropertyMgr.isPropertyAvailable(r1, r2);
    }

    public <E> void setGlobalProperty(Class<E> cls, int r4, E e) throws CarNotConnectedException {
        Log.i(TAG, "setGlobalProperty");
        this.mCarPropertyMgr.setProperty(cls, r4, 0, e);
    }

    public <E> void getGlobalProperty(Class<E> cls, int r3) throws CarNotConnectedException {
        this.mCarPropertyMgr.getProperty(cls, r3, 0);
    }

    public int getIntProperty(int r1, int r2) {
        return this.mCarPropertyMgr.getIntProperty(r1, r2);
    }

    public void setIntProperty(int r3, int r4, int r5) {
        if (this.mDiagPropertyIds.contains(Integer.valueOf(r3))) {
            this.mCarPropertyMgr.setIntProperty(r3, r4, r5);
        }
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
        this.mCarPropertyMgr.onCarDisconnected();
    }
}
