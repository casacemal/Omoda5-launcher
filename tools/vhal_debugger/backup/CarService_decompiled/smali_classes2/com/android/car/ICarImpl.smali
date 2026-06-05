.class public Lcom/android/car/ICarImpl;
.super Landroid/car/ICar$Stub;
.source "ICarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ICarImpl$CarShellCommand;
    }
.end annotation


# static fields
.field public static final INTERNAL_INPUT_SERVICE:Ljava/lang/String; = "internal_input"

.field public static final INTERNAL_SYSTEM_ACTIVITY_MONITORING_SERVICE:Ljava/lang/String; = "system_activity_monitoring"

.field private static final TAG:Ljava/lang/String; = "ICarImpl"

.field private static final VHAL_TIMING_TAG:Ljava/lang/String; = "VehicleHalTiming"


# instance fields
.field private final mAllServices:[Lcom/android/car/CarServiceBase;

.field private final mAppFocusService:Lcom/android/car/AppFocusService;

.field private mBootTiming:Landroid/util/TimingsTraceLog;

.field private final mCarAudioService:Lcom/android/car/audio/CarAudioService;

.field private final mCarBugreportManagerService:Lcom/android/car/CarBugreportManagerService;

.field private final mCarConfigurationService:Lcom/android/car/CarConfigurationService;

.field private final mCarDiagnosticService:Lcom/android/car/CarDiagnosticService;

.field private final mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

.field private final mCarInputService:Lcom/android/car/CarInputService;

.field private final mCarLocationService:Lcom/android/car/CarLocationService;

.field private final mCarMediaService:Lcom/android/car/CarMediaService;

.field private final mCarNightService:Lcom/android/car/CarNightService;

.field private final mCarPackageManagerService:Lcom/android/car/pm/CarPackageManagerService;

.field private final mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

.field private final mCarProjectionService:Lcom/android/car/CarProjectionService;

.field private final mCarPropertyService:Lcom/android/car/CarPropertyService;

.field private final mCarStorageMonitoringService:Lcom/android/car/CarStorageMonitoringService;

.field private mCarTestService:Lcom/android/car/CarTestService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mCarTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

.field private final mCarUXRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

.field private final mCarUserNoticeService:Lcom/android/car/user/CarUserNoticeService;

.field private final mCarUserService:Lcom/android/car/user/CarUserService;

.field private final mContext:Landroid/content/Context;

.field private final mGarageModeService:Lcom/android/car/garagemode/GarageModeService;

.field private final mHal:Lcom/android/car/hal/VehicleHal;

.field private mICarServiceHelper:Lcom/android/internal/car/ICarServiceHelper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mInstrumentClusterService:Lcom/android/car/cluster/InstrumentClusterService;

.field private final mPerUserCarServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

.field private final mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

.field private final mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

.field private final mSystemStateControllerService:Lcom/android/car/SystemStateControllerService;

.field private final mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

.field private final mVehicleInterfaceName:Ljava/lang/String;

.field private final mVmsBrokerService:Lcom/android/car/vms/VmsBrokerService;

.field private final mVmsClientManager:Lcom/android/car/vms/VmsClientManager;

.field private final mVmsPublisherService:Lcom/android/car/VmsPublisherService;

.field private final mVmsSubscriberService:Lcom/android/car/VmsSubscriberService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/automotive/vehicle/V2_0/IVehicle;Lcom/android/car/systeminterface/SystemInterface;Lcom/android/car/CanBusErrorNotifier;Ljava/lang/String;)V
    .locals 9
    .param p1, "serviceContext"    # Landroid/content/Context;
    .param p2, "vehicle"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicle;
    .param p3, "systemInterface"    # Lcom/android/car/systeminterface/SystemInterface;
    .param p4, "errorNotifier"    # Lcom/android/car/CanBusErrorNotifier;
    .param p5, "vehicleInterfaceName"    # Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Landroid/car/ICar$Stub;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    .line 122
    iput-object p3, p0, Lcom/android/car/ICarImpl;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    .line 123
    new-instance v0, Lcom/android/car/hal/VehicleHal;

    invoke-direct {v0, p1, p2}, Lcom/android/car/hal/VehicleHal;-><init>(Landroid/content/Context;Landroid/hardware/automotive/vehicle/V2_0/IVehicle;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    .line 124
    iput-object p5, p0, Lcom/android/car/ICarImpl;->mVehicleInterfaceName:Ljava/lang/String;

    .line 125
    new-instance v0, Landroid/car/userlib/CarUserManagerHelper;

    invoke-direct {v0, p1}, Landroid/car/userlib/CarUserManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    .line 126
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10e007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 129
    .local v1, "maxRunningUsers":I
    new-instance v2, Lcom/android/car/user/CarUserService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    .line 130
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4, v1}, Lcom/android/car/user/CarUserService;-><init>(Landroid/content/Context;Landroid/car/userlib/CarUserManagerHelper;Landroid/app/IActivityManager;I)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarUserService:Lcom/android/car/user/CarUserService;

    .line 131
    new-instance v2, Lcom/android/car/SystemActivityMonitoringService;

    invoke-direct {v2, p1}, Lcom/android/car/SystemActivityMonitoringService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    .line 132
    new-instance v2, Lcom/android/car/CarPowerManagementService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v4}, Lcom/android/car/hal/VehicleHal;->getPowerHal()Lcom/android/car/hal/PowerHalService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/car/ICarImpl;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-direct {v2, v3, v4, p3, v5}, Lcom/android/car/CarPowerManagementService;-><init>(Landroid/content/Context;Lcom/android/car/hal/PowerHalService;Lcom/android/car/systeminterface/SystemInterface;Landroid/car/userlib/CarUserManagerHelper;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    .line 134
    new-instance v2, Lcom/android/car/user/CarUserNoticeService;

    invoke-direct {v2, p1}, Lcom/android/car/user/CarUserNoticeService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarUserNoticeService:Lcom/android/car/user/CarUserNoticeService;

    .line 135
    new-instance v2, Lcom/android/car/CarPropertyService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v3}, Lcom/android/car/hal/VehicleHal;->getPropertyHal()Lcom/android/car/hal/PropertyHalService;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/android/car/CarPropertyService;-><init>(Landroid/content/Context;Lcom/android/car/hal/PropertyHalService;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    .line 136
    new-instance v2, Lcom/android/car/CarDrivingStateService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-direct {v2, p1, v3}, Lcom/android/car/CarDrivingStateService;-><init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

    .line 137
    new-instance v2, Lcom/android/car/CarUxRestrictionsManagerService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

    iget-object v4, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-direct {v2, p1, v3, v4}, Lcom/android/car/CarUxRestrictionsManagerService;-><init>(Landroid/content/Context;Lcom/android/car/CarDrivingStateService;Lcom/android/car/CarPropertyService;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarUXRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    .line 139
    new-instance v2, Lcom/android/car/pm/CarPackageManagerService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarUXRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    iget-object v4, p0, Lcom/android/car/ICarImpl;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    iget-object v5, p0, Lcom/android/car/ICarImpl;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/car/pm/CarPackageManagerService;-><init>(Landroid/content/Context;Lcom/android/car/CarUxRestrictionsManagerService;Lcom/android/car/SystemActivityMonitoringService;Landroid/car/userlib/CarUserManagerHelper;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarPackageManagerService:Lcom/android/car/pm/CarPackageManagerService;

    .line 143
    new-instance v2, Lcom/android/car/PerUserCarServiceHelper;

    invoke-direct {v2, p1}, Lcom/android/car/PerUserCarServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mPerUserCarServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

    .line 145
    new-instance v2, Lcom/android/car/CarInputService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v3}, Lcom/android/car/hal/VehicleHal;->getInputHal()Lcom/android/car/hal/InputHalService;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/android/car/CarInputService;-><init>(Landroid/content/Context;Lcom/android/car/hal/InputHalService;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarInputService:Lcom/android/car/CarInputService;

    .line 146
    new-instance v2, Lcom/android/car/CarProjectionService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarInputService:Lcom/android/car/CarInputService;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v3}, Lcom/android/car/CarProjectionService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarInputService;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarProjectionService:Lcom/android/car/CarProjectionService;

    .line 148
    new-instance v2, Lcom/android/car/garagemode/GarageModeService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/car/garagemode/GarageModeService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mGarageModeService:Lcom/android/car/garagemode/GarageModeService;

    .line 149
    new-instance v2, Lcom/android/car/AppFocusService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    invoke-direct {v2, p1, v3}, Lcom/android/car/AppFocusService;-><init>(Landroid/content/Context;Lcom/android/car/SystemActivityMonitoringService;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mAppFocusService:Lcom/android/car/AppFocusService;

    .line 150
    new-instance v2, Lcom/android/car/audio/CarAudioService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    iget-object v4, p0, Lcom/android/car/ICarImpl;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    invoke-direct {v2, p1, v3, v4}, Lcom/android/car/audio/CarAudioService;-><init>(Landroid/content/Context;Lcom/android/car/SystemActivityMonitoringService;Lcom/android/car/CarPowerManagementService;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    .line 152
    new-instance v2, Lcom/android/car/CarNightService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-direct {v2, p1, v3}, Lcom/android/car/CarNightService;-><init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarNightService:Lcom/android/car/CarNightService;

    .line 153
    new-instance v2, Lcom/android/car/cluster/InstrumentClusterService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mAppFocusService:Lcom/android/car/AppFocusService;

    iget-object v4, p0, Lcom/android/car/ICarImpl;->mCarInputService:Lcom/android/car/CarInputService;

    invoke-direct {v2, p1, v3, v4}, Lcom/android/car/cluster/InstrumentClusterService;-><init>(Landroid/content/Context;Lcom/android/car/AppFocusService;Lcom/android/car/CarInputService;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mInstrumentClusterService:Lcom/android/car/cluster/InstrumentClusterService;

    .line 155
    new-instance v2, Lcom/android/car/SystemStateControllerService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    invoke-direct {v2, p1, v3, p0}, Lcom/android/car/SystemStateControllerService;-><init>(Landroid/content/Context;Lcom/android/car/audio/CarAudioService;Lcom/android/car/ICarImpl;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mSystemStateControllerService:Lcom/android/car/SystemStateControllerService;

    .line 157
    new-instance v2, Lcom/android/car/vms/VmsBrokerService;

    invoke-direct {v2}, Lcom/android/car/vms/VmsBrokerService;-><init>()V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mVmsBrokerService:Lcom/android/car/vms/VmsBrokerService;

    .line 158
    new-instance v2, Lcom/android/car/vms/VmsClientManager;

    iget-object v5, p0, Lcom/android/car/ICarImpl;->mVmsBrokerService:Lcom/android/car/vms/VmsBrokerService;

    iget-object v6, p0, Lcom/android/car/ICarImpl;->mCarUserService:Lcom/android/car/user/CarUserService;

    iget-object v7, p0, Lcom/android/car/ICarImpl;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    .line 160
    invoke-virtual {v3}, Lcom/android/car/hal/VehicleHal;->getVmsHal()Lcom/android/car/hal/VmsHalService;

    move-result-object v8

    move-object v3, v2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/car/vms/VmsClientManager;-><init>(Landroid/content/Context;Lcom/android/car/vms/VmsBrokerService;Lcom/android/car/user/CarUserService;Landroid/car/userlib/CarUserManagerHelper;Lcom/android/car/hal/VmsHalService;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mVmsClientManager:Lcom/android/car/vms/VmsClientManager;

    .line 161
    new-instance v2, Lcom/android/car/VmsSubscriberService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mVmsBrokerService:Lcom/android/car/vms/VmsBrokerService;

    iget-object v4, p0, Lcom/android/car/ICarImpl;->mVmsClientManager:Lcom/android/car/vms/VmsClientManager;

    iget-object v5, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    .line 162
    invoke-virtual {v5}, Lcom/android/car/hal/VehicleHal;->getVmsHal()Lcom/android/car/hal/VmsHalService;

    move-result-object v5

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/car/VmsSubscriberService;-><init>(Landroid/content/Context;Lcom/android/car/vms/VmsBrokerService;Lcom/android/car/vms/VmsClientManager;Lcom/android/car/hal/VmsHalService;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mVmsSubscriberService:Lcom/android/car/VmsSubscriberService;

    .line 163
    new-instance v2, Lcom/android/car/VmsPublisherService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mVmsBrokerService:Lcom/android/car/vms/VmsBrokerService;

    iget-object v4, p0, Lcom/android/car/ICarImpl;->mVmsClientManager:Lcom/android/car/vms/VmsClientManager;

    invoke-direct {v2, p1, v3, v4}, Lcom/android/car/VmsPublisherService;-><init>(Landroid/content/Context;Lcom/android/car/vms/VmsBrokerService;Lcom/android/car/vms/VmsClientManager;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mVmsPublisherService:Lcom/android/car/VmsPublisherService;

    .line 165
    new-instance v2, Lcom/android/car/CarDiagnosticService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v3}, Lcom/android/car/hal/VehicleHal;->getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/android/car/CarDiagnosticService;-><init>(Landroid/content/Context;Lcom/android/car/hal/DiagnosticHalService;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarDiagnosticService:Lcom/android/car/CarDiagnosticService;

    .line 166
    new-instance v2, Lcom/android/car/CarStorageMonitoringService;

    invoke-direct {v2, p1, p3}, Lcom/android/car/CarStorageMonitoringService;-><init>(Landroid/content/Context;Lcom/android/car/systeminterface/SystemInterface;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarStorageMonitoringService:Lcom/android/car/CarStorageMonitoringService;

    .line 168
    new-instance v2, Lcom/android/car/CarConfigurationService;

    new-instance v3, Lcom/android/car/JsonReaderImpl;

    invoke-direct {v3}, Lcom/android/car/JsonReaderImpl;-><init>()V

    invoke-direct {v2, p1, v3}, Lcom/android/car/CarConfigurationService;-><init>(Landroid/content/Context;Lcom/android/car/CarConfigurationService$JsonReader;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarConfigurationService:Lcom/android/car/CarConfigurationService;

    .line 170
    new-instance v2, Lcom/android/car/CarLocationService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/ICarImpl;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-direct {v2, v3, v4}, Lcom/android/car/CarLocationService;-><init>(Landroid/content/Context;Landroid/car/userlib/CarUserManagerHelper;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarLocationService:Lcom/android/car/CarLocationService;

    .line 171
    new-instance v2, Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-direct {v2, p1}, Lcom/android/car/trust/CarTrustedDeviceService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    .line 172
    new-instance v2, Lcom/android/car/CarMediaService;

    invoke-direct {v2, p1}, Lcom/android/car/CarMediaService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarMediaService:Lcom/android/car/CarMediaService;

    .line 173
    new-instance v2, Lcom/android/car/CarBugreportManagerService;

    invoke-direct {v2, p1}, Lcom/android/car/CarBugreportManagerService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mCarBugreportManagerService:Lcom/android/car/CarBugreportManagerService;

    .line 175
    const-class v2, Lcom/android/car/CarPowerManagementService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    invoke-static {v2, v3}, Lcom/android/car/CarLocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 176
    const-class v2, Lcom/android/car/user/CarUserService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarUserService:Lcom/android/car/user/CarUserService;

    invoke-static {v2, v3}, Lcom/android/car/CarLocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 177
    const-class v2, Lcom/android/car/trust/CarTrustedDeviceService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-static {v2, v3}, Lcom/android/car/CarLocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 178
    const-class v2, Lcom/android/car/systeminterface/SystemInterface;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-static {v2, v3}, Lcom/android/car/CarLocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 179
    const-class v2, Lcom/android/car/CarDrivingStateService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

    invoke-static {v2, v3}, Lcom/android/car/CarLocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 180
    const-class v2, Lcom/android/car/PerUserCarServiceHelper;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mPerUserCarServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

    invoke-static {v2, v3}, Lcom/android/car/CarLocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 183
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v2, "allServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarServiceBase;>;"
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarUserService:Lcom/android/car/user/CarUserService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarUXRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarPackageManagerService:Lcom/android/car/pm/CarPackageManagerService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarInputService:Lcom/android/car/CarInputService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mGarageModeService:Lcom/android/car/garagemode/GarageModeService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarUserNoticeService:Lcom/android/car/user/CarUserNoticeService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mAppFocusService:Lcom/android/car/AppFocusService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarNightService:Lcom/android/car/CarNightService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mInstrumentClusterService:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mSystemStateControllerService:Lcom/android/car/SystemStateControllerService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mPerUserCarServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarProjectionService:Lcom/android/car/CarProjectionService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarDiagnosticService:Lcom/android/car/CarDiagnosticService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarStorageMonitoringService:Lcom/android/car/CarStorageMonitoringService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarConfigurationService:Lcom/android/car/CarConfigurationService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mVmsClientManager:Lcom/android/car/vms/VmsClientManager;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mVmsSubscriberService:Lcom/android/car/VmsSubscriberService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mVmsPublisherService:Lcom/android/car/VmsPublisherService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarMediaService:Lcom/android/car/CarMediaService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarLocationService:Lcom/android/car/CarLocationService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarBugreportManagerService:Lcom/android/car/CarBugreportManagerService;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/car/CarServiceBase;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/car/CarServiceBase;

    iput-object v3, p0, Lcom/android/car/ICarImpl;->mAllServices:[Lcom/android/car/CarServiceBase;

    .line 213
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/ICarImpl;)Lcom/android/car/pm/CarPackageManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/ICarImpl;

    .line 61
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarPackageManagerService:Lcom/android/car/pm/CarPackageManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/ICarImpl;)Lcom/android/car/hal/VehicleHal;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/ICarImpl;

    .line 61
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/ICarImpl;)Lcom/android/car/CarProjectionService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/ICarImpl;

    .line 61
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarProjectionService:Lcom/android/car/CarProjectionService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/ICarImpl;)Lcom/android/car/CarPowerManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/ICarImpl;

    .line 61
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/car/ICarImpl;)Lcom/android/car/trust/CarTrustedDeviceService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/ICarImpl;

    .line 61
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/car/ICarImpl;)Landroid/car/userlib/CarUserManagerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/ICarImpl;

    .line 61
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/car/ICarImpl;)Lcom/android/car/CarNightService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/ICarImpl;

    .line 61
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarNightService:Lcom/android/car/CarNightService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/car/ICarImpl;)Lcom/android/car/garagemode/GarageModeService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/ICarImpl;

    .line 61
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mGarageModeService:Lcom/android/car/garagemode/GarageModeService;

    return-object v0
.end method

.method public static assertAnyDiagnosticPermission(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 405
    const-string v0, "android.car.permission.CAR_DIAGNOSTICS"

    const-string v1, "android.car.permission.CLEAR_CAR_DIAGNOSTICS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertAnyPermission(Landroid/content/Context;[Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public static varargs assertAnyPermission(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 446
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 447
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 449
    return-void

    .line 446
    .end local v2    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requires any of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static assertCallingFromSystemProcess()V
    .locals 3

    .line 270
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 271
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 274
    return-void

    .line 272
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only allowed from system"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static assertCallingFromSystemProcessOrSelf()V
    .locals 4

    .line 282
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 283
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 284
    .local v1, "pid":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only allowed from system or self"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_1
    :goto_0
    return-void
.end method

.method public static assertClusterManagerPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 388
    const-string v0, "android.car.permission.CAR_INSTRUMENT_CLUSTER_CONTROL"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public static assertDrivingStatePermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 411
    const-string v0, "android.car.permission.CAR_DRIVING_STATE"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public static assertNavigationManagerPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 384
    const-string v0, "android.car.permission.CAR_NAVIGATION_MANAGER"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public static assertPermission(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 430
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 433
    return-void

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assertPowerPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 392
    const-string v0, "android.car.permission.CAR_POWER"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public static assertProjectionPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 396
    const-string v0, "android.car.permission.CAR_PROJECTION"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public static assertProjectionStatusPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 401
    const-string v0, "android.car.permission.ACCESS_CAR_PROJECTION_STATUS"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public static assertTrustAgentEnrollmentPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 426
    const-string v0, "android.car.permission.CAR_ENROLL_TRUST"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public static assertVehicleHalMockPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 380
    const-string v0, "android.car.permission.CAR_MOCK_VEHICLE_HAL"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public static assertVmsPublisherPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 415
    const-string v0, "android.car.permission.VMS_PUBLISHER"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public static assertVmsSubscriberPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 419
    const-string v0, "android.car.permission.VMS_SUBSCRIBER"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private dumpAllServices(Ljava/io/PrintWriter;Z)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "dumpMetricsOnly"    # Z

    .line 494
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mAllServices:[Lcom/android/car/CarServiceBase;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 495
    .local v3, "service":Lcom/android/car/CarServiceBase;
    invoke-direct {p0, v3, p1, p2}, Lcom/android/car/ICarImpl;->dumpService(Lcom/android/car/CarServiceBase;Ljava/io/PrintWriter;Z)V

    .line 494
    .end local v3    # "service":Lcom/android/car/CarServiceBase;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarTestService:Lcom/android/car/CarTestService;

    if-eqz v0, :cond_1

    .line 498
    invoke-direct {p0, v0, p1, p2}, Lcom/android/car/ICarImpl;->dumpService(Lcom/android/car/CarServiceBase;Ljava/io/PrintWriter;Z)V

    .line 501
    :cond_1
    return-void
.end method

.method private dumpService(Lcom/android/car/CarServiceBase;Ljava/io/PrintWriter;Z)V
    .locals 3
    .param p1, "service"    # Lcom/android/car/CarServiceBase;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "dumpMetricsOnly"    # Z

    .line 505
    if-eqz p3, :cond_0

    .line 506
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/car/CarServiceBase;->dumpMetrics(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 508
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/car/CarServiceBase;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    goto :goto_1

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed dumping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 514
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 441
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private traceBegin(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 522
    const-string v0, "ICarImpl"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mBootTiming:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0, p1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method private traceEnd()V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mBootTiming:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 529
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 457
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump CarService from from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " without permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    return-void

    .line 465
    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_6

    array-length v1, p3

    if-eqz v1, :cond_6

    array-length v1, p3

    if-lez v1, :cond_1

    aget-object v1, p3, v0

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 481
    :cond_1
    aget-object v1, p3, v0

    const-string v2, "--metrics"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 482
    const-string v0, "*Dump car service metrics*"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/car/ICarImpl;->dumpAllServices(Ljava/io/PrintWriter;Z)V

    goto/16 :goto_3

    .line 484
    :cond_2
    aget-object v0, p3, v0

    const-string v1, "--vms-hal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0}, Lcom/android/car/hal/VehicleHal;->getVmsHal()Lcom/android/car/hal/VmsHalService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/car/hal/VmsHalService;->dumpMetrics(Ljava/io/FileDescriptor;)V

    goto/16 :goto_3

    .line 486
    :cond_3
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_5

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 489
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commands not supported in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 487
    :cond_5
    :goto_0
    invoke-virtual {p0, p3, p2}, Lcom/android/car/ICarImpl;->execShellCmd([Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_3

    .line 466
    :cond_6
    :goto_1
    const-string v1, "*Dump car service*"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    const-string v1, "*FutureConfig, DEFAULT:true"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    const-string v1, "*Dump all services*"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    invoke-direct {p0, p2, v0}, Lcom/android/car/ICarImpl;->dumpAllServices(Ljava/io/PrintWriter;Z)V

    .line 472
    const-string v0, "*Dump Vehicle HAL*"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vehicle HAL Interface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mVehicleInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0, p2}, Lcom/android/car/hal/VehicleHal;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed dumping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 480
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 491
    :goto_3
    return-void
.end method

.method execShellCmd([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 517
    new-instance v0, Lcom/android/car/ICarImpl$CarShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/ICarImpl$CarShellCommand;-><init>(Lcom/android/car/ICarImpl;Lcom/android/car/ICarImpl$1;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->exec([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 518
    return-void
.end method

.method public getCarConnectionType()I
    .locals 1

    .line 363
    const/4 v0, 0x5

    return v0
.end method

.method public getCarInternalService(Ljava/lang/String;)Lcom/android/car/CarServiceBase;
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xce968

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x2ea4bfc8

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "internal_input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "system_activity_monitoring"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCarInternalService for unknown service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.SERVICE"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v0, 0x0

    return-object v0

    .line 371
    :cond_3
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    return-object v0

    .line 369
    :cond_4
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarInputService:Lcom/android/car/CarInputService;

    return-object v0
.end method

.method public getCarService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "configuration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "trust_enroll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "app_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "car_bugreport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "cluster_service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "uxrestriction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "vehicle_map_subscriber_service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "power"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "cabin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "hvac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "diag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "storage_monitoring"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "car_media"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "drivingstate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_10
    const-string v0, "car-service-test"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_11
    const-string v0, "package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_12
    const-string v0, "vendor_extension"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_13
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_14
    const-string v0, "property"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_15
    const-string v0, "diagnostic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_16
    const-string v0, "car_navigation_service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_17
    const-string v0, "projection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarService for unknown service:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CAR.SERVICE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-object v1

    .line 354
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarBugreportManagerService:Lcom/android/car/CarBugreportManagerService;

    return-object v0

    .line 352
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarMediaService:Lcom/android/car/CarMediaService;

    return-object v0

    .line 349
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertTrustAgentEnrollmentPermission(Landroid/content/Context;)V

    .line 350
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarTrustedDeviceService:Lcom/android/car/trust/CarTrustedDeviceService;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getCarTrustAgentEnrollmentService()Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    move-result-object v0

    return-object v0

    .line 347
    :pswitch_3
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarConfigurationService:Lcom/android/car/CarConfigurationService;

    return-object v0

    .line 345
    :pswitch_4
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarUXRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    return-object v0

    .line 342
    :pswitch_5
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertDrivingStatePermission(Landroid/content/Context;)V

    .line 343
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

    return-object v0

    .line 339
    :pswitch_6
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.STORAGE_MONITORING"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarStorageMonitoringService:Lcom/android/car/CarStorageMonitoringService;

    return-object v0

    .line 326
    :pswitch_7
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_TEST_SERVICE"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 327
    monitor-enter p0

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarTestService:Lcom/android/car/CarTestService;

    if-nez v0, :cond_1

    .line 329
    new-instance v0, Lcom/android/car/CarTestService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/car/CarTestService;-><init>(Landroid/content/Context;Lcom/android/car/ICarImpl;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarTestService:Lcom/android/car/CarTestService;

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarTestService:Lcom/android/car/CarTestService;

    monitor-exit p0

    return-object v0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 323
    :pswitch_8
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 324
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mVmsSubscriberService:Lcom/android/car/VmsSubscriberService;

    return-object v0

    .line 321
    :pswitch_9
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarProjectionService:Lcom/android/car/CarProjectionService;

    return-object v0

    .line 318
    :pswitch_a
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertClusterManagerPermission(Landroid/content/Context;)V

    .line 319
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mInstrumentClusterService:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-virtual {v0}, Lcom/android/car/cluster/InstrumentClusterService;->getManagerService()Landroid/car/cluster/IInstrumentClusterManagerService$Stub;

    move-result-object v0

    return-object v0

    .line 313
    :pswitch_b
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertNavigationManagerPermission(Landroid/content/Context;)V

    .line 314
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mInstrumentClusterService:Lcom/android/car/cluster/InstrumentClusterService;

    .line 315
    invoke-virtual {v0}, Lcom/android/car/cluster/InstrumentClusterService;->getNavigationService()Landroid/car/cluster/renderer/IInstrumentClusterNavigation;

    move-result-object v0

    .line 316
    .local v0, "navService":Landroid/car/cluster/renderer/IInstrumentClusterNavigation;
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Landroid/car/cluster/renderer/IInstrumentClusterNavigation;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_2
    return-object v1

    .line 311
    .end local v0    # "navService":Landroid/car/cluster/renderer/IInstrumentClusterNavigation;
    :pswitch_c
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    return-object v0

    .line 302
    :pswitch_d
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertPowerPermission(Landroid/content/Context;)V

    .line 303
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    return-object v0

    .line 299
    :pswitch_e
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertAnyDiagnosticPermission(Landroid/content/Context;)V

    .line 300
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarDiagnosticService:Lcom/android/car/CarDiagnosticService;

    return-object v0

    .line 297
    :pswitch_f
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarPackageManagerService:Lcom/android/car/pm/CarPackageManagerService;

    return-object v0

    .line 295
    :pswitch_10
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mAppFocusService:Lcom/android/car/AppFocusService;

    return-object v0

    .line 293
    :pswitch_11
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x756b35b1 -> :sswitch_17
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
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
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

.method init()V
    .locals 4

    .line 217
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "VehicleHalTiming"

    const-wide/16 v2, 0x800

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mBootTiming:Landroid/util/TimingsTraceLog;

    .line 218
    const-string v0, "VehicleHal.init"

    invoke-direct {p0, v0}, Lcom/android/car/ICarImpl;->traceBegin(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0}, Lcom/android/car/hal/VehicleHal;->init()V

    .line 220
    invoke-direct {p0}, Lcom/android/car/ICarImpl;->traceEnd()V

    .line 221
    const-string v0, "CarService.initAllServices"

    invoke-direct {p0, v0}, Lcom/android/car/ICarImpl;->traceBegin(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mAllServices:[Lcom/android/car/CarServiceBase;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 223
    .local v3, "service":Lcom/android/car/CarServiceBase;
    invoke-interface {v3}, Lcom/android/car/CarServiceBase;->init()V

    .line 222
    .end local v3    # "service":Lcom/android/car/CarServiceBase;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/android/car/ICarImpl;->traceEnd()V

    .line 226
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v0}, Lcom/android/car/systeminterface/SystemInterface;->reconfigureSecondaryDisplays()V

    .line 227
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 263
    invoke-static {}, Lcom/android/car/ICarImpl;->assertCallingFromSystemProcess()V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Foreground user switched to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ICarImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarUserService:Lcom/android/car/user/CarUserService;

    invoke-virtual {v0, p1}, Lcom/android/car/user/CarUserService;->onSwitchUser(I)V

    .line 267
    return-void
.end method

.method release()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mAllServices:[Lcom/android/car/CarServiceBase;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mAllServices:[Lcom/android/car/CarServiceBase;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/car/CarServiceBase;->release()V

    .line 231
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 234
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0}, Lcom/android/car/hal/VehicleHal;->release()V

    .line 235
    invoke-static {}, Lcom/android/car/CarLocalServices;->removeAllServices()V

    .line 236
    return-void
.end method

.method public setCarServiceHelper(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "helper"    # Landroid/os/IBinder;

    .line 247
    invoke-static {}, Lcom/android/car/ICarImpl;->assertCallingFromSystemProcess()V

    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/car/ICarServiceHelper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/car/ICarServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mICarServiceHelper:Lcom/android/internal/car/ICarServiceHelper;

    .line 250
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mICarServiceHelper:Lcom/android/internal/car/ICarServiceHelper;

    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface;->setCarServiceHelper(Lcom/android/internal/car/ICarServiceHelper;)V

    .line 251
    monitor-exit p0

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUserLockStatus(II)V
    .locals 4
    .param p1, "userHandle"    # I
    .param p2, "unlocked"    # I

    .line 256
    invoke-static {}, Lcom/android/car/ICarImpl;->assertCallingFromSystemProcess()V

    .line 257
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarUserService:Lcom/android/car/user/CarUserService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, p1, v3}, Lcom/android/car/user/CarUserService;->setUserLockStatus(IZ)V

    .line 258
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarMediaService:Lcom/android/car/CarMediaService;

    if-ne p2, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, p1, v1}, Lcom/android/car/CarMediaService;->setUserLockStatus(IZ)V

    .line 259
    return-void
.end method

.method vehicleHalReconnected(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;)V
    .locals 4
    .param p1, "vehicle"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    .line 239
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/VehicleHal;->vehicleHalReconnected(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;)V

    .line 240
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mAllServices:[Lcom/android/car/CarServiceBase;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 241
    .local v3, "service":Lcom/android/car/CarServiceBase;
    invoke-interface {v3}, Lcom/android/car/CarServiceBase;->vehicleHalReconnected()V

    .line 240
    .end local v3    # "service":Lcom/android/car/CarServiceBase;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method
