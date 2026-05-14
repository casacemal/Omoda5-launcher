.class public final Landroid/car/Car;
.super Ljava/lang/Object;
.source "Car.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/Car$StateTypeEnum;,
        Landroid/car/Car$CarServiceLifecycleListener;,
        Landroid/car/Car$ConnectionType;
    }
.end annotation


# static fields
.field public static final APP_FOCUS_SERVICE:Ljava/lang/String; = "app_focus"

.field public static final AUDIO_SERVICE:Ljava/lang/String; = "audio"

.field public static final BLUETOOTH_SERVICE:Ljava/lang/String; = "car_bluetooth"

.field public static final CABIN_SERVICE:Ljava/lang/String; = "cabin"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_BUGREPORT_SERVICE:Ljava/lang/String; = "car_bugreport"

.field public static final CAR_CATEGORY_NAVIGATION:Ljava/lang/String; = "android.car.cluster.NAVIGATION"

.field public static final CAR_CONFIGURATION_SERVICE:Ljava/lang/String; = "configuration"

.field public static final CAR_DRIVING_STATE_SERVICE:Ljava/lang/String; = "drivingstate"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_EXTRA_BROWSE_SERVICE_FOR_SESSION:Ljava/lang/String; = "android.media.session.BROWSE_SERVICE"

.field public static final CAR_EXTRA_CLUSTER_ACTIVITY_STATE:Ljava/lang/String; = "android.car.cluster.ClusterActivityState"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_EXTRA_MEDIA_COMPONENT:Ljava/lang/String; = "android.car.intent.extra.MEDIA_COMPONENT"

.field public static final CAR_EXTRA_MEDIA_PACKAGE:Ljava/lang/String; = "android.car.intent.extra.MEDIA_PACKAGE"

.field public static final CAR_INSTRUMENT_CLUSTER_SERVICE:Ljava/lang/String; = "cluster_service"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_INTENT_ACTION_MEDIA_TEMPLATE:Ljava/lang/String; = "android.car.intent.action.MEDIA_TEMPLATE"

.field public static final CAR_MEDIA_SERVICE:Ljava/lang/String; = "car_media"

.field public static final CAR_NAVIGATION_SERVICE:Ljava/lang/String; = "car_navigation_service"

.field private static final CAR_SERVICE_BINDER_POLLING_INTERVAL_MS:J = 0x32L

.field private static final CAR_SERVICE_BINDER_POLLING_MAX_RETRY:J = 0x64L

.field public static final CAR_SERVICE_BINDER_SERVICE_NAME:Ljava/lang/String; = "car_service"

.field private static final CAR_SERVICE_BIND_MAX_RETRY:J = 0x14L

.field private static final CAR_SERVICE_BIND_RETRY_INTERVAL_MS:J = 0x1f4L

.field private static final CAR_SERVICE_CLASS:Ljava/lang/String; = "com.android.car.CarService"

.field public static final CAR_SERVICE_INTERFACE_NAME:Ljava/lang/String; = "android.car.ICar"

.field private static final CAR_SERVICE_PACKAGE:Ljava/lang/String; = "com.android.car"

.field public static final CAR_TRUST_AGENT_ENROLLMENT_SERVICE:Ljava/lang/String; = "trust_enroll"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_UX_RESTRICTION_SERVICE:Ljava/lang/String; = "uxrestriction"

.field public static final CAR_WAIT_TIMEOUT_DO_NOT_WAIT:J = 0x0L

.field public static final CAR_WAIT_TIMEOUT_WAIT_FOREVER:J = -0x1L

.field public static final CONNECTION_TYPE_EMBEDDED:I = 0x5

.field private static final DBG:Z = false

.field public static final DIAGNOSTIC_SERVICE:Ljava/lang/String; = "diagnostic"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DIAG_SERVICE:Ljava/lang/String; = "diag"

.field public static final HVAC_SERVICE:Ljava/lang/String; = "hvac"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INFO_SERVICE:Ljava/lang/String; = "info"

.field public static final PACKAGE_SERVICE:Ljava/lang/String; = "package"

.field public static final PERMISSION_BIND_VMS_CLIENT:Ljava/lang/String; = "android.car.permission.BIND_VMS_CLIENT"

.field public static final PERMISSION_CAR_CONTROL_AUDIO_SETTINGS:Ljava/lang/String; = "android.car.permission.CAR_CONTROL_AUDIO_SETTINGS"

.field public static final PERMISSION_CAR_CONTROL_AUDIO_VOLUME:Ljava/lang/String; = "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

.field public static final PERMISSION_CAR_DIAGNOSTIC_CLEAR:Ljava/lang/String; = "android.car.permission.CLEAR_CAR_DIAGNOSTICS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_DIAGNOSTIC_READ_ALL:Ljava/lang/String; = "android.car.permission.CAR_DIAGNOSTICS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_DISPLAY_IN_CLUSTER:Ljava/lang/String; = "android.car.permission.CAR_DISPLAY_IN_CLUSTER"

.field public static final PERMISSION_CAR_DRIVING_STATE:Ljava/lang/String; = "android.car.permission.CAR_DRIVING_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_DYNAMICS_STATE:Ljava/lang/String; = "android.car.permission.CAR_DYNAMICS_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_ENGINE_DETAILED:Ljava/lang/String; = "android.car.permission.CAR_ENGINE_DETAILED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_ENROLL_TRUST:Ljava/lang/String; = "android.car.permission.CAR_ENROLL_TRUST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_INFO:Ljava/lang/String; = "android.car.permission.CAR_INFO"

.field public static final PERMISSION_CAR_INSTRUMENT_CLUSTER_CONTROL:Ljava/lang/String; = "android.car.permission.CAR_INSTRUMENT_CLUSTER_CONTROL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_NAVIGATION_MANAGER:Ljava/lang/String; = "android.car.permission.CAR_NAVIGATION_MANAGER"

.field public static final PERMISSION_CAR_POWER:Ljava/lang/String; = "android.car.permission.CAR_POWER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_PROJECTION:Ljava/lang/String; = "android.car.permission.CAR_PROJECTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_PROJECTION_STATUS:Ljava/lang/String; = "android.car.permission.ACCESS_CAR_PROJECTION_STATUS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_TEST_SERVICE:Ljava/lang/String; = "android.car.permission.CAR_TEST_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_UX_RESTRICTIONS_CONFIGURATION:Ljava/lang/String; = "android.car.permission.CAR_UX_RESTRICTIONS_CONFIGURATION"

.field public static final PERMISSION_CONTROL_APP_BLOCKING:Ljava/lang/String; = "android.car.permission.CONTROL_APP_BLOCKING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_CAR_CLIMATE:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_CLIMATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_CAR_DOORS:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_DOORS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_CAR_MIRRORS:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_MIRRORS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_CAR_SEATS:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_SEATS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_CAR_WINDOWS:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_WINDOWS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_DISPLAY_UNITS:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_DISPLAY_UNITS"

.field public static final PERMISSION_CONTROL_EXTERIOR_LIGHTS:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_EXTERIOR_LIGHTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_INTERIOR_LIGHTS:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_INTERIOR_LIGHTS"

.field public static final PERMISSION_ENERGY:Ljava/lang/String; = "android.car.permission.CAR_ENERGY"

.field public static final PERMISSION_ENERGY_PORTS:Ljava/lang/String; = "android.car.permission.CAR_ENERGY_PORTS"

.field public static final PERMISSION_EXTERIOR_ENVIRONMENT:Ljava/lang/String; = "android.car.permission.CAR_EXTERIOR_ENVIRONMENT"

.field public static final PERMISSION_EXTERIOR_LIGHTS:Ljava/lang/String; = "android.car.permission.CAR_EXTERIOR_LIGHTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_IDENTIFICATION:Ljava/lang/String; = "android.car.permission.CAR_IDENTIFICATION"

.field public static final PERMISSION_MILEAGE:Ljava/lang/String; = "android.car.permission.CAR_MILEAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_MOCK_VEHICLE_HAL:Ljava/lang/String; = "android.car.permission.CAR_MOCK_VEHICLE_HAL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_POWERTRAIN:Ljava/lang/String; = "android.car.permission.CAR_POWERTRAIN"

.field public static final PERMISSION_READ_DISPLAY_UNITS:Ljava/lang/String; = "android.car.permission.READ_CAR_DISPLAY_UNITS"

.field public static final PERMISSION_READ_INTERIOR_LIGHTS:Ljava/lang/String; = "android.car.permission.READ_CAR_INTERIOR_LIGHTS"

.field public static final PERMISSION_READ_STEERING_STATE:Ljava/lang/String; = "android.car.permission.READ_CAR_STEERING"

.field public static final PERMISSION_RECEIVE_CAR_AUDIO_DUCKING_EVENTS:Ljava/lang/String; = "android.car.permission.RECEIVE_CAR_AUDIO_DUCKING_EVENTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_SPEED:Ljava/lang/String; = "android.car.permission.CAR_SPEED"

.field public static final PERMISSION_STORAGE_MONITORING:Ljava/lang/String; = "android.car.permission.STORAGE_MONITORING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_TIRES:Ljava/lang/String; = "android.car.permission.CAR_TIRES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_VENDOR_EXTENSION:Ljava/lang/String; = "android.car.permission.CAR_VENDOR_EXTENSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_VMS_PUBLISHER:Ljava/lang/String; = "android.car.permission.VMS_PUBLISHER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_VMS_SUBSCRIBER:Ljava/lang/String; = "android.car.permission.VMS_SUBSCRIBER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final POWER_SERVICE:Ljava/lang/String; = "power"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PROJECTION_SERVICE:Ljava/lang/String; = "projection"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PROPERTY_SERVICE:Ljava/lang/String; = "property"

.field public static final SENSOR_SERVICE:Ljava/lang/String; = "sensor"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final STATE_CONNECTED:I = 0x2

.field private static final STATE_CONNECTING:I = 0x1

.field private static final STATE_DISCONNECTED:I = 0x0

.field public static final STORAGE_MONITORING_SERVICE:Ljava/lang/String; = "storage_monitoring"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TEST_SERVICE:Ljava/lang/String; = "car-service-test"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final VENDOR_EXTENSION_SERVICE:Ljava/lang/String; = "vendor_extension"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VMS_SUBSCRIBER_SERVICE:Ljava/lang/String; = "vehicle_map_subscriber_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private mConnectionRetryCount:I

.field private final mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

.field private final mConnectionRetryRunnable:Ljava/lang/Runnable;

.field private mConnectionState:I

.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mMainThreadEventHandler:Landroid/os/Handler;

.field private mService:Landroid/car/ICar;

.field private mServiceBound:Z

.field private final mServiceConnectionListener:Landroid/content/ServiceConnection;

.field private final mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

.field private final mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/car/CarManagerBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusChangeCallback:Landroid/car/Car$CarServiceLifecycleListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/car/ICar;Landroid/content/ServiceConnection;Landroid/car/Car$CarServiceLifecycleListener;Landroid/os/Handler;)V
    .locals 1

    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    .line 700
    new-instance v0, Landroid/car/Car$1;

    invoke-direct {v0, p0}, Landroid/car/Car$1;-><init>(Landroid/car/Car;)V

    iput-object v0, p0, Landroid/car/Car;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    .line 707
    new-instance v0, Landroid/car/Car$2;

    invoke-direct {v0, p0}, Landroid/car/Car$2;-><init>(Landroid/car/Car;)V

    iput-object v0, p0, Landroid/car/Car;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    .line 715
    new-instance v0, Landroid/car/Car$3;

    invoke-direct {v0, p0}, Landroid/car/Car$3;-><init>(Landroid/car/Car;)V

    iput-object v0, p0, Landroid/car/Car;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    .line 765
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/car/Car;->mServiceMap:Ljava/util/HashMap;

    .line 1023
    iput-object p1, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    .line 1024
    invoke-static {p5}, Landroid/car/Car;->determineEventHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    .line 1025
    invoke-static {p1}, Landroid/car/Car;->determineMainThreadEventHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/car/Car;->mMainThreadEventHandler:Landroid/os/Handler;

    .line 1027
    iput-object p2, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    .line 1029
    iput p1, p0, Landroid/car/Car;->mConnectionState:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1031
    iput p1, p0, Landroid/car/Car;->mConnectionState:I

    .line 1033
    :goto_0
    iput-object p3, p0, Landroid/car/Car;->mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

    .line 1034
    iput-object p4, p0, Landroid/car/Car;->mStatusChangeCallback:Landroid/car/Car$CarServiceLifecycleListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/car/ICar;Landroid/os/Handler;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1042
    invoke-direct/range {v0 .. v5}, Landroid/car/Car;-><init>(Landroid/content/Context;Landroid/car/ICar;Landroid/content/ServiceConnection;Landroid/car/Car$CarServiceLifecycleListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Landroid/car/Car;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroid/car/Car;->startCarService()V

    return-void
.end method

.method static synthetic access$100(Landroid/car/Car;)Landroid/content/ServiceConnection;
    .locals 0

    .line 77
    iget-object p0, p0, Landroid/car/Car;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$200(Landroid/car/Car;)Ljava/lang/Object;
    .locals 0

    .line 77
    iget-object p0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Landroid/car/Car;)Landroid/car/ICar;
    .locals 0

    .line 77
    iget-object p0, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    return-object p0
.end method

.method static synthetic access$302(Landroid/car/Car;Landroid/car/ICar;)Landroid/car/ICar;
    .locals 0

    .line 77
    iput-object p1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    return-object p1
.end method

.method static synthetic access$400(Landroid/car/Car;)I
    .locals 0

    .line 77
    iget p0, p0, Landroid/car/Car;->mConnectionState:I

    return p0
.end method

.method static synthetic access$402(Landroid/car/Car;I)I
    .locals 0

    .line 77
    iput p1, p0, Landroid/car/Car;->mConnectionState:I

    return p1
.end method

.method static synthetic access$500(Landroid/car/Car;)Landroid/content/ServiceConnection;
    .locals 0

    .line 77
    iget-object p0, p0, Landroid/car/Car;->mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$600(Landroid/car/Car;)Landroid/car/Car$CarServiceLifecycleListener;
    .locals 0

    .line 77
    iget-object p0, p0, Landroid/car/Car;->mStatusChangeCallback:Landroid/car/Car$CarServiceLifecycleListener;

    return-object p0
.end method

.method static synthetic access$700(Landroid/car/Car;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroid/car/Car;->handleCarDisconnectLocked()V

    return-void
.end method

.method public static createCar(Landroid/content/Context;)Landroid/car/Car;
    .locals 1

    const/4 v0, 0x0

    .line 822
    check-cast v0, Landroid/os/Handler;

    invoke-static {p0, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;)Landroid/car/Car;

    move-result-object p0

    return-object p0
.end method

.method public static createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 810
    invoke-static {p0, p1, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/Handler;)Landroid/car/Car;

    move-result-object p0

    return-object p0
.end method

.method public static createCar(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/Handler;)Landroid/car/Car;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 787
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "CAR.L"

    const-string p1, "FEATURE_AUTOMOTIVE not declared while android.car is used"

    .line 788
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 792
    :cond_0
    :try_start_0
    new-instance v0, Landroid/car/Car;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/car/Car;-><init>(Landroid/content/Context;Landroid/car/ICar;Landroid/content/ServiceConnection;Landroid/car/Car$CarServiceLifecycleListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public static createCar(Landroid/content/Context;Landroid/os/Handler;)Landroid/car/Car;
    .locals 11

    const-string v0, "CAR.L"

    const-string v1, "createCar"

    .line 836
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    const-string v4, "car_service"

    .line 842
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    if-nez v3, :cond_0

    .line 845
    new-instance v3, Landroid/car/Car;

    invoke-static {v4}, Landroid/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICar;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    move-object v6, p0

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Landroid/car/Car;-><init>(Landroid/content/Context;Landroid/car/ICar;Landroid/content/ServiceConnection;Landroid/car/Car$CarServiceLifecycleListener;Landroid/os/Handler;)V

    :cond_0
    const-wide/16 v5, 0x32

    if-eqz v4, :cond_3

    if-nez v0, :cond_1

    return-object v3

    .line 875
    :cond_1
    monitor-enter v3

    .line 876
    :try_start_0
    iget-object p0, v3, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-nez p0, :cond_2

    .line 877
    invoke-static {v4}, Landroid/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICar;

    move-result-object p0

    iput-object p0, v3, Landroid/car/Car;->mService:Landroid/car/ICar;

    const-string p0, "CAR.L"

    .line 878
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "waited for car_service (ms):"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v0, v2

    mul-long/2addr v0, v5

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 p0, 0x2

    .line 883
    iput p0, v3, Landroid/car/Car;->mConnectionState:I

    .line 884
    monitor-exit v3

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-nez v0, :cond_4

    .line 855
    invoke-direct {v3}, Landroid/car/Car;->startCarService()V

    const/4 v0, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    int-to-long v7, v2

    const-wide/16 v9, 0x64

    cmp-long v4, v7, v9

    if-lez v4, :cond_5

    const-string p0, "CAR.L"

    const-string p1, "cannot get car_service, waited for car service (ms):5000"

    .line 860
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 867
    :cond_5
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CAR.L"

    const-string p1, "interrupted while waiting for car_service"

    .line 869
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;
    .locals 21

    move-wide/from16 v0, p2

    .line 928
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x32

    if-lez v4, :cond_0

    .line 936
    div-long v7, v0, v5

    cmp-long v9, v7, v2

    if-nez v9, :cond_1

    const-wide/16 v7, 0x1

    goto :goto_0

    :cond_0
    move-wide v7, v2

    .line 942
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    const/4 v12, 0x0

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    move v9, v12

    :goto_1
    const/4 v10, 0x0

    move v13, v12

    :goto_2
    const-string v14, "car_service"

    .line 944
    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    if-nez v10, :cond_3

    .line 947
    new-instance v10, Landroid/car/Car;

    invoke-static {v14}, Landroid/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICar;

    move-result-object v17

    const/16 v18, 0x0

    move-object v15, v10

    move-object/from16 v16, p0

    move-object/from16 v19, p4

    move-object/from16 v20, p1

    invoke-direct/range {v15 .. v20}, Landroid/car/Car;-><init>(Landroid/content/Context;Landroid/car/ICar;Landroid/content/ServiceConnection;Landroid/car/Car$CarServiceLifecycleListener;Landroid/os/Handler;)V

    :cond_3
    if-eqz v14, :cond_6

    if-nez v12, :cond_4

    .line 952
    invoke-direct {v10, v9}, Landroid/car/Car;->dispatchCarReadyToMainThread(Z)V

    .line 955
    invoke-direct {v10}, Landroid/car/Car;->startCarService()V

    return-object v10

    .line 990
    :cond_4
    iget-object v15, v10, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    const-string v0, "CAR.L"

    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waited for car_service (ms):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, v13

    mul-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 996
    iget-object v0, v10, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-eqz v0, :cond_5

    .line 997
    monitor-exit v15

    return-object v10

    .line 1002
    :cond_5
    invoke-static {v14}, Landroid/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICar;

    move-result-object v0

    iput-object v0, v10, Landroid/car/Car;->mService:Landroid/car/ICar;

    const/4 v0, 0x2

    .line 1003
    iput v0, v10, Landroid/car/Car;->mConnectionState:I

    .line 1004
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    invoke-direct {v10, v9}, Landroid/car/Car;->dispatchCarReadyToMainThread(Z)V

    return-object v10

    :catchall_0
    move-exception v0

    .line 1004
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    if-nez v12, :cond_7

    .line 962
    invoke-direct {v10}, Landroid/car/Car;->startCarService()V

    const/4 v12, 0x1

    :cond_7
    add-int/lit8 v13, v13, 0x1

    if-gez v4, :cond_8

    int-to-long v14, v13

    const-wide/16 v16, 0x64

    cmp-long v18, v14, v16

    if-ltz v18, :cond_8

    .line 966
    rem-long v16, v14, v16

    cmp-long v16, v16, v2

    if-nez v16, :cond_8

    const-string v2, "CAR.L"

    .line 969
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "car_service not ready, waited for car service (ms):"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long/2addr v14, v5

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_8
    if-ltz v4, :cond_a

    int-to-long v2, v13

    cmp-long v2, v2, v7

    if-lez v2, :cond_a

    if-lez v4, :cond_9

    const-string v2, "CAR.L"

    .line 974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "car_service not ready, waited for car service (ms):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    return-object v10

    .line 982
    :cond_a
    :goto_3
    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    const-wide/16 v2, 0x0

    goto/16 :goto_2

    .line 984
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-string v0, "CAR.L"

    const-string v1, "interrupted"

    .line 985
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v10
.end method

.method private createCarManager(Ljava/lang/String;Landroid/os/IBinder;)Landroid/car/CarManagerBase;
    .locals 1

    .line 1182
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "configuration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "trust_enroll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "app_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "car_bugreport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "cluster_service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "uxrestriction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "vehicle_map_subscriber_service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "power"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "cabin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "hvac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "diag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "storage_monitoring"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "car_media"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x17

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "drivingstate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x13

    goto :goto_1

    :sswitch_10
    const-string v0, "car-service-test"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    goto :goto_1

    :sswitch_11
    const-string v0, "package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_12
    const-string v0, "vendor_extension"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto :goto_1

    :sswitch_13
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_14
    const-string v0, "property"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto :goto_1

    :sswitch_15
    const-string v0, "diagnostic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_16
    const-string v0, "car_navigation_service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_17
    const-string v0, "car_bluetooth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto :goto_1

    :sswitch_18
    const-string v0, "projection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_2

    .line 1259
    :pswitch_0
    new-instance p1, Landroid/car/CarBugreportManager;

    iget-object p0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Landroid/car/CarBugreportManager;-><init>(Landroid/os/IBinder;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 1256
    :pswitch_1
    new-instance p1, Landroid/car/media/CarMediaManager;

    invoke-direct {p1, p2}, Landroid/car/media/CarMediaManager;-><init>(Landroid/os/IBinder;)V

    goto/16 :goto_2

    .line 1253
    :pswitch_2
    new-instance p1, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, v0, p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;-><init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_2

    .line 1250
    :pswitch_3
    new-instance p1, Landroid/car/settings/CarConfigurationManager;

    invoke-direct {p1, p2}, Landroid/car/settings/CarConfigurationManager;-><init>(Landroid/os/IBinder;)V

    goto/16 :goto_2

    .line 1247
    :pswitch_4
    new-instance p1, Landroid/car/drivingstate/CarUxRestrictionsManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, v0, p0}, Landroid/car/drivingstate/CarUxRestrictionsManager;-><init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_2

    .line 1244
    :pswitch_5
    new-instance p1, Landroid/car/drivingstate/CarDrivingStateManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, v0, p0}, Landroid/car/drivingstate/CarDrivingStateManager;-><init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_2

    .line 1241
    :pswitch_6
    new-instance p1, Landroid/car/storagemonitoring/CarStorageMonitoringManager;

    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;-><init>(Landroid/os/IBinder;Landroid/os/Handler;)V

    goto/16 :goto_2

    .line 1238
    :pswitch_7
    new-instance p1, Landroid/car/CarBluetoothManager;

    iget-object p0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Landroid/car/CarBluetoothManager;-><init>(Landroid/os/IBinder;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 1235
    :pswitch_8
    new-instance p1, Landroid/car/vms/VmsSubscriberManager;

    invoke-direct {p1, p2}, Landroid/car/vms/VmsSubscriberManager;-><init>(Landroid/os/IBinder;)V

    goto/16 :goto_2

    .line 1232
    :pswitch_9
    new-instance p1, Landroid/car/test/CarTestManagerBinderWrapper;

    invoke-direct {p1, p2}, Landroid/car/test/CarTestManagerBinderWrapper;-><init>(Landroid/os/IBinder;)V

    goto/16 :goto_2

    .line 1227
    :pswitch_a
    new-instance p1, Landroid/car/cluster/CarInstrumentClusterManager;

    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/car/cluster/CarInstrumentClusterManager;-><init>(Landroid/os/IBinder;Landroid/os/Handler;)V

    goto/16 :goto_2

    .line 1224
    :pswitch_b
    new-instance p1, Landroid/car/hardware/CarVendorExtensionManager;

    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/car/hardware/CarVendorExtensionManager;-><init>(Landroid/os/IBinder;Landroid/os/Handler;)V

    goto/16 :goto_2

    .line 1220
    :pswitch_c
    new-instance p1, Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {p2}, Landroid/car/hardware/property/ICarProperty$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarProperty;

    move-result-object p2

    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/car/hardware/property/CarPropertyManager;-><init>(Landroid/car/hardware/property/ICarProperty;Landroid/os/Handler;)V

    goto/16 :goto_2

    .line 1217
    :pswitch_d
    new-instance p1, Landroid/car/CarProjectionManager;

    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/car/CarProjectionManager;-><init>(Landroid/os/IBinder;Landroid/os/Handler;)V

    goto :goto_2

    .line 1214
    :pswitch_e
    new-instance p1, Landroid/car/hardware/power/CarPowerManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, v0, p0}, Landroid/car/hardware/power/CarPowerManager;-><init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_2

    .line 1211
    :pswitch_f
    new-instance p1, Landroid/car/hardware/hvac/CarHvacManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, v0, p0}, Landroid/car/hardware/hvac/CarHvacManager;-><init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_2

    .line 1208
    :pswitch_10
    new-instance p1, Landroid/car/diagnostic/CarDiagnosticManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, v0, p0}, Landroid/car/diagnostic/CarDiagnosticManager;-><init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_2

    .line 1205
    :pswitch_11
    new-instance p1, Landroid/car/hardware/cabin/CarCabinManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, v0, p0}, Landroid/car/hardware/cabin/CarCabinManager;-><init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_2

    .line 1202
    :pswitch_12
    new-instance p1, Landroid/car/navigation/CarNavigationStatusManager;

    invoke-direct {p1, p2}, Landroid/car/navigation/CarNavigationStatusManager;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 1199
    :pswitch_13
    new-instance p1, Landroid/car/content/pm/CarPackageManager;

    iget-object p0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Landroid/car/content/pm/CarPackageManager;-><init>(Landroid/os/IBinder;Landroid/content/Context;)V

    goto :goto_2

    .line 1196
    :pswitch_14
    new-instance p1, Landroid/car/CarAppFocusManager;

    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/car/CarAppFocusManager;-><init>(Landroid/os/IBinder;Landroid/os/Handler;)V

    goto :goto_2

    .line 1193
    :pswitch_15
    new-instance p1, Landroid/car/hardware/CarDiagManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, v0, p0}, Landroid/car/hardware/CarDiagManager;-><init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_2

    .line 1190
    :pswitch_16
    new-instance p1, Landroid/car/CarInfoManager;

    iget-object p0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Landroid/car/CarInfoManager;-><init>(Landroid/os/IBinder;Landroid/content/Context;)V

    goto :goto_2

    .line 1187
    :pswitch_17
    new-instance p1, Landroid/car/hardware/CarSensorManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, v0, p0}, Landroid/car/hardware/CarSensorManager;-><init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_2

    .line 1184
    :pswitch_18
    new-instance p1, Landroid/car/media/CarAudioManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, v0, p0}, Landroid/car/media/CarAudioManager;-><init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    :goto_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x756b35b1 -> :sswitch_18
        -0x6e917bfd -> :sswitch_17
        -0x6e7fee2b -> :sswitch_16
        -0x5c432459 -> :sswitch_15
        -0x3b32222b -> :sswitch_14
        -0x35ffac46 -> :sswitch_13
        -0x341b3df8 -> :sswitch_12
        -0x301acbba -> :sswitch_11
        -0x23f279fd -> :sswitch_10
        -0x1a8272d6 -> :sswitch_f
        -0x1664dc47 -> :sswitch_e
        -0xf701374 -> :sswitch_d
        0x2f0b6b -> :sswitch_c
        0x310db0 -> :sswitch_b
        0x3164ae -> :sswitch_a
        0x58d9bd6 -> :sswitch_9
        0x5a0abe9 -> :sswitch_8
        0x65e8905 -> :sswitch_7
        0x1d05dc14 -> :sswitch_6
        0x401b9149 -> :sswitch_5
        0x6201e570 -> :sswitch_4
        0x691dedfd -> :sswitch_3
        0x6d19553a -> :sswitch_2
        0x70ba7c6d -> :sswitch_1
        0x733374f6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static determineEventHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    if-nez p0, :cond_0

    .line 1053
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    .line 1054
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method private static determineMainThreadEventHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2

    .line 1047
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1048
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    return-object p0
.end method

.method private dispatchCarReadyToMainThread(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1011
    iget-object p1, p0, Landroid/car/Car;->mStatusChangeCallback:Landroid/car/Car$CarServiceLifecycleListener;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Landroid/car/Car$CarServiceLifecycleListener;->onLifecycleChanged(Landroid/car/Car;Z)V

    goto :goto_0

    .line 1014
    :cond_0
    iget-object p1, p0, Landroid/car/Car;->mMainThreadEventHandler:Landroid/os/Handler;

    new-instance v0, Landroid/car/-$$Lambda$Car$Y2U0t8cCv-IWFLzW1mxSSFa_QVc;

    invoke-direct {v0, p0}, Landroid/car/-$$Lambda$Car$Y2U0t8cCv-IWFLzW1mxSSFa_QVc;-><init>(Landroid/car/Car;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private getICarOrThrow()Landroid/car/ICar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1297
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1298
    :try_start_0
    iget-object v1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-eqz v1, :cond_0

    .line 1301
    iget-object p0, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    monitor-exit v0

    return-object p0

    .line 1299
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "not connected"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 1302
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private handleCarDisconnectLocked()V
    .locals 2

    .line 1079
    iget v0, p0, Landroid/car/Car;->mConnectionState:I

    if-nez v0, :cond_0

    return-void

    .line 1083
    :cond_0
    iget-object v0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/car/Car;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1084
    iget-object v0, p0, Landroid/car/Car;->mMainThreadEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/car/Car;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1085
    iput v0, p0, Landroid/car/Car;->mConnectionRetryCount:I

    .line 1086
    invoke-direct {p0}, Landroid/car/Car;->tearDownCarManagersLocked()V

    const/4 v1, 0x0

    .line 1087
    iput-object v1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    .line 1088
    iput v0, p0, Landroid/car/Car;->mConnectionState:I

    return-void
.end method

.method private startCarService()V
    .locals 6

    .line 1268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.car"

    .line 1269
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.car.ICar"

    .line 1270
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    iget-object v1, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/car/Car;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    const-string v1, "CAR.L"

    .line 1273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindServiceAsUser bound"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v1, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "CAR.L"

    const-string v2, "bindServiceAsUser 1"

    .line 1276
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget v0, p0, Landroid/car/Car;->mConnectionRetryCount:I

    add-int/2addr v0, v4

    iput v0, p0, Landroid/car/Car;->mConnectionRetryCount:I

    int-to-long v2, v0

    const-wide/16 v4, 0x14

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const-string v0, "CAR.L"

    const-string v2, "cannot bind to car service after max retry"

    .line 1279
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object v0, p0, Landroid/car/Car;->mMainThreadEventHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/car/Car;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string v0, "CAR.L"

    const-string v2, "bindServiceAsUser 2"

    .line 1282
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/car/Car;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string v0, "CAR.L"

    const-string v2, "bindServiceAsUser 3"

    .line 1287
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/car/Car;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1289
    iget-object v0, p0, Landroid/car/Car;->mMainThreadEventHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/car/Car;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1290
    iput v0, p0, Landroid/car/Car;->mConnectionRetryCount:I

    .line 1291
    iput-boolean v4, p0, Landroid/car/Car;->mServiceBound:Z

    .line 1293
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private tearDownCarManagersLocked()V
    .locals 2

    .line 1307
    iget-object v0, p0, Landroid/car/Car;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/CarManagerBase;

    .line 1308
    invoke-interface {v1}, Landroid/car/CarManagerBase;->onCarDisconnected()V

    goto :goto_0

    .line 1310
    :cond_0
    iget-object p0, p0, Landroid/car/Car;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1069
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1070
    :try_start_0
    iget v1, p0, Landroid/car/Car;->mConnectionState:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1073
    iput v1, p0, Landroid/car/Car;->mConnectionState:I

    .line 1074
    invoke-direct {p0}, Landroid/car/Car;->startCarService()V

    .line 1075
    monitor-exit v0

    return-void

    .line 1071
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected or connecting"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 1075
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public disconnect()V
    .locals 3

    .line 1097
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1098
    :try_start_0
    invoke-direct {p0}, Landroid/car/Car;->handleCarDisconnectLocked()V

    .line 1099
    iget-boolean v1, p0, Landroid/car/Car;->mServiceBound:Z

    if-eqz v1, :cond_0

    .line 1100
    iget-object v1, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/car/Car;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    .line 1101
    iput-boolean v1, p0, Landroid/car/Car;->mServiceBound:Z

    .line 1103
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCarConnectionType()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getCarManager(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1144
    invoke-direct {p0}, Landroid/car/Car;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    .line 1145
    iget-object v1, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1146
    :try_start_0
    iget-object v2, p0, Landroid/car/Car;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/CarManagerBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 1149
    :try_start_1
    invoke-interface {v0, p1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "CAR.L"

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarManager could not get binder for service:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1153
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 1155
    :cond_0
    :try_start_3
    invoke-direct {p0, p1, v0}, Landroid/car/Car;->createCarManager(Ljava/lang/String;Landroid/os/IBinder;)Landroid/car/CarManagerBase;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "CAR.L"

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarManager could not create manager for service:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1159
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v2

    .line 1161
    :cond_1
    :try_start_5
    iget-object p0, p0, Landroid/car/Car;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1163
    :try_start_6
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 1166
    :cond_2
    :goto_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public getServiceConnectionListener()Landroid/content/ServiceConnection;
    .locals 0

    .line 1130
    iget-object p0, p0, Landroid/car/Car;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public isConnected()Z
    .locals 1

    .line 1112
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1113
    :try_start_0
    iget-object p0, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isConnecting()Z
    .locals 2

    .line 1122
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1123
    :try_start_0
    iget p0, p0, Landroid/car/Car;->mConnectionState:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 1124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$dispatchCarReadyToMainThread$0$Car()V
    .locals 2

    .line 1015
    iget-object v0, p0, Landroid/car/Car;->mStatusChangeCallback:Landroid/car/Car$CarServiceLifecycleListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/car/Car$CarServiceLifecycleListener;->onLifecycleChanged(Landroid/car/Car;Z)V

    return-void
.end method
