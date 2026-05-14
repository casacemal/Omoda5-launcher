package android.car;

import android.annotation.SystemApi;
import android.bluetooth.BluetoothDevice;
import android.car.ICarProjection;
import android.car.ICarProjectionKeyEventHandler;
import android.car.ICarProjectionStatusListener;
import android.car.projection.ProjectionStatus;
import android.content.Intent;
import android.net.wifi.WifiConfiguration;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.ArraySet;
import android.util.Log;
import android.util.Pair;
import com.android.internal.util.Preconditions;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;

@SystemApi
/* loaded from: classes.dex */
public final class CarProjectionManager implements CarManagerBase {
    public static final int KEY_EVENT_CALL_KEY_DOWN = 4;
    public static final int KEY_EVENT_CALL_LONG_PRESS_KEY_DOWN = 6;
    public static final int KEY_EVENT_CALL_LONG_PRESS_KEY_UP = 7;
    public static final int KEY_EVENT_CALL_SHORT_PRESS_KEY_UP = 5;
    public static final int KEY_EVENT_VOICE_SEARCH_KEY_DOWN = 0;
    public static final int KEY_EVENT_VOICE_SEARCH_LONG_PRESS_KEY_DOWN = 2;
    public static final int KEY_EVENT_VOICE_SEARCH_LONG_PRESS_KEY_UP = 3;
    public static final int KEY_EVENT_VOICE_SEARCH_SHORT_PRESS_KEY_UP = 1;
    public static final int NUM_KEY_EVENTS = 8;
    public static final int PROJECTION_AP_FAILED = 2;
    public static final int PROJECTION_AP_STARTED = 0;
    public static final int PROJECTION_AP_STOPPED = 1;

    @Deprecated
    public static final int PROJECTION_LONG_PRESS_VOICE_SEARCH = 2;

    @Deprecated
    public static final int PROJECTION_VOICE_SEARCH = 1;
    private static final String TAG = CarProjectionManager.class.getSimpleName();
    private static final IBinder mAccessPointProxyToken = new Binder();
    private CarProjectionStatusListenerImpl mCarProjectionStatusListener;
    private final Handler mHandler;
    private final Executor mHandlerExecutor;
    private CarProjectionListener mListener;
    private ProjectionAccessPointCallbackProxy mProjectionAccessPointCallbackProxy;
    private final ICarProjection mService;
    private int mVoiceSearchFilter;
    private final Binder mToken = new Binder();
    private final Object mLock = new Object();
    private final ProjectionKeyEventHandler mLegacyListenerTranslator = new ProjectionKeyEventHandler() { // from class: android.car.-$$Lambda$CarProjectionManager$BMXU8XLW9el2hlnphNAT6ETl2JM
        @Override // android.car.CarProjectionManager.ProjectionKeyEventHandler
        public final void onKeyEvent(int r1) {
            this.f$0.translateKeyEventToLegacyListener(r1);
        }
    };
    private final ICarProjectionKeyEventHandlerImpl mBinderHandler = new ICarProjectionKeyEventHandlerImpl();
    private final Map<ProjectionKeyEventHandler, KeyEventHandlerRecord> mKeyEventHandlers = new HashMap();
    private BitSet mHandledEvents = new BitSet();
    private final Set<ProjectionStatusListener> mProjectionStatusListeners = new LinkedHashSet();

    public interface CarProjectionListener {
        void onVoiceAssistantRequest(boolean z);
    }

    @Target({ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface KeyEventNum {
    }

    public static abstract class ProjectionAccessPointCallback {
        public static final int ERROR_GENERIC = 2;
        public static final int ERROR_INCOMPATIBLE_MODE = 3;
        public static final int ERROR_NO_CHANNEL = 1;
        public static final int ERROR_TETHERING_DISALLOWED = 4;

        public void onFailed(int r1) {
        }

        public void onStarted(WifiConfiguration wifiConfiguration) {
        }

        public void onStopped() {
        }
    }

    public interface ProjectionKeyEventHandler {
        void onKeyEvent(int r1);
    }

    public interface ProjectionStatusListener {
        void onProjectionStatusChanged(int r1, String str, List<ProjectionStatus> list);
    }

    @Override // android.car.CarManagerBase
    public void onCarDisconnected() {
    }

    public CarProjectionManager(IBinder iBinder, final Handler handler) {
        this.mService = ICarProjection.Stub.asInterface(iBinder);
        this.mHandler = handler;
        Objects.requireNonNull(handler);
        this.mHandlerExecutor = new Executor() { // from class: android.car.-$$Lambda$CarProjectionManager$LfzJt661qZfn2w-6SYHFbD3aMy0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    public void regsiterProjectionListener(CarProjectionListener carProjectionListener, int r2) {
        registerProjectionListener(carProjectionListener, r2);
    }

    public void registerProjectionListener(CarProjectionListener carProjectionListener, int r5) {
        Preconditions.checkNotNull(carProjectionListener, "listener cannot be null");
        synchronized (this.mLock) {
            if (this.mListener == null || this.mVoiceSearchFilter != r5) {
                addKeyEventHandler(translateVoiceSearchFilter(r5), this.mLegacyListenerTranslator);
            }
            this.mListener = carProjectionListener;
            this.mVoiceSearchFilter = r5;
        }
    }

    public void unregsiterProjectionListener() {
        unregisterProjectionListener();
    }

    public void unregisterProjectionListener() {
        synchronized (this.mLock) {
            removeKeyEventHandler(this.mLegacyListenerTranslator);
            this.mListener = null;
            this.mVoiceSearchFilter = 0;
        }
    }

    private static Set<Integer> translateVoiceSearchFilter(int r2) {
        ArraySet arraySet = new ArraySet(Integer.bitCount(r2));
        if ((r2 & 1) != 0) {
            arraySet.add(1);
        }
        if ((r2 & 2) != 0) {
            arraySet.add(2);
        }
        return arraySet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void translateKeyEventToLegacyListener(int r4) {
        synchronized (this.mLock) {
            if (this.mListener == null) {
                return;
            }
            CarProjectionListener carProjectionListener = this.mListener;
            boolean z = true;
            if (r4 == 1) {
                z = false;
            } else if (r4 != 2) {
                Log.e(TAG, "Unexpected key event " + r4);
                return;
            }
            Log.d(TAG, "Voice assistant request, long-press = " + z);
            carProjectionListener.onVoiceAssistantRequest(z);
        }
    }

    public void addKeyEventHandler(Set<Integer> set, ProjectionKeyEventHandler projectionKeyEventHandler) {
        addKeyEventHandler(set, null, projectionKeyEventHandler);
    }

    public void addKeyEventHandler(Set<Integer> set, Executor executor, ProjectionKeyEventHandler projectionKeyEventHandler) {
        BitSet bitSet = new BitSet();
        Iterator<Integer> it = set.iterator();
        while (it.hasNext()) {
            int r1 = it.next().intValue();
            Preconditions.checkArgument(r1 >= 0 && r1 < 8, "Invalid key event");
            bitSet.set(r1);
        }
        if (bitSet.isEmpty()) {
            removeKeyEventHandler(projectionKeyEventHandler);
            return;
        }
        if (executor == null) {
            executor = this.mHandlerExecutor;
        }
        synchronized (this.mLock) {
            KeyEventHandlerRecord keyEventHandlerRecord = this.mKeyEventHandlers.get(projectionKeyEventHandler);
            if (keyEventHandlerRecord == null) {
                this.mKeyEventHandlers.put(projectionKeyEventHandler, new KeyEventHandlerRecord(executor, bitSet));
            } else {
                keyEventHandlerRecord.mExecutor = executor;
                keyEventHandlerRecord.mSubscribedEvents = bitSet;
            }
            updateHandledEventsLocked();
        }
    }

    public void removeKeyEventHandler(ProjectionKeyEventHandler projectionKeyEventHandler) {
        synchronized (this.mLock) {
            if (this.mKeyEventHandlers.remove(projectionKeyEventHandler) != null) {
                updateHandledEventsLocked();
            }
        }
    }

    private void updateHandledEventsLocked() {
        BitSet bitSet = new BitSet();
        Iterator<KeyEventHandlerRecord> it = this.mKeyEventHandlers.values().iterator();
        while (it.hasNext()) {
            bitSet.or(it.next().mSubscribedEvents);
        }
        if (bitSet.equals(this.mHandledEvents)) {
            return;
        }
        try {
            if (!bitSet.isEmpty()) {
                Log.d(TAG, "Registering handler with system for " + bitSet);
                this.mService.registerKeyEventHandler(this.mBinderHandler, bitSet.toByteArray());
            } else {
                Log.d(TAG, "Unregistering handler with system");
                this.mService.unregisterKeyEventHandler(this.mBinderHandler);
            }
            this.mHandledEvents = bitSet;
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void registerProjectionRunner(Intent intent) {
        Preconditions.checkNotNull("serviceIntent cannot be null");
        synchronized (this.mLock) {
            try {
                try {
                    this.mService.registerProjectionRunner(intent);
                } catch (RemoteException e) {
                    throw e.rethrowFromSystemServer();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unregisterProjectionRunner(Intent intent) {
        Preconditions.checkNotNull("serviceIntent cannot be null");
        synchronized (this.mLock) {
            try {
                try {
                    this.mService.unregisterProjectionRunner(intent);
                } catch (RemoteException e) {
                    throw e.rethrowFromSystemServer();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void startProjectionAccessPoint(ProjectionAccessPointCallback projectionAccessPointCallback) {
        Preconditions.checkNotNull(projectionAccessPointCallback, "callback cannot be null");
        synchronized (this.mLock) {
            ProjectionAccessPointCallbackProxy projectionAccessPointCallbackProxy = new ProjectionAccessPointCallbackProxy(this, this.mHandler.getLooper(), projectionAccessPointCallback);
            try {
                this.mService.startProjectionAccessPoint(projectionAccessPointCallbackProxy.getMessenger(), mAccessPointProxyToken);
                this.mProjectionAccessPointCallbackProxy = projectionAccessPointCallbackProxy;
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public List<Integer> getAvailableWifiChannels(int r4) {
        try {
            int[] availableWifiChannels = this.mService.getAvailableWifiChannels(r4);
            ArrayList arrayList = new ArrayList(availableWifiChannels.length);
            for (int r0 : availableWifiChannels) {
                arrayList.add(Integer.valueOf(r0));
            }
            return arrayList;
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void stopProjectionAccessPoint() {
        ProjectionAccessPointCallbackProxy projectionAccessPointCallbackProxy;
        synchronized (this.mLock) {
            projectionAccessPointCallbackProxy = this.mProjectionAccessPointCallbackProxy;
            this.mProjectionAccessPointCallbackProxy = null;
        }
        if (projectionAccessPointCallbackProxy == null) {
            return;
        }
        try {
            this.mService.stopProjectionAccessPoint(mAccessPointProxyToken);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean requestBluetoothProfileInhibit(BluetoothDevice bluetoothDevice, int r3) {
        Preconditions.checkNotNull(bluetoothDevice, "device cannot be null");
        try {
            return this.mService.requestBluetoothProfileInhibit(bluetoothDevice, r3, this.mToken);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean releaseBluetoothProfileInhibit(BluetoothDevice bluetoothDevice, int r3) {
        Preconditions.checkNotNull(bluetoothDevice, "device cannot be null");
        try {
            return this.mService.releaseBluetoothProfileInhibit(bluetoothDevice, r3, this.mToken);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void updateProjectionStatus(ProjectionStatus projectionStatus) {
        Preconditions.checkNotNull(projectionStatus, "status cannot be null");
        try {
            this.mService.updateProjectionStatus(projectionStatus, this.mToken);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void registerProjectionStatusListener(final ProjectionStatusListener projectionStatusListener) {
        Preconditions.checkNotNull(projectionStatusListener, "listener cannot be null");
        synchronized (this.mLock) {
            this.mProjectionStatusListeners.add(projectionStatusListener);
            if (this.mCarProjectionStatusListener == null) {
                CarProjectionStatusListenerImpl carProjectionStatusListenerImpl = new CarProjectionStatusListenerImpl();
                this.mCarProjectionStatusListener = carProjectionStatusListenerImpl;
                try {
                    this.mService.registerProjectionStatusListener(carProjectionStatusListenerImpl);
                } catch (RemoteException e) {
                    throw e.rethrowFromSystemServer();
                }
            } else {
                this.mHandler.post(new Runnable() { // from class: android.car.-$$Lambda$CarProjectionManager$7qT6feincVoa0SR_azEEG39PNts
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$registerProjectionStatusListener$0$CarProjectionManager(projectionStatusListener);
                    }
                });
            }
        }
    }

    public /* synthetic */ void lambda$registerProjectionStatusListener$0$CarProjectionManager(ProjectionStatusListener projectionStatusListener) {
        projectionStatusListener.onProjectionStatusChanged(this.mCarProjectionStatusListener.mCurrentState, this.mCarProjectionStatusListener.mCurrentPackageName, this.mCarProjectionStatusListener.mDetails);
    }

    public void unregisterProjectionStatusListener(ProjectionStatusListener projectionStatusListener) {
        Preconditions.checkNotNull(projectionStatusListener, "listener cannot be null");
        synchronized (this.mLock) {
            if (this.mProjectionStatusListeners.remove(projectionStatusListener) && this.mProjectionStatusListeners.isEmpty()) {
                unregisterProjectionStatusListenerFromCarServiceLocked();
            }
        }
    }

    private void unregisterProjectionStatusListenerFromCarServiceLocked() {
        try {
            this.mService.unregisterProjectionStatusListener(this.mCarProjectionStatusListener);
            this.mCarProjectionStatusListener = null;
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleProjectionStatusChanged(int r3, String str, List<ProjectionStatus> list) {
        ArrayList arrayList;
        synchronized (this.mLock) {
            arrayList = new ArrayList(this.mProjectionStatusListeners);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((ProjectionStatusListener) it.next()).onProjectionStatusChanged(r3, str, list);
        }
    }

    public Bundle getProjectionOptions() {
        try {
            return this.mService.getProjectionOptions();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    private static class ProjectionAccessPointCallbackProxy {
        private static final String LOG_PREFIX = ProjectionAccessPointCallbackProxy.class.getSimpleName() + ": ";
        private final WeakReference<CarProjectionManager> mCarProjectionManagerRef;
        private final Handler mHandler;
        private final Messenger mMessenger;

        ProjectionAccessPointCallbackProxy(CarProjectionManager carProjectionManager, Looper looper, final ProjectionAccessPointCallback projectionAccessPointCallback) {
            this.mCarProjectionManagerRef = new WeakReference<>(carProjectionManager);
            this.mHandler = new Handler(looper) { // from class: android.car.CarProjectionManager.ProjectionAccessPointCallbackProxy.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    Log.d(CarProjectionManager.TAG, ProjectionAccessPointCallbackProxy.LOG_PREFIX + "handle message what: " + message.what + " msg: " + message);
                    if (((CarProjectionManager) ProjectionAccessPointCallbackProxy.this.mCarProjectionManagerRef.get()) == null) {
                        Log.w(CarProjectionManager.TAG, ProjectionAccessPointCallbackProxy.LOG_PREFIX + "handle message post GC");
                        return;
                    }
                    int r0 = message.what;
                    if (r0 == 0) {
                        WifiConfiguration wifiConfiguration = (WifiConfiguration) message.obj;
                        if (wifiConfiguration == null) {
                            Log.e(CarProjectionManager.TAG, ProjectionAccessPointCallbackProxy.LOG_PREFIX + "config cannot be null.");
                            projectionAccessPointCallback.onFailed(2);
                            return;
                        }
                        projectionAccessPointCallback.onStarted(wifiConfiguration);
                        return;
                    }
                    if (r0 == 1) {
                        Log.i(CarProjectionManager.TAG, ProjectionAccessPointCallbackProxy.LOG_PREFIX + "hotspot stopped");
                        projectionAccessPointCallback.onStopped();
                        return;
                    }
                    if (r0 != 2) {
                        Log.e(CarProjectionManager.TAG, ProjectionAccessPointCallbackProxy.LOG_PREFIX + "unhandled message.  type: " + message.what);
                        return;
                    }
                    int r4 = message.arg1;
                    Log.w(CarProjectionManager.TAG, ProjectionAccessPointCallbackProxy.LOG_PREFIX + "failed to start.  reason: " + r4);
                    projectionAccessPointCallback.onFailed(r4);
                }
            };
            this.mMessenger = new Messenger(this.mHandler);
        }

        Messenger getMessenger() {
            return this.mMessenger;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class ICarProjectionKeyEventHandlerImpl extends ICarProjectionKeyEventHandler.Stub {
        private final WeakReference<CarProjectionManager> mManager;

        private ICarProjectionKeyEventHandlerImpl(CarProjectionManager carProjectionManager) {
            this.mManager = new WeakReference<>(carProjectionManager);
        }

        @Override // android.car.ICarProjectionKeyEventHandler
        public void onKeyEvent(final int r5) {
            Log.d(CarProjectionManager.TAG, "Received projection key event " + r5);
            CarProjectionManager carProjectionManager = this.mManager.get();
            if (carProjectionManager == null) {
                return;
            }
            ArrayList<Pair> arrayList = new ArrayList();
            synchronized (carProjectionManager.mLock) {
                for (Map.Entry entry : carProjectionManager.mKeyEventHandlers.entrySet()) {
                    if (((KeyEventHandlerRecord) entry.getValue()).mSubscribedEvents.get(r5)) {
                        arrayList.add(Pair.create((ProjectionKeyEventHandler) entry.getKey(), ((KeyEventHandlerRecord) entry.getValue()).mExecutor));
                    }
                }
            }
            for (Pair pair : arrayList) {
                final ProjectionKeyEventHandler projectionKeyEventHandler = (ProjectionKeyEventHandler) pair.first;
                ((Executor) pair.second).execute(new Runnable() { // from class: android.car.-$$Lambda$CarProjectionManager$ICarProjectionKeyEventHandlerImpl$MBwgMQivjMBxVP_SaFQheO04TNY
                    @Override // java.lang.Runnable
                    public final void run() {
                        projectionKeyEventHandler.onKeyEvent(r5);
                    }
                });
            }
        }
    }

    private static class KeyEventHandlerRecord {
        Executor mExecutor;
        BitSet mSubscribedEvents;

        KeyEventHandlerRecord(Executor executor, BitSet bitSet) {
            this.mExecutor = executor;
            this.mSubscribedEvents = bitSet;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class CarProjectionStatusListenerImpl extends ICarProjectionStatusListener.Stub {
        private String mCurrentPackageName;
        private int mCurrentState;
        private List<ProjectionStatus> mDetails;
        private final WeakReference<CarProjectionManager> mManagerRef;

        private CarProjectionStatusListenerImpl(CarProjectionManager carProjectionManager) {
            this.mDetails = new ArrayList(0);
            this.mManagerRef = new WeakReference<>(carProjectionManager);
        }

        @Override // android.car.ICarProjectionStatusListener
        public void onProjectionStatusChanged(final int r9, final String str, final List<ProjectionStatus> list) {
            final CarProjectionManager carProjectionManager = this.mManagerRef.get();
            if (carProjectionManager != null) {
                carProjectionManager.mHandler.post(new Runnable() { // from class: android.car.-$$Lambda$CarProjectionManager$CarProjectionStatusListenerImpl$pKBrFkhSPUT8gyMVXjB6LFXBIOM
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m0x59898f50(r9, str, list, carProjectionManager);
                    }
                });
            }
        }

        /* renamed from: lambda$onProjectionStatusChanged$0$CarProjectionManager$CarProjectionStatusListenerImpl */
        public /* synthetic */ void m0x59898f50(int r1, String str, List list, CarProjectionManager carProjectionManager) {
            this.mCurrentState = r1;
            this.mCurrentPackageName = str;
            List<ProjectionStatus> listUnmodifiableList = Collections.unmodifiableList(list);
            this.mDetails = listUnmodifiableList;
            carProjectionManager.handleProjectionStatusChanged(r1, str, listUnmodifiableList);
        }
    }
}
