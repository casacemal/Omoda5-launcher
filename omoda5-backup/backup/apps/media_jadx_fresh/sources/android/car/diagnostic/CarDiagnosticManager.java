package android.car.diagnostic;

import android.annotation.SystemApi;
import android.car.Car;
import android.car.CarLibLog;
import android.car.CarManagerBase;
import android.car.diagnostic.ICarDiagnostic;
import android.car.diagnostic.ICarDiagnosticEventListener;
import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.android.car.internal.CarPermission;
import com.android.car.internal.CarRatedListeners;
import com.android.car.internal.SingleMessageHandler;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

@SystemApi
/* loaded from: classes.dex */
public final class CarDiagnosticManager implements CarManagerBase {
    public static final int[] FRAME_TYPES = {0, 1};
    public static final int FRAME_TYPE_FREEZE = 1;
    public static final int FRAME_TYPE_LIVE = 0;
    private static final int MSG_DIAGNOSTIC_EVENTS = 0;
    private final SparseArray<CarDiagnosticListeners> mActiveListeners = new SparseArray<>();
    private final SingleMessageHandler<CarDiagnosticEvent> mHandlerCallback;
    private CarDiagnosticEventListenerToService mListenerToService;
    private final ICarDiagnostic mService;
    private final CarPermission mVendorExtensionPermission;

    @Retention(RetentionPolicy.SOURCE)
    public @interface FrameType {
    }

    public interface OnDiagnosticEventListener {
        void onDiagnosticEvent(CarDiagnosticEvent carDiagnosticEvent);
    }

    public CarDiagnosticManager(IBinder iBinder, Context context, Handler handler) {
        this.mService = ICarDiagnostic.Stub.asInterface(iBinder);
        this.mHandlerCallback = new SingleMessageHandler<CarDiagnosticEvent>(handler.getLooper(), 0) { // from class: android.car.diagnostic.CarDiagnosticManager.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.car.internal.SingleMessageHandler
            public void handleEvent(CarDiagnosticEvent carDiagnosticEvent) {
                CarDiagnosticListeners carDiagnosticListeners;
                synchronized (CarDiagnosticManager.this.mActiveListeners) {
                    carDiagnosticListeners = (CarDiagnosticListeners) CarDiagnosticManager.this.mActiveListeners.get(carDiagnosticEvent.frameType);
                }
                if (carDiagnosticListeners != null) {
                    carDiagnosticListeners.onDiagnosticEvent(carDiagnosticEvent);
                }
            }
        };
        this.mVendorExtensionPermission = new CarPermission(context, Car.PERMISSION_VENDOR_EXTENSION);
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
        synchronized (this.mActiveListeners) {
            this.mActiveListeners.clear();
            this.mListenerToService = null;
        }
    }

    private void assertFrameType(int r3) {
        if (r3 != 0 && r3 != 1) {
            throw new IllegalArgumentException(String.format("%d is not a valid diagnostic frame type", Integer.valueOf(r3)));
        }
    }

    public boolean registerListener(OnDiagnosticEventListener onDiagnosticEventListener, int r7, int r8) {
        boolean z;
        assertFrameType(r7);
        synchronized (this.mActiveListeners) {
            if (this.mListenerToService == null) {
                this.mListenerToService = new CarDiagnosticEventListenerToService(this);
            }
            CarDiagnosticListeners carDiagnosticListeners = this.mActiveListeners.get(r7);
            if (carDiagnosticListeners == null) {
                carDiagnosticListeners = new CarDiagnosticListeners(r8);
                this.mActiveListeners.put(r7, carDiagnosticListeners);
                z = true;
            } else {
                z = false;
            }
            if (carDiagnosticListeners.addAndUpdateRate(onDiagnosticEventListener, r8)) {
                z = true;
            }
            return !z || registerOrUpdateDiagnosticListener(r7, r8);
        }
    }

    public void unregisterListener(OnDiagnosticEventListener onDiagnosticEventListener) {
        synchronized (this.mActiveListeners) {
            for (int r0 : FRAME_TYPES) {
                doUnregisterListenerLocked(onDiagnosticEventListener, r0);
            }
        }
    }

    private void doUnregisterListenerLocked(OnDiagnosticEventListener onDiagnosticEventListener, int r5) {
        CarDiagnosticListeners carDiagnosticListeners = this.mActiveListeners.get(r5);
        if (carDiagnosticListeners != null) {
            boolean zRemove = carDiagnosticListeners.contains(onDiagnosticEventListener) ? carDiagnosticListeners.remove(onDiagnosticEventListener) : false;
            if (!carDiagnosticListeners.isEmpty()) {
                if (zRemove) {
                    registerOrUpdateDiagnosticListener(r5, carDiagnosticListeners.getRate());
                }
            } else {
                try {
                    this.mService.unregisterDiagnosticListener(r5, this.mListenerToService);
                    this.mActiveListeners.remove(r5);
                } catch (RemoteException e) {
                    throw e.rethrowFromSystemServer();
                }
            }
        }
    }

    private boolean registerOrUpdateDiagnosticListener(int r2, int r3) {
        try {
            return this.mService.registerOrUpdateDiagnosticListener(r2, r3, this.mListenerToService);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public CarDiagnosticEvent getLatestLiveFrame() {
        try {
            return this.mService.getLatestLiveFrame();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public long[] getFreezeFrameTimestamps() {
        try {
            return this.mService.getFreezeFrameTimestamps();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public CarDiagnosticEvent getFreezeFrame(long j) {
        try {
            return this.mService.getFreezeFrame(j);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean clearFreezeFrames(long... jArr) {
        try {
            return this.mService.clearFreezeFrames(jArr);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean isLiveFrameSupported() {
        try {
            return this.mService.isLiveFrameSupported();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean isFreezeFrameNotificationSupported() {
        try {
            return this.mService.isFreezeFrameNotificationSupported();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean isGetFreezeFrameSupported() {
        try {
            return this.mService.isGetFreezeFrameSupported();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean isClearFreezeFramesSupported() {
        try {
            return this.mService.isClearFreezeFramesSupported();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean isSelectiveClearFreezeFramesSupported() {
        try {
            return this.mService.isSelectiveClearFreezeFramesSupported();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    private static class CarDiagnosticEventListenerToService extends ICarDiagnosticEventListener.Stub {
        private final WeakReference<CarDiagnosticManager> mManager;

        public CarDiagnosticEventListenerToService(CarDiagnosticManager carDiagnosticManager) {
            this.mManager = new WeakReference<>(carDiagnosticManager);
        }

        private void handleOnDiagnosticEvents(CarDiagnosticManager carDiagnosticManager, List<CarDiagnosticEvent> list) {
            carDiagnosticManager.mHandlerCallback.sendEvents(list);
        }

        @Override // android.car.diagnostic.ICarDiagnosticEventListener
        public void onDiagnosticEvents(List<CarDiagnosticEvent> list) {
            CarDiagnosticManager carDiagnosticManager = this.mManager.get();
            if (carDiagnosticManager != null) {
                handleOnDiagnosticEvents(carDiagnosticManager, list);
            }
        }
    }

    private class CarDiagnosticListeners extends CarRatedListeners<OnDiagnosticEventListener> {
        CarDiagnosticListeners(int r2) {
            super(r2);
        }

        void onDiagnosticEvent(final CarDiagnosticEvent carDiagnosticEvent) {
            ArrayList arrayList;
            long j = carDiagnosticEvent.timestamp;
            if (j < this.mLastUpdateTime) {
                Log.w(CarLibLog.TAG_DIAGNOSTIC, "dropping old data");
                return;
            }
            this.mLastUpdateTime = j;
            if (!CarDiagnosticManager.this.mVendorExtensionPermission.checkGranted()) {
                carDiagnosticEvent = carDiagnosticEvent.withVendorSensorsRemoved();
            }
            synchronized (CarDiagnosticManager.this.mActiveListeners) {
                arrayList = new ArrayList(getListeners());
            }
            arrayList.forEach(new Consumer<OnDiagnosticEventListener>() { // from class: android.car.diagnostic.CarDiagnosticManager.CarDiagnosticListeners.1
                @Override // java.util.function.Consumer
                public void accept(OnDiagnosticEventListener onDiagnosticEventListener) {
                    onDiagnosticEventListener.onDiagnosticEvent(carDiagnosticEvent);
                }
            });
        }
    }
}
