package android.car.drivingstate;

import android.car.CarManagerBase;
import android.car.drivingstate.ICarUxRestrictionsChangeListener;
import android.car.drivingstate.ICarUxRestrictionsManager;
import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class CarUxRestrictionsManager implements CarManagerBase {
    private static final boolean DBG = false;
    private static final int MSG_HANDLE_UX_RESTRICTIONS_CHANGE = 0;
    private static final String TAG = "CarUxRManager";
    public static final int UX_RESTRICTION_MODE_BASELINE = 0;
    public static final int UX_RESTRICTION_MODE_PASSENGER = 1;
    private static final boolean VDBG = false;
    private final Context mContext;
    private int mDisplayId = -1;
    private final EventCallbackHandler mEventCallbackHandler;
    private CarUxRestrictionsChangeListenerToService mListenerToService;
    private OnUxRestrictionsChangedListener mUxRListener;
    private final ICarUxRestrictionsManager mUxRService;

    public interface OnUxRestrictionsChangedListener {
        void onUxRestrictionsChanged(CarUxRestrictions carUxRestrictions);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface UxRestrictionMode {
    }

    public CarUxRestrictionsManager(IBinder iBinder, Context context, Handler handler) {
        this.mContext = context;
        this.mUxRService = ICarUxRestrictionsManager.Stub.asInterface(iBinder);
        this.mEventCallbackHandler = new EventCallbackHandler(this, handler.getLooper());
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
        this.mListenerToService = null;
        synchronized (this) {
            this.mUxRListener = null;
        }
    }

    public void registerListener(OnUxRestrictionsChangedListener onUxRestrictionsChangedListener) {
        registerListener(onUxRestrictionsChangedListener, getDisplayId());
    }

    public void registerListener(OnUxRestrictionsChangedListener onUxRestrictionsChangedListener, int r3) {
        synchronized (this) {
            if (this.mUxRListener != null) {
                return;
            }
            this.mUxRListener = onUxRestrictionsChangedListener;
            try {
                if (this.mListenerToService == null) {
                    this.mListenerToService = new CarUxRestrictionsChangeListenerToService(this);
                }
                this.mUxRService.registerUxRestrictionsChangeListener(this.mListenerToService, r3);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public void unregisterListener() {
        synchronized (this) {
            if (this.mUxRListener == null) {
                return;
            }
            this.mUxRListener = null;
            try {
                this.mUxRService.unregisterUxRestrictionsChangeListener(this.mListenerToService);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public boolean saveUxRestrictionsConfigurationForNextBoot(List<CarUxRestrictionsConfiguration> list) {
        try {
            return this.mUxRService.saveUxRestrictionsConfigurationForNextBoot(list);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public CarUxRestrictions getCurrentCarUxRestrictions() {
        return getCurrentCarUxRestrictions(getDisplayId());
    }

    public CarUxRestrictions getCurrentCarUxRestrictions(int r1) {
        try {
            return this.mUxRService.getCurrentUxRestrictions(r1);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean setRestrictionMode(int r1) {
        try {
            return this.mUxRService.setRestrictionMode(r1);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public int getRestrictionMode() {
        try {
            return this.mUxRService.getRestrictionMode();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean saveUxRestrictionsConfigurationForNextBoot(CarUxRestrictionsConfiguration carUxRestrictionsConfiguration) {
        return saveUxRestrictionsConfigurationForNextBoot(Arrays.asList(carUxRestrictionsConfiguration));
    }

    public List<CarUxRestrictionsConfiguration> getStagedConfigs() {
        try {
            return this.mUxRService.getStagedConfigs();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public List<CarUxRestrictionsConfiguration> getConfigs() {
        try {
            return this.mUxRService.getConfigs();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public static String modeToString(int r3) {
        if (r3 == 0) {
            return "baseline";
        }
        if (r3 == 1) {
            return "passenger";
        }
        throw new IllegalArgumentException("Unrecognized restriction mode " + r3);
    }

    private static class CarUxRestrictionsChangeListenerToService extends ICarUxRestrictionsChangeListener.Stub {
        private final WeakReference<CarUxRestrictionsManager> mUxRestrictionsManager;

        public CarUxRestrictionsChangeListenerToService(CarUxRestrictionsManager carUxRestrictionsManager) {
            this.mUxRestrictionsManager = new WeakReference<>(carUxRestrictionsManager);
        }

        @Override // android.car.drivingstate.ICarUxRestrictionsChangeListener
        public void onUxRestrictionsChanged(CarUxRestrictions carUxRestrictions) {
            CarUxRestrictionsManager carUxRestrictionsManager = this.mUxRestrictionsManager.get();
            if (carUxRestrictionsManager != null) {
                carUxRestrictionsManager.handleUxRestrictionsChanged(carUxRestrictions);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUxRestrictionsChanged(CarUxRestrictions carUxRestrictions) {
        EventCallbackHandler eventCallbackHandler = this.mEventCallbackHandler;
        eventCallbackHandler.sendMessage(eventCallbackHandler.obtainMessage(0, carUxRestrictions));
    }

    private static final class EventCallbackHandler extends Handler {
        private final WeakReference<CarUxRestrictionsManager> mUxRestrictionsManager;

        public EventCallbackHandler(CarUxRestrictionsManager carUxRestrictionsManager, Looper looper) {
            super(looper);
            this.mUxRestrictionsManager = new WeakReference<>(carUxRestrictionsManager);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            CarUxRestrictionsManager carUxRestrictionsManager = this.mUxRestrictionsManager.get();
            if (carUxRestrictionsManager != null) {
                carUxRestrictionsManager.dispatchUxRChangeToClient((CarUxRestrictions) message.obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchUxRChangeToClient(CarUxRestrictions carUxRestrictions) {
        if (carUxRestrictions == null) {
            return;
        }
        synchronized (this) {
            if (this.mUxRListener != null) {
                this.mUxRListener.onUxRestrictionsChanged(carUxRestrictions);
            }
        }
    }

    private int getDisplayId() {
        int r0 = this.mDisplayId;
        if (r0 != -1) {
            return r0;
        }
        this.mDisplayId = this.mContext.getDisplayId();
        Log.i(TAG, "Context returns display ID " + this.mDisplayId);
        if (this.mDisplayId == -1) {
            this.mDisplayId = 0;
            Log.e(TAG, "Could not retrieve display id. Using default: " + this.mDisplayId);
        }
        return this.mDisplayId;
    }
}
