package android.car.hardware;

import android.annotation.SystemApi;
import android.car.CarManagerBase;
import android.car.hardware.property.CarPropertyManager;
import android.car.hardware.property.ICarProperty;
import android.os.Handler;
import android.os.IBinder;
import android.util.ArraySet;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@SystemApi
@Deprecated
/* loaded from: classes.dex */
public final class CarVendorExtensionManager implements CarManagerBase {
    private static final boolean DBG = false;
    private static final String TAG = CarVendorExtensionManager.class.getSimpleName();
    private final CarPropertyManager mPropertyManager;
    private final ArraySet<CarVendorExtensionCallback> mCallbacks = new ArraySet<>();
    private final Object mLock = new Object();
    private CarPropertyEventListenerToBase mListenerToBase = null;

    public interface CarVendorExtensionCallback {
        void onChangeEvent(CarPropertyValue carPropertyValue);

        void onErrorEvent(int r1, int r2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnChangeEvent(CarPropertyValue carPropertyValue) {
        ArrayList arrayList;
        synchronized (this.mLock) {
            arrayList = new ArrayList(this.mCallbacks);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((CarVendorExtensionCallback) it.next()).onChangeEvent(carPropertyValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnErrorEvent(int r3, int r4) {
        ArrayList arrayList;
        synchronized (this.mLock) {
            arrayList = new ArrayList(this.mCallbacks);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((CarVendorExtensionCallback) it.next()).onErrorEvent(r3, r4);
        }
    }

    public CarVendorExtensionManager(IBinder iBinder, Handler handler) {
        this.mPropertyManager = new CarPropertyManager(ICarProperty.Stub.asInterface(iBinder), handler);
    }

    public void registerCallback(CarVendorExtensionCallback carVendorExtensionCallback) {
        synchronized (this.mLock) {
            if (this.mCallbacks.isEmpty()) {
                this.mListenerToBase = new CarPropertyEventListenerToBase(this);
            }
            Iterator<CarPropertyConfig> it = this.mPropertyManager.getPropertyList().iterator();
            while (it.hasNext()) {
                this.mPropertyManager.registerCallback(this.mListenerToBase, it.next().getPropertyId(), 0.0f);
            }
            this.mCallbacks.add(carVendorExtensionCallback);
        }
    }

    public void unregisterCallback(CarVendorExtensionCallback carVendorExtensionCallback) {
        synchronized (this.mLock) {
            this.mCallbacks.remove(carVendorExtensionCallback);
            Iterator<CarPropertyConfig> it = this.mPropertyManager.getPropertyList().iterator();
            while (it.hasNext()) {
                this.mPropertyManager.unregisterCallback(this.mListenerToBase, it.next().getPropertyId());
            }
            if (this.mCallbacks.isEmpty()) {
                this.mListenerToBase = null;
            }
        }
    }

    public List<CarPropertyConfig> getProperties() {
        return this.mPropertyManager.getPropertyList();
    }

    public boolean isPropertyAvailable(int r1, int r2) {
        return this.mPropertyManager.isPropertyAvailable(r1, r2);
    }

    public <E> E getGlobalProperty(Class<E> cls, int r3) {
        return (E) getProperty(cls, r3, 0);
    }

    public <E> E getProperty(Class<E> cls, int r2, int r3) {
        return this.mPropertyManager.getProperty(cls, r2, r3).getValue();
    }

    public <E> void setGlobalProperty(Class<E> cls, int r3, E e) {
        this.mPropertyManager.setProperty(cls, r3, 0, e);
    }

    public <E> void setProperty(Class<E> cls, int r2, int r3, E e) {
        this.mPropertyManager.setProperty(cls, r2, r3, e);
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
        this.mPropertyManager.onCarDisconnected();
    }

    private static class CarPropertyEventListenerToBase implements CarPropertyManager.CarPropertyEventCallback {
        private final WeakReference<CarVendorExtensionManager> mManager;

        CarPropertyEventListenerToBase(CarVendorExtensionManager carVendorExtensionManager) {
            this.mManager = new WeakReference<>(carVendorExtensionManager);
        }

        @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
        public void onChangeEvent(CarPropertyValue carPropertyValue) {
            CarVendorExtensionManager carVendorExtensionManager = this.mManager.get();
            if (carVendorExtensionManager != null) {
                carVendorExtensionManager.handleOnChangeEvent(carPropertyValue);
            }
        }

        @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
        public void onErrorEvent(int r1, int r2) {
            CarVendorExtensionManager carVendorExtensionManager = this.mManager.get();
            if (carVendorExtensionManager != null) {
                carVendorExtensionManager.handleOnErrorEvent(r1, r2);
            }
        }
    }
}
