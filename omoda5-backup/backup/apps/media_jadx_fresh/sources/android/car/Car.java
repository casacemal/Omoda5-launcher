package android.car;

import android.annotation.SystemApi;
import android.car.ICar;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.util.Log;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class Car {
    public static final String APP_FOCUS_SERVICE = "app_focus";
    public static final String AUDIO_SERVICE = "audio";
    public static final String BLUETOOTH_SERVICE = "car_bluetooth";

    @SystemApi
    @Deprecated
    public static final String CABIN_SERVICE = "cabin";
    public static final String CAR_BUGREPORT_SERVICE = "car_bugreport";
    public static final String CAR_CATEGORY_NAVIGATION = "android.car.cluster.NAVIGATION";
    public static final String CAR_CONFIGURATION_SERVICE = "configuration";

    @SystemApi
    public static final String CAR_DRIVING_STATE_SERVICE = "drivingstate";
    public static final String CAR_EXTRA_BROWSE_SERVICE_FOR_SESSION = "android.media.session.BROWSE_SERVICE";

    @SystemApi
    public static final String CAR_EXTRA_CLUSTER_ACTIVITY_STATE = "android.car.cluster.ClusterActivityState";
    public static final String CAR_EXTRA_MEDIA_COMPONENT = "android.car.intent.extra.MEDIA_COMPONENT";
    public static final String CAR_EXTRA_MEDIA_PACKAGE = "android.car.intent.extra.MEDIA_PACKAGE";

    @Deprecated
    public static final String CAR_INSTRUMENT_CLUSTER_SERVICE = "cluster_service";
    public static final String CAR_INTENT_ACTION_MEDIA_TEMPLATE = "android.car.intent.action.MEDIA_TEMPLATE";
    public static final String CAR_MEDIA_SERVICE = "car_media";
    public static final String CAR_NAVIGATION_SERVICE = "car_navigation_service";
    private static final long CAR_SERVICE_BINDER_POLLING_INTERVAL_MS = 50;
    private static final long CAR_SERVICE_BINDER_POLLING_MAX_RETRY = 100;
    public static final String CAR_SERVICE_BINDER_SERVICE_NAME = "car_service";
    private static final long CAR_SERVICE_BIND_MAX_RETRY = 20;
    private static final long CAR_SERVICE_BIND_RETRY_INTERVAL_MS = 500;
    private static final String CAR_SERVICE_CLASS = "com.android.car.CarService";
    public static final String CAR_SERVICE_INTERFACE_NAME = "android.car.ICar";
    private static final String CAR_SERVICE_PACKAGE = "com.android.car";

    @SystemApi
    public static final String CAR_TRUST_AGENT_ENROLLMENT_SERVICE = "trust_enroll";
    public static final String CAR_UX_RESTRICTION_SERVICE = "uxrestriction";
    public static final long CAR_WAIT_TIMEOUT_DO_NOT_WAIT = 0;
    public static final long CAR_WAIT_TIMEOUT_WAIT_FOREVER = -1;
    public static final int CONNECTION_TYPE_EMBEDDED = 5;
    private static final boolean DBG = false;

    @SystemApi
    public static final String DIAGNOSTIC_SERVICE = "diagnostic";
    public static final String DIAG_SERVICE = "diag";

    @SystemApi
    @Deprecated
    public static final String HVAC_SERVICE = "hvac";
    public static final String INFO_SERVICE = "info";
    public static final String PACKAGE_SERVICE = "package";
    public static final String PERMISSION_BIND_VMS_CLIENT = "android.car.permission.BIND_VMS_CLIENT";
    public static final String PERMISSION_CAR_CONTROL_AUDIO_SETTINGS = "android.car.permission.CAR_CONTROL_AUDIO_SETTINGS";
    public static final String PERMISSION_CAR_CONTROL_AUDIO_VOLUME = "android.car.permission.CAR_CONTROL_AUDIO_VOLUME";

    @SystemApi
    public static final String PERMISSION_CAR_DIAGNOSTIC_CLEAR = "android.car.permission.CLEAR_CAR_DIAGNOSTICS";

    @SystemApi
    public static final String PERMISSION_CAR_DIAGNOSTIC_READ_ALL = "android.car.permission.CAR_DIAGNOSTICS";
    public static final String PERMISSION_CAR_DISPLAY_IN_CLUSTER = "android.car.permission.CAR_DISPLAY_IN_CLUSTER";

    @SystemApi
    public static final String PERMISSION_CAR_DRIVING_STATE = "android.car.permission.CAR_DRIVING_STATE";

    @SystemApi
    public static final String PERMISSION_CAR_DYNAMICS_STATE = "android.car.permission.CAR_DYNAMICS_STATE";

    @SystemApi
    public static final String PERMISSION_CAR_ENGINE_DETAILED = "android.car.permission.CAR_ENGINE_DETAILED";

    @SystemApi
    public static final String PERMISSION_CAR_ENROLL_TRUST = "android.car.permission.CAR_ENROLL_TRUST";
    public static final String PERMISSION_CAR_INFO = "android.car.permission.CAR_INFO";

    @SystemApi
    public static final String PERMISSION_CAR_INSTRUMENT_CLUSTER_CONTROL = "android.car.permission.CAR_INSTRUMENT_CLUSTER_CONTROL";
    public static final String PERMISSION_CAR_NAVIGATION_MANAGER = "android.car.permission.CAR_NAVIGATION_MANAGER";

    @SystemApi
    public static final String PERMISSION_CAR_POWER = "android.car.permission.CAR_POWER";

    @SystemApi
    public static final String PERMISSION_CAR_PROJECTION = "android.car.permission.CAR_PROJECTION";

    @SystemApi
    public static final String PERMISSION_CAR_PROJECTION_STATUS = "android.car.permission.ACCESS_CAR_PROJECTION_STATUS";

    @SystemApi
    public static final String PERMISSION_CAR_TEST_SERVICE = "android.car.permission.CAR_TEST_SERVICE";
    public static final String PERMISSION_CAR_UX_RESTRICTIONS_CONFIGURATION = "android.car.permission.CAR_UX_RESTRICTIONS_CONFIGURATION";

    @SystemApi
    public static final String PERMISSION_CONTROL_APP_BLOCKING = "android.car.permission.CONTROL_APP_BLOCKING";

    @SystemApi
    public static final String PERMISSION_CONTROL_CAR_CLIMATE = "android.car.permission.CONTROL_CAR_CLIMATE";

    @SystemApi
    public static final String PERMISSION_CONTROL_CAR_DOORS = "android.car.permission.CONTROL_CAR_DOORS";

    @SystemApi
    public static final String PERMISSION_CONTROL_CAR_MIRRORS = "android.car.permission.CONTROL_CAR_MIRRORS";

    @SystemApi
    public static final String PERMISSION_CONTROL_CAR_SEATS = "android.car.permission.CONTROL_CAR_SEATS";

    @SystemApi
    public static final String PERMISSION_CONTROL_CAR_WINDOWS = "android.car.permission.CONTROL_CAR_WINDOWS";
    public static final String PERMISSION_CONTROL_DISPLAY_UNITS = "android.car.permission.CONTROL_CAR_DISPLAY_UNITS";

    @SystemApi
    public static final String PERMISSION_CONTROL_EXTERIOR_LIGHTS = "android.car.permission.CONTROL_CAR_EXTERIOR_LIGHTS";
    public static final String PERMISSION_CONTROL_INTERIOR_LIGHTS = "android.car.permission.CONTROL_CAR_INTERIOR_LIGHTS";
    public static final String PERMISSION_ENERGY = "android.car.permission.CAR_ENERGY";
    public static final String PERMISSION_ENERGY_PORTS = "android.car.permission.CAR_ENERGY_PORTS";
    public static final String PERMISSION_EXTERIOR_ENVIRONMENT = "android.car.permission.CAR_EXTERIOR_ENVIRONMENT";

    @SystemApi
    public static final String PERMISSION_EXTERIOR_LIGHTS = "android.car.permission.CAR_EXTERIOR_LIGHTS";
    public static final String PERMISSION_IDENTIFICATION = "android.car.permission.CAR_IDENTIFICATION";

    @SystemApi
    public static final String PERMISSION_MILEAGE = "android.car.permission.CAR_MILEAGE";

    @SystemApi
    public static final String PERMISSION_MOCK_VEHICLE_HAL = "android.car.permission.CAR_MOCK_VEHICLE_HAL";
    public static final String PERMISSION_POWERTRAIN = "android.car.permission.CAR_POWERTRAIN";
    public static final String PERMISSION_READ_DISPLAY_UNITS = "android.car.permission.READ_CAR_DISPLAY_UNITS";
    public static final String PERMISSION_READ_INTERIOR_LIGHTS = "android.car.permission.READ_CAR_INTERIOR_LIGHTS";
    public static final String PERMISSION_READ_STEERING_STATE = "android.car.permission.READ_CAR_STEERING";

    @SystemApi
    public static final String PERMISSION_RECEIVE_CAR_AUDIO_DUCKING_EVENTS = "android.car.permission.RECEIVE_CAR_AUDIO_DUCKING_EVENTS";
    public static final String PERMISSION_SPEED = "android.car.permission.CAR_SPEED";

    @SystemApi
    public static final String PERMISSION_STORAGE_MONITORING = "android.car.permission.STORAGE_MONITORING";

    @SystemApi
    public static final String PERMISSION_TIRES = "android.car.permission.CAR_TIRES";

    @SystemApi
    public static final String PERMISSION_VENDOR_EXTENSION = "android.car.permission.CAR_VENDOR_EXTENSION";

    @SystemApi
    public static final String PERMISSION_VMS_PUBLISHER = "android.car.permission.VMS_PUBLISHER";

    @SystemApi
    public static final String PERMISSION_VMS_SUBSCRIBER = "android.car.permission.VMS_SUBSCRIBER";

    @SystemApi
    public static final String POWER_SERVICE = "power";

    @SystemApi
    public static final String PROJECTION_SERVICE = "projection";
    public static final String PROPERTY_SERVICE = "property";

    @Deprecated
    public static final String SENSOR_SERVICE = "sensor";
    private static final int STATE_CONNECTED = 2;
    private static final int STATE_CONNECTING = 1;
    private static final int STATE_DISCONNECTED = 0;

    @SystemApi
    public static final String STORAGE_MONITORING_SERVICE = "storage_monitoring";

    @SystemApi
    public static final String TEST_SERVICE = "car-service-test";

    @SystemApi
    @Deprecated
    public static final String VENDOR_EXTENSION_SERVICE = "vendor_extension";

    @SystemApi
    public static final String VMS_SUBSCRIBER_SERVICE = "vehicle_map_subscriber_service";
    private int mConnectionRetryCount;
    private final Runnable mConnectionRetryFailedRunnable;
    private final Runnable mConnectionRetryRunnable;
    private int mConnectionState;
    private final Context mContext;
    private final Handler mEventHandler;
    private final Object mLock;
    private final Handler mMainThreadEventHandler;
    private ICar mService;
    private boolean mServiceBound;
    private final ServiceConnection mServiceConnectionListener;
    private final ServiceConnection mServiceConnectionListenerClient;
    private final HashMap<String, CarManagerBase> mServiceMap;
    private final CarServiceLifecycleListener mStatusChangeCallback;

    public interface CarServiceLifecycleListener {
        void onLifecycleChanged(Car car, boolean z);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ConnectionType {
    }

    @Target({ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface StateTypeEnum {
    }

    public int getCarConnectionType() {
        return 5;
    }

    @Deprecated
    public static Car createCar(Context context, ServiceConnection serviceConnection, Handler handler) {
        if (!context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            Log.e(CarLibLog.TAG_CAR, "FEATURE_AUTOMOTIVE not declared while android.car is used");
            return null;
        }
        try {
            return new Car(context, null, serviceConnection, null, handler);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @Deprecated
    public static Car createCar(Context context, ServiceConnection serviceConnection) {
        return createCar(context, serviceConnection, null);
    }

    public static Car createCar(Context context) {
        return createCar(context, (Handler) null);
    }

    public static Car createCar(Context context, Handler handler) throws InterruptedException {
        Log.i(CarLibLog.TAG_CAR, "createCar");
        boolean z = false;
        int r2 = 0;
        Car car = null;
        while (true) {
            IBinder service = ServiceManager.getService(CAR_SERVICE_BINDER_SERVICE_NAME);
            if (car == null) {
                car = new Car(context, ICar.Stub.asInterface(service), null, null, handler);
            }
            if (service != null) {
                if (!z) {
                    return car;
                }
                synchronized (car) {
                    if (car.mService == null) {
                        car.mService = ICar.Stub.asInterface(service);
                        Log.w(CarLibLog.TAG_CAR, "waited for car_service (ms):" + (r2 * CAR_SERVICE_BINDER_POLLING_INTERVAL_MS), new RuntimeException());
                    }
                    car.mConnectionState = 2;
                }
                return car;
            }
            if (!z) {
                car.startCarService();
                z = true;
            }
            r2++;
            if (r2 > CAR_SERVICE_BINDER_POLLING_MAX_RETRY) {
                Log.e(CarLibLog.TAG_CAR, "cannot get car_service, waited for car service (ms):5000", new RuntimeException());
                return null;
            }
            try {
                Thread.sleep(CAR_SERVICE_BINDER_POLLING_INTERVAL_MS);
            } catch (InterruptedException unused) {
                Log.e(CarLibLog.TAG_CAR, "interrupted while waiting for car_service", new RuntimeException());
                return null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.car.Car createCar(android.content.Context r21, android.os.Handler r22, long r23, android.car.Car.CarServiceLifecycleListener r25) throws java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.car.Car.createCar(android.content.Context, android.os.Handler, long, android.car.Car$CarServiceLifecycleListener):android.car.Car");
    }

    private void dispatchCarReadyToMainThread(boolean z) {
        if (z) {
            this.mStatusChangeCallback.onLifecycleChanged(this, true);
        } else {
            this.mMainThreadEventHandler.post(new Runnable() { // from class: android.car.-$$Lambda$Car$Y2U0t8cCv-IWFLzW1mxSSFa_QVc
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$dispatchCarReadyToMainThread$0$Car();
                }
            });
        }
    }

    public /* synthetic */ void lambda$dispatchCarReadyToMainThread$0$Car() {
        this.mStatusChangeCallback.onLifecycleChanged(this, true);
    }

    private Car(Context context, ICar iCar, ServiceConnection serviceConnection, CarServiceLifecycleListener carServiceLifecycleListener, Handler handler) {
        this.mLock = new Object();
        this.mConnectionRetryRunnable = new Runnable() { // from class: android.car.Car.1
            @Override // java.lang.Runnable
            public void run() {
                Car.this.startCarService();
            }
        };
        this.mConnectionRetryFailedRunnable = new Runnable() { // from class: android.car.Car.2
            @Override // java.lang.Runnable
            public void run() {
                Car.this.mServiceConnectionListener.onServiceDisconnected(new ComponentName(Car.CAR_SERVICE_PACKAGE, Car.CAR_SERVICE_CLASS));
            }
        };
        this.mServiceConnectionListener = new ServiceConnection() { // from class: android.car.Car.3
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                synchronized (Car.this.mLock) {
                    ICar iCarAsInterface = ICar.Stub.asInterface(iBinder);
                    if (iCarAsInterface != null) {
                        if (Car.this.mService == null || !Car.this.mService.asBinder().equals(iCarAsInterface.asBinder())) {
                            Car.this.mConnectionState = 2;
                            Car.this.mService = iCarAsInterface;
                            if (Car.this.mServiceConnectionListenerClient != null) {
                                Car.this.mServiceConnectionListenerClient.onServiceConnected(componentName, iBinder);
                            }
                            if (Car.this.mStatusChangeCallback != null) {
                                Car.this.mStatusChangeCallback.onLifecycleChanged(Car.this, true);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    Log.wtf(CarLibLog.TAG_CAR, "null binder service", new RuntimeException());
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                synchronized (Car.this.mLock) {
                    if (Car.this.mConnectionState == 0) {
                        return;
                    }
                    Car.this.handleCarDisconnectLocked();
                    if (Car.this.mServiceConnectionListenerClient != null) {
                        Car.this.mServiceConnectionListenerClient.onServiceDisconnected(componentName);
                    }
                    if (Car.this.mStatusChangeCallback != null) {
                        Car.this.mStatusChangeCallback.onLifecycleChanged(Car.this, false);
                    }
                }
            }
        };
        this.mServiceMap = new HashMap<>();
        this.mContext = context;
        Handler handlerDetermineEventHandler = determineEventHandler(handler);
        this.mEventHandler = handlerDetermineEventHandler;
        this.mMainThreadEventHandler = determineMainThreadEventHandler(handlerDetermineEventHandler);
        this.mService = iCar;
        if (iCar != null) {
            this.mConnectionState = 2;
        } else {
            this.mConnectionState = 0;
        }
        this.mServiceConnectionListenerClient = serviceConnection;
        this.mStatusChangeCallback = carServiceLifecycleListener;
    }

    public Car(Context context, ICar iCar, Handler handler) {
        this(context, iCar, null, null, handler);
    }

    private static Handler determineMainThreadEventHandler(Handler handler) {
        Looper mainLooper = Looper.getMainLooper();
        return handler.getLooper() == mainLooper ? handler : new Handler(mainLooper);
    }

    private static Handler determineEventHandler(Handler handler) {
        return handler == null ? new Handler(Looper.getMainLooper()) : handler;
    }

    @Deprecated
    public void connect() throws IllegalStateException {
        synchronized (this.mLock) {
            if (this.mConnectionState != 0) {
                throw new IllegalStateException("already connected or connecting");
            }
            this.mConnectionState = 1;
            startCarService();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCarDisconnectLocked() {
        if (this.mConnectionState == 0) {
            return;
        }
        this.mEventHandler.removeCallbacks(this.mConnectionRetryRunnable);
        this.mMainThreadEventHandler.removeCallbacks(this.mConnectionRetryFailedRunnable);
        this.mConnectionRetryCount = 0;
        tearDownCarManagersLocked();
        this.mService = null;
        this.mConnectionState = 0;
    }

    public void disconnect() {
        synchronized (this.mLock) {
            handleCarDisconnectLocked();
            if (this.mServiceBound) {
                this.mContext.unbindService(this.mServiceConnectionListener);
                this.mServiceBound = false;
            }
        }
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mService != null;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.mLock) {
            z = true;
            if (this.mConnectionState != 1) {
                z = false;
            }
        }
        return z;
    }

    public ServiceConnection getServiceConnectionListener() {
        return this.mServiceConnectionListener;
    }

    public Object getCarManager(String str) throws IllegalStateException {
        ICar iCarOrThrow = getICarOrThrow();
        synchronized (this.mLock) {
            CarManagerBase carManagerBase = this.mServiceMap.get(str);
            if (carManagerBase == null) {
                try {
                    IBinder carService = iCarOrThrow.getCarService(str);
                    if (carService == null) {
                        Log.w(CarLibLog.TAG_CAR, "getCarManager could not get binder for service:" + str);
                        return null;
                    }
                    CarManagerBase carManagerBaseCreateCarManager = createCarManager(str, carService);
                    if (carManagerBaseCreateCarManager == null) {
                        Log.w(CarLibLog.TAG_CAR, "getCarManager could not create manager for service:" + str);
                        return null;
                    }
                    this.mServiceMap.put(str, carManagerBaseCreateCarManager);
                    carManagerBase = carManagerBaseCreateCarManager;
                } catch (RemoteException e) {
                    throw e.rethrowFromSystemServer();
                }
            }
            return carManagerBase;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0123  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.car.CarManagerBase createCarManager(java.lang.String r2, android.os.IBinder r3) {
        /*
            Method dump skipped, instructions count: 682
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.car.Car.createCarManager(java.lang.String, android.os.IBinder):android.car.CarManagerBase");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startCarService() {
        Intent intent = new Intent();
        intent.setPackage(CAR_SERVICE_PACKAGE);
        intent.setAction(CAR_SERVICE_INTERFACE_NAME);
        boolean zBindServiceAsUser = this.mContext.bindServiceAsUser(intent, this.mServiceConnectionListener, 1, UserHandle.CURRENT_OR_SELF);
        Log.i(CarLibLog.TAG_CAR, "bindServiceAsUser bound" + zBindServiceAsUser);
        synchronized (this.mLock) {
            if (!zBindServiceAsUser) {
                Log.i(CarLibLog.TAG_CAR, "bindServiceAsUser 1");
                int r0 = this.mConnectionRetryCount + 1;
                this.mConnectionRetryCount = r0;
                if (r0 > CAR_SERVICE_BIND_MAX_RETRY) {
                    Log.w(CarLibLog.TAG_CAR, "cannot bind to car service after max retry");
                    this.mMainThreadEventHandler.post(this.mConnectionRetryFailedRunnable);
                } else {
                    Log.i(CarLibLog.TAG_CAR, "bindServiceAsUser 2");
                    this.mEventHandler.postDelayed(this.mConnectionRetryRunnable, CAR_SERVICE_BIND_RETRY_INTERVAL_MS);
                }
            } else {
                Log.i(CarLibLog.TAG_CAR, "bindServiceAsUser 3");
                this.mEventHandler.removeCallbacks(this.mConnectionRetryRunnable);
                this.mMainThreadEventHandler.removeCallbacks(this.mConnectionRetryFailedRunnable);
                this.mConnectionRetryCount = 0;
                this.mServiceBound = true;
            }
        }
    }

    private ICar getICarOrThrow() throws IllegalStateException {
        ICar iCar;
        synchronized (this.mLock) {
            if (this.mService == null) {
                throw new IllegalStateException("not connected");
            }
            iCar = this.mService;
        }
        return iCar;
    }

    private void tearDownCarManagersLocked() {
        Iterator<CarManagerBase> it = this.mServiceMap.values().iterator();
        while (it.hasNext()) {
            it.next().onCarDisconnected();
        }
        this.mServiceMap.clear();
    }
}
