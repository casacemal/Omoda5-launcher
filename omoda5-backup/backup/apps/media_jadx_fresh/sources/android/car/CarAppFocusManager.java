package android.car;

import android.car.IAppFocus;
import android.car.IAppFocusListener;
import android.car.IAppFocusOwnershipCallback;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class CarAppFocusManager implements CarManagerBase {
    public static final int APP_FOCUS_MAX = 2;
    public static final int APP_FOCUS_REQUEST_FAILED = 0;
    public static final int APP_FOCUS_REQUEST_SUCCEEDED = 1;
    public static final int APP_FOCUS_TYPE_NAVIGATION = 1;

    @Deprecated
    public static final int APP_FOCUS_TYPE_VOICE_COMMAND = 2;
    private final Handler mHandler;
    private final IAppFocus mService;
    private final Map<OnAppFocusChangedListener, IAppFocusListenerImpl> mChangeBinders = new HashMap();
    private final Map<OnAppFocusOwnershipCallback, IAppFocusOwnershipCallbackImpl> mOwnershipBinders = new HashMap();

    @Retention(RetentionPolicy.SOURCE)
    public @interface AppFocusRequestResult {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface AppFocusType {
    }

    public interface OnAppFocusChangedListener {
        void onAppFocusChanged(int r1, boolean z);
    }

    public interface OnAppFocusOwnershipCallback {
        void onAppFocusOwnershipGranted(int r1);

        void onAppFocusOwnershipLost(int r1);
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
    }

    CarAppFocusManager(IBinder iBinder, Handler handler) {
        this.mService = IAppFocus.Stub.asInterface(iBinder);
        this.mHandler = handler;
    }

    public void addFocusListener(OnAppFocusChangedListener onAppFocusChangedListener, int r4) {
        IAppFocusListenerImpl iAppFocusListenerImpl;
        if (onAppFocusChangedListener == null) {
            throw new IllegalArgumentException("null listener");
        }
        synchronized (this) {
            iAppFocusListenerImpl = this.mChangeBinders.get(onAppFocusChangedListener);
            if (iAppFocusListenerImpl == null) {
                iAppFocusListenerImpl = new IAppFocusListenerImpl(onAppFocusChangedListener);
                this.mChangeBinders.put(onAppFocusChangedListener, iAppFocusListenerImpl);
            }
            iAppFocusListenerImpl.addAppType(r4);
        }
        try {
            this.mService.registerFocusListener(iAppFocusListenerImpl, r4);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void removeFocusListener(OnAppFocusChangedListener onAppFocusChangedListener, int r4) {
        synchronized (this) {
            IAppFocusListenerImpl iAppFocusListenerImpl = this.mChangeBinders.get(onAppFocusChangedListener);
            if (iAppFocusListenerImpl == null) {
                return;
            }
            try {
                this.mService.unregisterFocusListener(iAppFocusListenerImpl, r4);
                synchronized (this) {
                    iAppFocusListenerImpl.removeAppType(r4);
                    if (!iAppFocusListenerImpl.hasAppTypes()) {
                        this.mChangeBinders.remove(onAppFocusChangedListener);
                    }
                }
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public void removeFocusListener(OnAppFocusChangedListener onAppFocusChangedListener) {
        synchronized (this) {
            IAppFocusListenerImpl iAppFocusListenerImplRemove = this.mChangeBinders.remove(onAppFocusChangedListener);
            if (iAppFocusListenerImplRemove == null) {
                return;
            }
            try {
                Iterator<Integer> it = iAppFocusListenerImplRemove.getAppTypes().iterator();
                while (it.hasNext()) {
                    this.mService.unregisterFocusListener(iAppFocusListenerImplRemove, it.next().intValue());
                }
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public int[] getActiveAppTypes() {
        try {
            return this.mService.getActiveAppTypes();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean isOwningFocus(OnAppFocusOwnershipCallback onAppFocusOwnershipCallback, int r3) {
        synchronized (this) {
            IAppFocusOwnershipCallbackImpl iAppFocusOwnershipCallbackImpl = this.mOwnershipBinders.get(onAppFocusOwnershipCallback);
            if (iAppFocusOwnershipCallbackImpl == null) {
                return false;
            }
            try {
                return this.mService.isOwningFocus(iAppFocusOwnershipCallbackImpl, r3);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public int requestAppFocus(int r3, OnAppFocusOwnershipCallback onAppFocusOwnershipCallback) {
        IAppFocusOwnershipCallbackImpl iAppFocusOwnershipCallbackImpl;
        if (onAppFocusOwnershipCallback == null) {
            throw new IllegalArgumentException("null listener");
        }
        synchronized (this) {
            iAppFocusOwnershipCallbackImpl = this.mOwnershipBinders.get(onAppFocusOwnershipCallback);
            if (iAppFocusOwnershipCallbackImpl == null) {
                iAppFocusOwnershipCallbackImpl = new IAppFocusOwnershipCallbackImpl(onAppFocusOwnershipCallback);
                this.mOwnershipBinders.put(onAppFocusOwnershipCallback, iAppFocusOwnershipCallbackImpl);
            }
            iAppFocusOwnershipCallbackImpl.addAppType(r3);
        }
        try {
            return this.mService.requestAppFocus(iAppFocusOwnershipCallbackImpl, r3);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void abandonAppFocus(OnAppFocusOwnershipCallback onAppFocusOwnershipCallback, int r4) {
        if (onAppFocusOwnershipCallback == null) {
            throw new IllegalArgumentException("null callback");
        }
        synchronized (this) {
            IAppFocusOwnershipCallbackImpl iAppFocusOwnershipCallbackImpl = this.mOwnershipBinders.get(onAppFocusOwnershipCallback);
            if (iAppFocusOwnershipCallbackImpl == null) {
                return;
            }
            try {
                this.mService.abandonAppFocus(iAppFocusOwnershipCallbackImpl, r4);
                synchronized (this) {
                    iAppFocusOwnershipCallbackImpl.removeAppType(r4);
                    if (!iAppFocusOwnershipCallbackImpl.hasAppTypes()) {
                        this.mOwnershipBinders.remove(onAppFocusOwnershipCallback);
                    }
                }
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public void abandonAppFocus(OnAppFocusOwnershipCallback onAppFocusOwnershipCallback) {
        synchronized (this) {
            IAppFocusOwnershipCallbackImpl iAppFocusOwnershipCallbackImplRemove = this.mOwnershipBinders.remove(onAppFocusOwnershipCallback);
            if (iAppFocusOwnershipCallbackImplRemove == null) {
                return;
            }
            try {
                Iterator<Integer> it = iAppFocusOwnershipCallbackImplRemove.getAppTypes().iterator();
                while (it.hasNext()) {
                    this.mService.abandonAppFocus(iAppFocusOwnershipCallbackImplRemove, it.next().intValue());
                }
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    private static class IAppFocusListenerImpl extends IAppFocusListener.Stub {
        private final Set<Integer> mAppTypes;
        private final WeakReference<OnAppFocusChangedListener> mListener;
        private final WeakReference<CarAppFocusManager> mManager;

        private IAppFocusListenerImpl(CarAppFocusManager carAppFocusManager, OnAppFocusChangedListener onAppFocusChangedListener) {
            this.mAppTypes = new HashSet();
            this.mManager = new WeakReference<>(carAppFocusManager);
            this.mListener = new WeakReference<>(onAppFocusChangedListener);
        }

        public void addAppType(int r1) {
            this.mAppTypes.add(Integer.valueOf(r1));
        }

        public void removeAppType(int r1) {
            this.mAppTypes.remove(Integer.valueOf(r1));
        }

        public Set<Integer> getAppTypes() {
            return this.mAppTypes;
        }

        public boolean hasAppTypes() {
            return !this.mAppTypes.isEmpty();
        }

        @Override // android.car.IAppFocusListener
        public void onAppFocusChanged(final int r4, final boolean z) {
            CarAppFocusManager carAppFocusManager = this.mManager.get();
            final OnAppFocusChangedListener onAppFocusChangedListener = this.mListener.get();
            if (carAppFocusManager == null || onAppFocusChangedListener == null) {
                return;
            }
            carAppFocusManager.mHandler.post(new Runnable() { // from class: android.car.CarAppFocusManager.IAppFocusListenerImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    onAppFocusChangedListener.onAppFocusChanged(r4, z);
                }
            });
        }
    }

    private static class IAppFocusOwnershipCallbackImpl extends IAppFocusOwnershipCallback.Stub {
        private final Set<Integer> mAppTypes;
        private final WeakReference<OnAppFocusOwnershipCallback> mCallback;
        private final WeakReference<CarAppFocusManager> mManager;

        private IAppFocusOwnershipCallbackImpl(CarAppFocusManager carAppFocusManager, OnAppFocusOwnershipCallback onAppFocusOwnershipCallback) {
            this.mAppTypes = new HashSet();
            this.mManager = new WeakReference<>(carAppFocusManager);
            this.mCallback = new WeakReference<>(onAppFocusOwnershipCallback);
        }

        public void addAppType(int r1) {
            this.mAppTypes.add(Integer.valueOf(r1));
        }

        public void removeAppType(int r1) {
            this.mAppTypes.remove(Integer.valueOf(r1));
        }

        public Set<Integer> getAppTypes() {
            return this.mAppTypes;
        }

        public boolean hasAppTypes() {
            return !this.mAppTypes.isEmpty();
        }

        @Override // android.car.IAppFocusOwnershipCallback
        public void onAppFocusOwnershipLost(final int r4) {
            CarAppFocusManager carAppFocusManager = this.mManager.get();
            final OnAppFocusOwnershipCallback onAppFocusOwnershipCallback = this.mCallback.get();
            if (carAppFocusManager == null || onAppFocusOwnershipCallback == null) {
                return;
            }
            carAppFocusManager.mHandler.post(new Runnable() { // from class: android.car.CarAppFocusManager.IAppFocusOwnershipCallbackImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    onAppFocusOwnershipCallback.onAppFocusOwnershipLost(r4);
                }
            });
        }

        @Override // android.car.IAppFocusOwnershipCallback
        public void onAppFocusOwnershipGranted(final int r4) {
            CarAppFocusManager carAppFocusManager = this.mManager.get();
            final OnAppFocusOwnershipCallback onAppFocusOwnershipCallback = this.mCallback.get();
            if (carAppFocusManager == null || onAppFocusOwnershipCallback == null) {
                return;
            }
            carAppFocusManager.mHandler.post(new Runnable() { // from class: android.car.CarAppFocusManager.IAppFocusOwnershipCallbackImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    onAppFocusOwnershipCallback.onAppFocusOwnershipGranted(r4);
                }
            });
        }
    }
}
