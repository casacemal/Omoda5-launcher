.class public Lcom/android/car/hal/VehicleHal;
.super Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback$Stub;
.source "VehicleHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;,
        Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;
    }
.end annotation


# static fields
.field private static final DATA_DELIMITER:Ljava/lang/String; = ","

.field private static final DBG:Z = false

.field private static final NO_AREA:I = -0x1


# instance fields
.field private final mAllProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/car/hal/HalServiceBase;",
            ">;"
        }
    .end annotation
.end field

.field private mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

.field private final mEventLog:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mHalClient:Lcom/android/car/hal/HalClient;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mInputHal:Lcom/android/car/hal/InputHalService;

.field private final mPowerHal:Lcom/android/car/hal/PowerHalService;

.field private final mPropertyHal:Lcom/android/car/hal/PropertyHalService;

.field private final mPropertyHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/car/hal/HalServiceBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mServicesToDispatch:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/car/hal/HalServiceBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscribedProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;",
            ">;"
        }
    .end annotation
.end field

.field private final mVmsHal:Lcom/android/car/hal/VmsHalService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/automotive/vehicle/V2_0/IVehicle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vehicle"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    .line 93
    invoke-direct {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback$Stub;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHandlers:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllServices:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mEventLog:Ljava/util/HashMap;

    .line 419
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mServicesToDispatch:Landroid/util/ArraySet;

    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VEHICLE-HAL"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHandlerThread:Landroid/os/HandlerThread;

    .line 95
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v0, Lcom/android/car/hal/PowerHalService;

    invoke-direct {v0, p0}, Lcom/android/car/hal/PowerHalService;-><init>(Lcom/android/car/hal/VehicleHal;)V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPowerHal:Lcom/android/car/hal/PowerHalService;

    .line 98
    new-instance v0, Lcom/android/car/hal/PropertyHalService;

    invoke-direct {v0, p0}, Lcom/android/car/hal/PropertyHalService;-><init>(Lcom/android/car/hal/VehicleHal;)V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHal:Lcom/android/car/hal/PropertyHalService;

    .line 99
    new-instance v0, Lcom/android/car/hal/InputHalService;

    invoke-direct {v0, p0}, Lcom/android/car/hal/InputHalService;-><init>(Lcom/android/car/hal/VehicleHal;)V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mInputHal:Lcom/android/car/hal/InputHalService;

    .line 100
    new-instance v0, Lcom/android/car/hal/VmsHalService;

    invoke-direct {v0, p1, p0}, Lcom/android/car/hal/VmsHalService;-><init>(Landroid/content/Context;Lcom/android/car/hal/VehicleHal;)V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mVmsHal:Lcom/android/car/hal/VmsHalService;

    .line 101
    new-instance v0, Lcom/android/car/hal/DiagnosticHalService;

    invoke-direct {v0, p0}, Lcom/android/car/hal/DiagnosticHalService;-><init>(Lcom/android/car/hal/VehicleHal;)V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    .line 102
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllServices:Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/car/hal/HalServiceBase;

    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mPowerHal:Lcom/android/car/hal/PowerHalService;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mInputHal:Lcom/android/car/hal/InputHalService;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHal:Lcom/android/car/hal/PropertyHalService;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mVmsHal:Lcom/android/car/hal/VmsHalService;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    new-instance v0, Lcom/android/car/hal/HalClient;

    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p2, v1, p0}, Lcom/android/car/hal/HalClient;-><init>(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;Landroid/os/Looper;Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;)V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/android/car/hal/PowerHalService;Lcom/android/car/hal/DiagnosticHalService;Lcom/android/car/hal/HalClient;Lcom/android/car/hal/PropertyHalService;)V
    .locals 2
    .param p1, "powerHal"    # Lcom/android/car/hal/PowerHalService;
    .param p2, "diagnosticHal"    # Lcom/android/car/hal/DiagnosticHalService;
    .param p3, "halClient"    # Lcom/android/car/hal/HalClient;
    .param p4, "propertyHal"    # Lcom/android/car/hal/PropertyHalService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 114
    invoke-direct {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback$Stub;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    .line 83
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHandlers:Landroid/util/SparseArray;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mAllServices:Ljava/util/ArrayList;

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mEventLog:Ljava/util/HashMap;

    .line 419
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mServicesToDispatch:Landroid/util/ArraySet;

    .line 115
    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHandlerThread:Landroid/os/HandlerThread;

    .line 116
    iput-object p1, p0, Lcom/android/car/hal/VehicleHal;->mPowerHal:Lcom/android/car/hal/PowerHalService;

    .line 117
    iput-object p4, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHal:Lcom/android/car/hal/PropertyHalService;

    .line 118
    iput-object p2, p0, Lcom/android/car/hal/VehicleHal;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    .line 119
    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mInputHal:Lcom/android/car/hal/InputHalService;

    .line 120
    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mVmsHal:Lcom/android/car/hal/VmsHalService;

    .line 121
    iput-object p3, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    .line 122
    iput-object p2, p0, Lcom/android/car/hal/VehicleHal;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    .line 123
    return-void
.end method

.method private assertServiceOwnerLocked(Lcom/android/car/hal/HalServiceBase;I)V
    .locals 3
    .param p1, "service"    # Lcom/android/car/hal/HalServiceBase;
    .param p2, "property"    # I

    .line 211
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 215
    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not owned by service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createPropValue(II)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 1
    .param p0, "propId"    # I
    .param p1, "areaId"    # I

    .line 733
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;-><init>()V

    .line 734
    .local v0, "propValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iput p0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 735
    iput p1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    .line 736
    return-object v0
.end method

.method static dumpProperties(Ljava/io/PrintWriter;Ljava/util/Collection;)V
    .locals 5
    .param p0, "writer"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;)V"
        }
    .end annotation

    .line 414
    .local p1, "configs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 415
    .local v1, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "property 0x%x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    .end local v1    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    goto :goto_0

    .line 417
    :cond_0
    return-void
.end method

.method private static dumpPropertyConfigsHelp(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)Ljava/lang/String;
    .locals 5
    .param p0, "config"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    const-string v1, "Property:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string v1, ",Property name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleProperty;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const-string v1, ",access:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string v1, ",changeMode:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string v1, ",config:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string v1, ",fs min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 577
    const-string v1, ",fs max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 578
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;

    .line 579
    .local v2, "area":Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;
    const-string v3, ",areaId :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->areaId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const-string v3, ",f min:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->minFloatValue:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 581
    const-string v3, ",f max:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->maxFloatValue:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 582
    const-string v3, ",i min:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->minInt32Value:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    const-string v3, ",i max:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->maxInt32Value:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 584
    const-string v3, ",i64 min:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->minInt64Value:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 585
    const-string v3, ",i64 max:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->maxInt64Value:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 586
    .end local v2    # "area":Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;
    goto :goto_0

    .line 587
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dumpPropertyValueByConfig(Ljava/io/PrintWriter;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)V
    .locals 7
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "config"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 518
    iget-object v0, p2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "Can not get property value for propertyId: 0x"

    if-eqz v0, :cond_0

    .line 520
    :try_start_0
    iget v0, p2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {p0, v0}, Lcom/android/car/hal/VehicleHal;->get(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 521
    .local v0, "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-static {v0}, Lcom/android/car/hal/VehicleHal;->dumpVehiclePropValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 524
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", areaId: 0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_3

    .line 527
    :cond_0
    iget-object v0, p2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;

    .line 528
    .local v2, "areaConfig":Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;
    iget v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->areaId:I

    .line 530
    .local v3, "area":I
    :try_start_1
    iget v4, p2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {p0, v4, v3}, Lcom/android/car/hal/VehicleHal;->get(II)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v4

    .line 531
    .local v4, "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-static {v4}, Lcom/android/car/hal/VehicleHal;->dumpVehiclePropValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 535
    .end local v4    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    goto :goto_2

    .line 532
    :catch_1
    move-exception v4

    .line 533
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 534
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", areaId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 533
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    .end local v2    # "areaConfig":Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;
    .end local v3    # "area":I
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 538
    :cond_1
    :goto_3
    return-void
.end method

.method private static dumpVehiclePropValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 709
    const/16 v0, 0x14

    .line 711
    .local v0, "MAX_BYTE_SIZE":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    const-string v2, "Property:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    const-string v2, ",status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 714
    const-string v2, ",timestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 715
    const-string v2, ",zone:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const-string v2, ",floatValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const-string v2, ",int32Values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const-string v2, ",int64Values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    .line 719
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 721
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, ",bytes: "

    const/16 v4, 0x14

    if-le v2, v4, :cond_0

    .line 722
    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 723
    .local v2, "bytes":[Ljava/lang/Object;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .end local v2    # "bytes":[Ljava/lang/Object;
    goto :goto_0

    .line 725
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    :goto_0
    const-string v2, ",string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static isPropertySubscribable(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)Z
    .locals 2
    .param p0, "config"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 406
    iget v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    return v1

    .line 408
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 467
    const-string v0, "**dump HAL services**"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/hal/HalServiceBase;

    .line 469
    .local v1, "service":Lcom/android/car/hal/HalServiceBase;
    invoke-virtual {v1, p1}, Lcom/android/car/hal/HalServiceBase;->dump(Ljava/io/PrintWriter;)V

    .line 470
    .end local v1    # "service":Lcom/android/car/hal/HalServiceBase;
    goto :goto_0

    .line 472
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/car/hal/VehicleHal;->dumpPropertyConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 473
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 473
    const-string v2, "**All Events, now ns:%d**"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mEventLog:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;

    .line 476
    .local v2, "info":Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;
    new-array v4, v4, [Ljava/lang/Object;

    .line 477
    invoke-static {v2}, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->access$300(Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2}, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->access$400(Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v5

    invoke-static {v5}, Lcom/android/car/hal/VehicleHal;->dumpVehiclePropValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 476
    const-string v5, "event count:%d, lastEvent:%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    .end local v2    # "info":Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;
    goto :goto_1

    .line 480
    :cond_1
    const-string v1, "**Property handlers**"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHandlers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 482
    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHandlers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 483
    .local v2, "propId":I
    iget-object v5, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHandlers:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/car/hal/HalServiceBase;

    .line 484
    .local v5, "service":Lcom/android/car/hal/HalServiceBase;
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v5, v6, v0

    const-string v7, "Prop: 0x%08X, service: %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    .end local v2    # "propId":I
    .end local v5    # "service":Lcom/android/car/hal/HalServiceBase;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 486
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public dumpPropertyConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "propId"    # Ljava/lang/String;

    .line 548
    monitor-enter p0

    .line 549
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 550
    .local v0, "configList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    const-string v1, "**All properties**"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 555
    .local v2, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    invoke-static {v2}, Lcom/android/car/hal/VehicleHal;->dumpPropertyConfigsHelp(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    .end local v2    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    goto :goto_0

    .line 557
    :cond_0
    return-void

    .line 559
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 560
    .restart local v2    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 561
    invoke-static {v2}, Lcom/android/car/hal/VehicleHal;->dumpPropertyConfigsHelp(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    return-void

    .line 564
    .end local v2    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :cond_2
    goto :goto_1

    .line 566
    :cond_3
    return-void

    .line 550
    .end local v0    # "configList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dumpPropertyValueByCommend(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "propId"    # Ljava/lang/String;
    .param p3, "areaId"    # Ljava/lang/String;

    .line 496
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 497
    const-string v0, "**All property values**"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

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

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 499
    .local v1, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    invoke-direct {p0, p1, v1}, Lcom/android/car/hal/VehicleHal;->dumpPropertyValueByConfig(Ljava/io/PrintWriter;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)V

    .line 500
    .end local v1    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 501
    :cond_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 503
    .local v0, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    invoke-direct {p0, p1, v0}, Lcom/android/car/hal/VehicleHal;->dumpPropertyValueByConfig(Ljava/io/PrintWriter;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)V

    .line 504
    .end local v0    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    goto :goto_1

    .line 505
    :cond_2
    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 506
    .local v0, "id":I
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 508
    .local v1, "area":I
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/car/hal/VehicleHal;->get(II)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v2

    .line 509
    .local v2, "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-static {v2}, Lcom/android/car/hal/VehicleHal;->dumpVehiclePropValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    .end local v2    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    goto :goto_1

    .line 510
    :catch_0
    move-exception v2

    .line 511
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not get property value for propertyId: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", areaId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    .end local v0    # "id":I
    .end local v1    # "area":I
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public get(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 1
    .param p1, "propertyId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 316
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/car/hal/VehicleHal;->get(II)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    return-object v0
.end method

.method public get(II)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 2
    .param p1, "propertyId"    # I
    .param p2, "areaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 324
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;-><init>()V

    .line 325
    .local v0, "propValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iput p1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 326
    iput p2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    .line 327
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v1, v0}, Lcom/android/car/hal/HalClient;->getValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v1

    return-object v1
.end method

.method public get(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 1
    .param p1, "requestedPropValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/HalClient;->getValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "propertyId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 331
    const/4 v0, -0x1

    invoke-static {p2, v0}, Lcom/android/car/hal/VehicleHal;->createPropValue(II)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/car/hal/VehicleHal;->get(Ljava/lang/Class;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;II)Ljava/lang/Object;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "propertyId"    # I
    .param p3, "areaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 335
    invoke-static {p2, p3}, Lcom/android/car/hal/VehicleHal;->createPropValue(II)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/car/hal/VehicleHal;->get(Ljava/lang/Class;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Ljava/lang/Object;
    .locals 4
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "requestedPropValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v0, p2}, Lcom/android/car/hal/HalClient;->getValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 344
    .local v0, "propValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_c

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    goto/16 :goto_2

    .line 346
    :cond_0
    const-class v1, Ljava/lang/Boolean;

    if-eq p1, v1, :cond_a

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_1

    goto/16 :goto_1

    .line 348
    :cond_1
    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_9

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 350
    :cond_2
    const-class v1, [Ljava/lang/Integer;

    if-ne p1, v1, :cond_3

    .line 351
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    .line 352
    .local v1, "intArray":[Ljava/lang/Integer;
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 353
    .end local v1    # "intArray":[Ljava/lang/Integer;
    :cond_3
    const-class v1, [Ljava/lang/Float;

    if-ne p1, v1, :cond_4

    .line 354
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Float;

    .line 355
    .local v1, "floatArray":[Ljava/lang/Float;
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 356
    .end local v1    # "floatArray":[Ljava/lang/Float;
    :cond_4
    const-class v1, [I

    if-ne p1, v1, :cond_5

    .line 357
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/car/CarServiceUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v1

    return-object v1

    .line 358
    :cond_5
    const-class v1, [F

    if-ne p1, v1, :cond_6

    .line 359
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/car/CarServiceUtils;->toFloatArray(Ljava/util/List;)[F

    move-result-object v1

    return-object v1

    .line 360
    :cond_6
    const-class v1, [B

    if-ne p1, v1, :cond_7

    .line 361
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/car/CarServiceUtils;->toByteArray(Ljava/util/List;)[B

    move-result-object v1

    return-object v1

    .line 362
    :cond_7
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_8

    .line 363
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    return-object v1

    .line 365
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    :cond_9
    :goto_0
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 347
    :cond_a
    :goto_1
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_b

    move v2, v3

    :cond_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 345
    :cond_c
    :goto_2
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAllPropConfigs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    return-object v0
.end method

.method public getInputHal()Lcom/android/car/hal/InputHalService;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mInputHal:Lcom/android/car/hal/InputHalService;

    return-object v0
.end method

.method public getPowerHal()Lcom/android/car/hal/PowerHalService;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPowerHal:Lcom/android/car/hal/PowerHalService;

    return-object v0
.end method

.method public getPropertyHal()Lcom/android/car/hal/PropertyHalService;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHal:Lcom/android/car/hal/PropertyHalService;

    return-object v0
.end method

.method public getSampleRate(I)F
    .locals 2
    .param p1, "propId"    # I

    .line 382
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;

    .line 383
    .local v0, "opts":Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    if-nez v0, :cond_0

    .line 385
    const/high16 v1, -0x40800000    # -1.0f

    return v1

    .line 387
    :cond_0
    iget v1, v0, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;->sampleRate:F

    return v1
.end method

.method public getVmsHal()Lcom/android/car/hal/VmsHalService;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mVmsHal:Lcom/android/car/hal/VmsHalService;

    return-object v0
.end method

.method public init()V
    .locals 8

    .line 144
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v1}, Lcom/android/car/hal/HalClient;->getAllPropConfigs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .local v0, "properties":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    nop

    .line 149
    monitor-enter p0

    .line 151
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 152
    .local v2, "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget-object v3, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    nop

    .end local v2    # "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    goto :goto_0

    .line 154
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mAllServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/hal/HalServiceBase;

    .line 157
    .local v2, "service":Lcom/android/car/hal/HalServiceBase;
    invoke-virtual {v2, v0}, Lcom/android/car/hal/HalServiceBase;->takeSupportedProperties(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    .line 158
    .local v3, "taken":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    if-nez v3, :cond_1

    .line 159
    goto :goto_1

    .line 164
    :cond_1
    monitor-enter p0

    .line 165
    :try_start_2
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 166
    .local v5, "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget-object v6, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHandlers:Landroid/util/SparseArray;

    iget v7, v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v6, v7, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 167
    .end local v5    # "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    goto :goto_2

    .line 168
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 170
    invoke-virtual {v2}, Lcom/android/car/hal/HalServiceBase;->init()V

    .line 171
    .end local v2    # "service":Lcom/android/car/hal/HalServiceBase;
    .end local v3    # "taken":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    goto :goto_1

    .line 168
    .restart local v2    # "service":Lcom/android/car/hal/HalServiceBase;
    .restart local v3    # "taken":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 172
    .end local v2    # "service":Lcom/android/car/hal/HalServiceBase;
    .end local v3    # "taken":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    :cond_3
    return-void

    .line 154
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 145
    .end local v0    # "properties":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to retrieve vehicle property configuration"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public injectOnPropertySetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "zone"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;

    .line 640
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 643
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 644
    .local v0, "propId":I
    invoke-static {p2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 645
    .local v1, "zoneId":I
    invoke-static {p3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 646
    .local v2, "errorId":I
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/car/hal/VehicleHal;->onPropertySetError(III)V

    .line 647
    return-void

    .line 641
    .end local v0    # "propId":I
    .end local v1    # "zoneId":I
    .end local v2    # "errorId":I
    :cond_1
    :goto_0
    return-void
.end method

.method public injectVhalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "zone"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 598
    if-eqz p3, :cond_6

    if-eqz p2, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 601
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 602
    .local v0, "propId":I
    invoke-static {p2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 603
    .local v1, "zoneId":I
    invoke-static {v0, v1}, Lcom/android/car/hal/VehicleHal;->createPropValue(II)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v2

    .line 604
    .local v2, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    const/high16 v3, 0xff0000

    and-int/2addr v3, v0

    .line 606
    .local v3, "propertyType":I
    new-instance v4, Ljava/util/ArrayList;

    const-string v5, ","

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 607
    .local v4, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/high16 v5, 0x200000

    if-eq v3, v5, :cond_5

    const/high16 v5, 0x400000

    if-eq v3, v5, :cond_3

    const/high16 v5, 0x410000

    if-eq v3, v5, :cond_3

    const/high16 v5, 0x600000

    if-eq v3, v5, :cond_1

    const/high16 v5, 0x610000

    if-eq v3, v5, :cond_1

    .line 625
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Property type unsupported:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CAR.HAL"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void

    .line 620
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 621
    .local v6, "s":Ljava/lang/String;
    iget-object v7, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v7, v7, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    .end local v6    # "s":Ljava/lang/String;
    goto :goto_0

    .line 623
    :cond_2
    goto :goto_2

    .line 614
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 615
    .restart local v6    # "s":Ljava/lang/String;
    iget-object v7, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v7, v7, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    .end local v6    # "s":Ljava/lang/String;
    goto :goto_1

    .line 617
    :cond_4
    goto :goto_2

    .line 609
    :cond_5
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 610
    .local v5, "boolValue":Z
    iget-object v6, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v6, v6, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    nop

    .line 628
    .end local v5    # "boolValue":Z
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    .line 629
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v5}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/car/hal/VehicleHal;->onPropertyEvent(Ljava/util/ArrayList;)V

    .line 630
    return-void

    .line 599
    .end local v0    # "propId":I
    .end local v1    # "zoneId":I
    .end local v2    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v3    # "propertyType":I
    .end local v4    # "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_3
    return-void
.end method

.method public isPropertySupported(I)Z
    .locals 2
    .param p1, "propertyId"    # I

    .line 308
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onPropertyEvent(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 423
    .local p1, "propValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    monitor-enter p0

    .line 424
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 425
    .local v1, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHandlers:Landroid/util/SparseArray;

    iget v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/hal/HalServiceBase;

    .line 426
    .local v2, "service":Lcom/android/car/hal/HalServiceBase;
    if-nez v2, :cond_0

    .line 427
    const-string v3, "CAR.HAL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HalService not found for prop: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 428
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 427
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    goto :goto_0

    .line 431
    :cond_0
    invoke-virtual {v2}, Lcom/android/car/hal/HalServiceBase;->getDispatchList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v3, p0, Lcom/android/car/hal/VehicleHal;->mServicesToDispatch:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v3, p0, Lcom/android/car/hal/VehicleHal;->mEventLog:Ljava/util/HashMap;

    iget v4, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;

    .line 434
    .local v3, "info":Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;
    if-nez v3, :cond_1

    .line 435
    new-instance v4, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;-><init>(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Lcom/android/car/hal/VehicleHal$1;)V

    move-object v3, v4

    .line 436
    iget-object v4, p0, Lcom/android/car/hal/VehicleHal;->mEventLog:Ljava/util/HashMap;

    iget v5, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 438
    :cond_1
    invoke-static {v3, v1}, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->access$200(Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    .line 440
    .end local v1    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v2    # "service":Lcom/android/car/hal/HalServiceBase;
    .end local v3    # "info":Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;
    :goto_1
    goto :goto_0

    .line 441
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mServicesToDispatch:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/hal/HalServiceBase;

    .line 443
    .local v1, "s":Lcom/android/car/hal/HalServiceBase;
    invoke-virtual {v1}, Lcom/android/car/hal/HalServiceBase;->getDispatchList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/hal/HalServiceBase;->handleHalEvents(Ljava/util/List;)V

    .line 444
    invoke-virtual {v1}, Lcom/android/car/hal/HalServiceBase;->getDispatchList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 445
    .end local v1    # "s":Lcom/android/car/hal/HalServiceBase;
    goto :goto_2

    .line 446
    :cond_3
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mServicesToDispatch:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 447
    return-void

    .line 441
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPropertySet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 0
    .param p1, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 452
    return-void
.end method

.method public onPropertySetError(III)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "propId"    # I
    .param p3, "areaId"    # I

    .line 456
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 457
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 456
    const-string v1, "onPropertySetError, errorCode: %d, prop: 0x%x, area: 0x%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.HAL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    if-eqz p2, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/hal/HalServiceBase;

    .line 460
    .local v0, "service":Lcom/android/car/hal/HalServiceBase;
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v0, p2, p3}, Lcom/android/car/hal/HalServiceBase;->handlePropertySetError(II)V

    .line 464
    .end local v0    # "service":Lcom/android/car/hal/HalServiceBase;
    :cond_0
    return-void
.end method

.method public release()V
    .locals 5

    .line 176
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mAllServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/hal/HalServiceBase;

    invoke-virtual {v1}, Lcom/android/car/hal/HalServiceBase;->release()V

    .line 176
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 179
    .end local v0    # "i":I
    :cond_0
    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .local v1, "p":I
    :try_start_1
    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v2, v1}, Lcom/android/car/hal/HalClient;->unsubscribe(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    goto :goto_2

    .line 183
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CAR.HAL"

    const-string v4, "Failed to unsubscribe"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v1    # "p":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_1

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 189
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 190
    monitor-exit p0

    .line 192
    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method set(I)Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;
    .locals 7
    .param p1, "propId"    # I

    .line 397
    new-instance v6, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;

    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;-><init>(Lcom/android/car/hal/VehicleHal;Lcom/android/car/hal/HalClient;IILcom/android/car/hal/VehicleHal$1;)V

    return-object v6
.end method

.method set(II)Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;
    .locals 7
    .param p1, "propId"    # I
    .param p2, "areaId"    # I

    .line 402
    new-instance v6, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;

    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;-><init>(Lcom/android/car/hal/VehicleHal;Lcom/android/car/hal/HalClient;IILcom/android/car/hal/VehicleHal$1;)V

    return-object v6
.end method

.method protected set(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 1
    .param p1, "propValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/HalClient;->setValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    .line 393
    return-void
.end method

.method public subscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V
    .locals 2
    .param p1, "service"    # Lcom/android/car/hal/HalServiceBase;
    .param p2, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/car/hal/VehicleHal;->subscribeProperty(Lcom/android/car/hal/HalServiceBase;IFI)V

    .line 225
    return-void
.end method

.method public subscribeProperty(Lcom/android/car/hal/HalServiceBase;IF)V
    .locals 1
    .param p1, "service"    # Lcom/android/car/hal/HalServiceBase;
    .param p2, "property"    # I
    .param p3, "sampleRateHz"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/car/hal/VehicleHal;->subscribeProperty(Lcom/android/car/hal/HalServiceBase;IFI)V

    .line 235
    return-void
.end method

.method public subscribeProperty(Lcom/android/car/hal/HalServiceBase;IFI)V
    .locals 5
    .param p1, "service"    # Lcom/android/car/hal/HalServiceBase;
    .param p2, "property"    # I
    .param p3, "samplingRateHz"    # F
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 253
    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 255
    .local v0, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    if-eqz v0, :cond_1

    .line 260
    invoke-static {v0}, Lcom/android/car/hal/VehicleHal;->isPropertySubscribable(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    new-instance v1, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;

    invoke-direct {v1}, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;-><init>()V

    .line 262
    .local v1, "opts":Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    iput p2, v1, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;->propId:I

    .line 263
    iput p3, v1, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;->sampleRate:F

    .line 264
    iput p4, v1, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;->flags:I

    .line 265
    monitor-enter p0

    .line 266
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/car/hal/VehicleHal;->assertServiceOwnerLocked(Lcom/android/car/hal/HalServiceBase;I)V

    .line 267
    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/car/hal/HalClient;->subscribe([Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 273
    goto :goto_0

    .line 271
    :catch_0
    move-exception v2

    .line 272
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to subscribe to property: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CAR.HAL"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    .end local v1    # "opts":Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 268
    .restart local v1    # "opts":Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 275
    .end local v1    # "opts":Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot subscribe to property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.HAL"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_1
    return-void

    .line 258
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscribe error: config is null for property 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    .end local v0    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public unsubscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V
    .locals 4
    .param p1, "service"    # Lcom/android/car/hal/HalServiceBase;
    .param p2, "property"    # I

    .line 285
    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 287
    .local v0, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    if-nez v0, :cond_0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsubscribeProperty: property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.HAL"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 291
    :cond_0
    invoke-static {v0}, Lcom/android/car/hal/VehicleHal;->isPropertySubscribable(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    monitor-enter p0

    .line 293
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/car/hal/VehicleHal;->assertServiceOwnerLocked(Lcom/android/car/hal/HalServiceBase;I)V

    .line 294
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :try_start_2
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v1, p2}, Lcom/android/car/hal/HalClient;->unsubscribe(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unsubscribe from property: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    const-string v3, "CAR.SERVICE"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 295
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 303
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot unsubscribe property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.HAL"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_1
    return-void

    .line 287
    .end local v0    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public vehicleHalReconnected(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;)V
    .locals 5
    .param p1, "vehicle"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    new-instance v0, Lcom/android/car/hal/HalClient;

    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/car/hal/HalClient;-><init>(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;Landroid/os/Looper;Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;)V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    .line 130
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;

    .line 131
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .local v0, "options":[Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    :try_start_1
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v1, v0}, Lcom/android/car/hal/HalClient;->subscribe([Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    nop

    .line 138
    .end local v0    # "options":[Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    :try_start_2
    monitor-exit p0

    .line 139
    return-void

    .line 135
    .restart local v0    # "options":[Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to subscribe: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/car/hal/VehicleHal;
    .end local p1    # "vehicle":Landroid/hardware/automotive/vehicle/V2_0/IVehicle;
    throw v2

    .line 138
    .end local v0    # "options":[Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/car/hal/VehicleHal;
    .restart local p1    # "vehicle":Landroid/hardware/automotive/vehicle/V2_0/IVehicle;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
