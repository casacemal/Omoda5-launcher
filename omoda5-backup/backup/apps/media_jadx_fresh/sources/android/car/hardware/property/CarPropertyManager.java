package android.car.hardware.property;

import android.car.CarManagerBase;
import android.car.YFVehiclePropertyIds;
import android.car.hardware.CarPropertyConfig;
import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.ICarPropertyEventListener;
import android.car.trust.TrustedDeviceInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.util.ArraySet;
import android.util.Log;
import android.util.SparseArray;
import com.android.car.internal.CarRatedFloatListeners;
import com.android.car.internal.SingleMessageHandler;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class CarPropertyManager implements CarManagerBase {
    private static final boolean DBG = true;
    private static final int MSG_GENERIC_EVENT = 0;
    public static final float SENSOR_RATE_FAST = 10.0f;
    public static final float SENSOR_RATE_FASTEST = 100.0f;
    public static final float SENSOR_RATE_NORMAL = 1.0f;
    public static final float SENSOR_RATE_ONCHANGE = 0.0f;
    public static final float SENSOR_RATE_UI = 5.0f;
    private static final String TAG = "CarPropertyManager";
    private CarPropertyEventListenerToService mCarPropertyEventToService;
    private final SingleMessageHandler<CarPropertyEvent> mHandler;
    private final ICarProperty mService;
    private final SparseArray<CarPropertyListeners> mActivePropertyListener = new SparseArray<>();
    private final SparseArray<CarPropertyConfig> mConfigMap = new SparseArray<>();

    public interface CarPropertyEventCallback {
        void onChangeEvent(CarPropertyValue carPropertyValue);

        void onErrorEvent(int r1, int r2);
    }

    public CarPropertyManager(ICarProperty iCarProperty, Handler handler) {
        this.mService = iCarProperty;
        try {
            for (CarPropertyConfig carPropertyConfig : iCarProperty.getPropertyList()) {
                this.mConfigMap.put(carPropertyConfig.getPropertyId(), carPropertyConfig);
            }
            if (handler == null) {
                this.mHandler = null;
            } else {
                this.mHandler = new SingleMessageHandler<CarPropertyEvent>(handler.getLooper(), 0) { // from class: android.car.hardware.property.CarPropertyManager.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.android.car.internal.SingleMessageHandler
                    public void handleEvent(CarPropertyEvent carPropertyEvent) {
                        CarPropertyListeners carPropertyListeners;
                        synchronized (CarPropertyManager.this.mActivePropertyListener) {
                            carPropertyListeners = (CarPropertyListeners) CarPropertyManager.this.mActivePropertyListener.get(carPropertyEvent.getCarPropertyValue().getPropertyId());
                        }
                        if (carPropertyListeners != null) {
                            int eventType = carPropertyEvent.getEventType();
                            if (eventType == 0) {
                                carPropertyListeners.onPropertyChanged(carPropertyEvent);
                            } else {
                                if (eventType == 1) {
                                    carPropertyListeners.onErrorEvent(carPropertyEvent);
                                    return;
                                }
                                throw new IllegalArgumentException();
                            }
                        }
                    }
                };
            }
        } catch (Exception e) {
            Log.e(TAG, "getPropertyList exception ", e);
            throw new RuntimeException(e);
        }
    }

    public boolean registerCallback(CarPropertyEventCallback carPropertyEventCallback, int r7, float f) {
        boolean z;
        synchronized (this.mActivePropertyListener) {
            if (this.mCarPropertyEventToService == null) {
                this.mCarPropertyEventToService = new CarPropertyEventListenerToService(this);
            }
            CarPropertyConfig carPropertyConfig = this.mConfigMap.get(r7);
            if (carPropertyConfig == null) {
                Log.e(TAG, "registerListener:  propId is not in config list:  " + r7);
                return false;
            }
            if (carPropertyConfig.getChangeMode() == 1) {
                f = 0.0f;
            }
            CarPropertyListeners carPropertyListeners = this.mActivePropertyListener.get(r7);
            if (carPropertyListeners == null) {
                carPropertyListeners = new CarPropertyListeners(f);
                this.mActivePropertyListener.put(r7, carPropertyListeners);
                z = true;
            } else {
                z = false;
            }
            if (carPropertyListeners.addAndUpdateRate(carPropertyEventCallback, f)) {
                z = true;
            }
            return !z || registerOrUpdatePropertyListener(r7, f);
        }
    }

    private boolean registerOrUpdatePropertyListener(int r2, float f) {
        try {
            this.mService.registerListener(r2, f, this.mCarPropertyEventToService);
            return true;
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    private static class CarPropertyEventListenerToService extends ICarPropertyEventListener.Stub {
        private final WeakReference<CarPropertyManager> mMgr;

        CarPropertyEventListenerToService(CarPropertyManager carPropertyManager) {
            this.mMgr = new WeakReference<>(carPropertyManager);
        }

        @Override // android.car.hardware.property.ICarPropertyEventListener
        public void onEvent(List<CarPropertyEvent> list) throws RemoteException {
            CarPropertyManager carPropertyManager = this.mMgr.get();
            if (carPropertyManager != null) {
                carPropertyManager.handleEvent(list);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEvent(List<CarPropertyEvent> list) {
        SingleMessageHandler<CarPropertyEvent> singleMessageHandler = this.mHandler;
        if (singleMessageHandler != null) {
            singleMessageHandler.sendEvents(list);
        }
    }

    public void unregisterCallback(CarPropertyEventCallback carPropertyEventCallback) {
        synchronized (this.mActivePropertyListener) {
            int size = this.mActivePropertyListener.size();
            int[] r2 = new int[size];
            for (int r4 = 0; r4 < this.mActivePropertyListener.size(); r4++) {
                r2[r4] = this.mActivePropertyListener.keyAt(r4);
            }
            for (int r3 = 0; r3 < size; r3++) {
                doUnregisterListenerLocked(carPropertyEventCallback, r2[r3]);
            }
        }
    }

    public void unregisterCallback(CarPropertyEventCallback carPropertyEventCallback, int r3) {
        synchronized (this.mActivePropertyListener) {
            doUnregisterListenerLocked(carPropertyEventCallback, r3);
        }
    }

    private void doUnregisterListenerLocked(CarPropertyEventCallback carPropertyEventCallback, int r5) {
        CarPropertyListeners carPropertyListeners = this.mActivePropertyListener.get(r5);
        if (carPropertyListeners != null) {
            boolean zRemove = carPropertyListeners.contains(carPropertyEventCallback) ? carPropertyListeners.remove(carPropertyEventCallback) : false;
            if (!carPropertyListeners.isEmpty()) {
                if (zRemove) {
                    registerOrUpdatePropertyListener(r5, carPropertyListeners.getRate());
                }
            } else {
                try {
                    this.mService.unregisterListener(r5, this.mCarPropertyEventToService);
                    this.mActivePropertyListener.remove(r5);
                } catch (RemoteException e) {
                    throw e.rethrowFromSystemServer();
                }
            }
        }
    }

    public List<CarPropertyConfig> getPropertyList() {
        ArrayList arrayList = new ArrayList(this.mConfigMap.size());
        for (int r1 = 0; r1 < this.mConfigMap.size(); r1++) {
            arrayList.add(this.mConfigMap.valueAt(r1));
        }
        return arrayList;
    }

    public List<CarPropertyConfig> getPropertyList(ArraySet<Integer> arraySet) {
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = arraySet.iterator();
        while (it.hasNext()) {
            CarPropertyConfig carPropertyConfig = this.mConfigMap.get(it.next().intValue());
            if (carPropertyConfig != null) {
                arrayList.add(carPropertyConfig);
            }
        }
        return arrayList;
    }

    public String getReadPermission(int r3) {
        Log.d(TAG, "getReadPermission, propId: 0x" + Integer.toHexString(r3));
        try {
            return this.mService.getReadPermission(r3);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public String getWritePermission(int r3) {
        Log.d(TAG, "getWritePermission, propId: 0x" + Integer.toHexString(r3));
        try {
            return this.mService.getWritePermission(r3);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean isPropertyAvailable(int r1, int r2) {
        try {
            CarPropertyValue property = this.mService.getProperty(r1, r2);
            if (property != null) {
                if (property.getStatus() == 0) {
                    return true;
                }
            }
            return false;
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean getBooleanProperty(int r2, int r3) {
        CarPropertyValue property = getProperty(Boolean.class, r2, r3);
        if (property != null) {
            return ((Boolean) property.getValue()).booleanValue();
        }
        return false;
    }

    public float getFloatProperty(int r2, int r3) {
        CarPropertyValue property = getProperty(Float.class, r2, r3);
        if (property != null) {
            return ((Float) property.getValue()).floatValue();
        }
        return 0.0f;
    }

    public int getIntProperty(int r2, int r3) {
        CarPropertyValue property = getProperty(Integer.class, r2, r3);
        if (property != null) {
            return ((Integer) property.getValue()).intValue();
        }
        return 0;
    }

    public int[] getIntArrayProperty(int r2, int r3) {
        CarPropertyValue property = getProperty(Integer[].class, r2, r3);
        return property != null ? toIntArray((Integer[]) property.getValue()) : new int[0];
    }

    private static int[] toIntArray(Integer[] numArr) {
        int length = numArr.length;
        int[] r1 = new int[length];
        for (int r2 = 0; r2 < length; r2++) {
            r1[r2] = numArr[r2].intValue();
        }
        return r1;
    }

    public <E> CarPropertyValue<E> getProperty(Class<E> cls, int r4, int r5) {
        Class<?> cls2;
        Log.d(TAG, "getProperty, propId: " + YFVehiclePropertyIds.toString(r4) + ", areaId: 0x" + Integer.toHexString(r5) + ", class: " + cls);
        try {
            CarPropertyValue<E> property = this.mService.getProperty(r4, r5);
            if (property != null && property.getValue() != null && (cls2 = property.getValue().getClass()) != cls) {
                throw new IllegalArgumentException("Invalid property type. Expected: " + cls + ", but was: " + cls2);
            }
            return property;
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public <E> CarPropertyValue<E> getProperty(int r1, int r2) {
        try {
            return this.mService.getProperty(r1, r2);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public <E> void setProperty(Class<E> cls, int r4, int r5, E e) {
        Log.d(TAG, "setProperty, propId: " + YFVehiclePropertyIds.toString(r4) + ", areaId: 0x" + Integer.toHexString(r5) + ", class: " + cls + ", val: " + e);
        try {
            this.mService.setProperty(new CarPropertyValue(r4, r5, e));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setBooleanProperty(int r2, int r3, boolean z) {
        setProperty(Boolean.class, r2, r3, Boolean.valueOf(z));
    }

    public void setFloatProperty(int r2, int r3, float f) {
        setProperty(Float.class, r2, r3, Float.valueOf(f));
    }

    public void setIntProperty(int r2, int r3, int r4) {
        setProperty(Integer.class, r2, r3, Integer.valueOf(r4));
    }

    public void setIPCTime(Bundle bundle) throws NumberFormatException {
        String string = bundle.getString("Time", TrustedDeviceInfo.DEFAULT_NAME);
        Log.i(TAG, "setIPCTime: Receive time from app : " + string);
        if (TrustedDeviceInfo.DEFAULT_NAME.equals(string)) {
            Log.i(TAG, "setIPCtime: Receive time from app error" + string);
            return;
        }
        int r2 = Integer.parseInt(string.substring(0, 4)) - 2000;
        int r1 = Integer.parseInt(string.substring(4, 6));
        int r3 = Integer.parseInt(string.substring(6, 8));
        int r4 = Integer.parseInt(string.substring(8, 10));
        int r5 = Integer.parseInt(string.substring(10, 12));
        int r9 = Integer.parseInt(string.substring(12, 14));
        setIntProperty(557854766, 0, r2);
        setIntProperty(557854767, 0, r1);
        setIntProperty(557854768, 0, r3);
        setIntProperty(557854769, 0, r4);
        setIntProperty(557854770, 0, r5);
        setIntProperty(557854771, 0, r9);
    }

    public void setGPSTime(Bundle bundle) throws NumberFormatException {
        String string = bundle.getString("Time", TrustedDeviceInfo.DEFAULT_NAME);
        Log.i(TAG, "setGPSTime: Receive time from app : " + string);
        if (TrustedDeviceInfo.DEFAULT_NAME.equals(string)) {
            Log.i(TAG, "setGPSTime: Receive time from app error" + string);
            return;
        }
        int r2 = Integer.parseInt(string.substring(0, 4)) - 2000;
        int r1 = Integer.parseInt(string.substring(4, 6));
        int r3 = Integer.parseInt(string.substring(6, 8));
        int r4 = Integer.parseInt(string.substring(8, 10));
        int r5 = Integer.parseInt(string.substring(10, 12));
        int r9 = Integer.parseInt(string.substring(12, 14));
        setIntProperty(557854813, 0, r2);
        setIntProperty(557854815, 0, r1);
        setIntProperty(557854816, 0, r3);
        setIntProperty(557854817, 0, r4);
        setIntProperty(557854818, 0, r5);
        setIntProperty(557854819, 0, r9);
    }

    public boolean setOBABroadcast(int r3, int r4) throws InterruptedException {
        Log.i(TAG, "setOBABroadcast: ");
        setIntProperty(557854800, 0, r3);
        setIntProperty(557854801, 0, r4);
        try {
            Thread.sleep(1000L);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    private class CarPropertyListeners extends CarRatedFloatListeners<CarPropertyEventCallback> {
        CarPropertyListeners(float f) {
            super(f);
        }

        void onPropertyChanged(final CarPropertyEvent carPropertyEvent) {
            ArrayList arrayList;
            final long timestamp = carPropertyEvent.getCarPropertyValue().getTimestamp();
            if (timestamp < this.mLastUpdateTime) {
                Log.w(CarPropertyManager.TAG, "dropping old property data");
                return;
            }
            this.mLastUpdateTime = timestamp;
            synchronized (CarPropertyManager.this.mActivePropertyListener) {
                arrayList = new ArrayList(getListeners());
            }
            arrayList.forEach(new Consumer<CarPropertyEventCallback>() { // from class: android.car.hardware.property.CarPropertyManager.CarPropertyListeners.1
                @Override // java.util.function.Consumer
                public void accept(CarPropertyEventCallback carPropertyEventCallback) {
                    if (CarPropertyListeners.this.needUpdate(carPropertyEventCallback, timestamp)) {
                        carPropertyEventCallback.onChangeEvent(carPropertyEvent.getCarPropertyValue());
                        Log.i(CarPropertyManager.TAG, "PropID,area,value:" + YFVehiclePropertyIds.toString(carPropertyEvent.getCarPropertyValue().getPropertyId()) + "_" + carPropertyEvent.getCarPropertyValue().getAreaId() + "_" + carPropertyEvent.getCarPropertyValue().getValue());
                    }
                }
            });
        }

        void onErrorEvent(CarPropertyEvent carPropertyEvent) {
            ArrayList arrayList;
            final CarPropertyValue<?> carPropertyValue = carPropertyEvent.getCarPropertyValue();
            synchronized (CarPropertyManager.this.mActivePropertyListener) {
                arrayList = new ArrayList(getListeners());
            }
            arrayList.forEach(new Consumer<CarPropertyEventCallback>() { // from class: android.car.hardware.property.CarPropertyManager.CarPropertyListeners.2
                @Override // java.util.function.Consumer
                public void accept(CarPropertyEventCallback carPropertyEventCallback) {
                    Log.d(CarPropertyManager.TAG, "onErrorEvent for property: " + carPropertyValue.getPropertyId() + " areaId: " + carPropertyValue.getAreaId());
                    carPropertyEventCallback.onErrorEvent(carPropertyValue.getPropertyId(), carPropertyValue.getAreaId());
                }
            });
        }
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
        synchronized (this.mActivePropertyListener) {
            this.mActivePropertyListener.clear();
            this.mCarPropertyEventToService = null;
        }
    }
}
