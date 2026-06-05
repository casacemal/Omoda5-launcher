.class public Lcom/android/car/hal/PowerHalService;
.super Lcom/android/car/hal/HalServiceBase;
.source "PowerHalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/hal/PowerHalService$PowerState;,
        Lcom/android/car/hal/PowerHalService$PowerEventListener;
    }
.end annotation


# static fields
.field public static final MAX_BRIGHTNESS:I = 0x64

.field private static final PWR_MODE_ABNORMAL:I = 0x5

.field private static final PWR_MODE_NONE:I = 0x0

.field private static final PWR_MODE_OFF:I = 0x1

.field private static final PWR_MODE_RUN:I = 0x3

.field private static final PWR_MODE_SLEEP:I = 0x4

.field private static final PWR_MODE_STANDBY:I = 0x2

.field private static final PWR_MODE_TEMPRUN_ENDING:I = 0x13

.field private static final PWR_MODE_TEMP_ON:I = 0x6

.field private static final PWR_REQ_SYSTEM_OFF:I = 0x14

.field public static final SET_DEEP_SLEEP_ENTRY:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_DEEP_SLEEP_EXIT:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_ON:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_SHUTDOWN_CANCELLED:I = 0x8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_SHUTDOWN_POSTPONE:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_SHUTDOWN_PREPARE:I = 0x7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_SHUTDOWN_START:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SET_WAIT_FOR_VHAL:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SHUTDOWN_CAN_SLEEP:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SHUTDOWN_IMMEDIATELY:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SHUTDOWN_ONLY:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private SUPPORT_YF_POWER_MODULE:Z

.field private final mHal:Lcom/android/car/hal/VehicleHal;

.field private mListener:Lcom/android/car/hal/PowerHalService$PowerEventListener;

.field private mMaxDisplayBrightness:I

.field private final mProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mQueuedEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/car/hal/VehicleHal;)V
    .locals 2
    .param p1, "hal"    # Lcom/android/car/hal/VehicleHal;

    .line 250
    invoke-direct {p0}, Lcom/android/car/hal/HalServiceBase;-><init>()V

    .line 97
    const-string v0, "ro.feature.yfpower.module"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/hal/PowerHalService;->SUPPORT_YF_POWER_MODULE:Z

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    .line 251
    iput-object p1, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    .line 252
    return-void
.end method

.method private dispatchEvents(Ljava/util/List;Lcom/android/car/hal/PowerHalService$PowerEventListener;)V
    .locals 9
    .param p2, "listener"    # Lcom/android/car/hal/PowerHalService$PowerEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;",
            "Lcom/android/car/hal/PowerHalService$PowerEventListener;",
            ")V"
        }
    .end annotation

    .line 617
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    const-string v0, "CAR.POWER"

    const-string v1, "dispatch power events"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-boolean v0, p0, Lcom/android/car/hal/PowerHalService;->SUPPORT_YF_POWER_MODULE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 619
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 620
    .local v3, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_3

    .line 689
    :sswitch_0
    iget-object v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 690
    .local v4, "voltage":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive IBS_VOLTAGE voltage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CAR.POWER"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-interface {p2, v4}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onVoltageInfo(F)V

    goto/16 :goto_3

    .line 682
    .end local v4    # "voltage":F
    :sswitch_1
    const-string v4, "CAR.POWER"

    const-string v5, "receive MCU_BOOT_MODE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 684
    .local v4, "mcuMode":I
    invoke-interface {p2, v4}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onMcuBootModeReceived(I)V

    .line 686
    .end local v4    # "mcuMode":I
    goto/16 :goto_3

    .line 644
    :sswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v5, v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 646
    .local v4, "tempMCUVersion":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v6, v6, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 647
    .local v5, "tempMCUVersionForApp":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v7, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v7, v7, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 648
    iget-object v7, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v7, v7, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_1

    .line 649
    iget-object v7, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v7, v7, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    const/16 v8, 0xa

    if-ge v7, v8, :cond_0

    .line 650
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 653
    :cond_0
    iget-object v7, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v7, v7, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    :cond_1
    iget-object v7, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v7, v7, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 647
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 657
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onMCUVersionReceived(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onMCUVersionForAppReceived(Ljava/lang/String;)V

    .line 660
    .end local v4    # "tempMCUVersion":Ljava/lang/StringBuilder;
    .end local v5    # "tempMCUVersionForApp":Ljava/lang/StringBuilder;
    goto/16 :goto_3

    .line 629
    :sswitch_3
    iget-object v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    .line 630
    .local v4, "state":I
    iget-object v5, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v5, v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 631
    .local v5, "param":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received PMS_PWR_MODE PMS_PWR_MODE state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CAR.POWER"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v6, Lcom/android/car/hal/PowerHalService$PowerState;

    invoke-direct {v6, v4, v5}, Lcom/android/car/hal/PowerHalService$PowerState;-><init>(II)V

    invoke-interface {p2, v6}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onApPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 634
    .end local v4    # "state":I
    .end local v5    # "param":I
    goto/16 :goto_3

    .line 637
    :sswitch_4
    const/16 v4, 0x14

    .line 638
    .local v4, "systemOff":I
    iget-object v5, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v5, v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 639
    .local v5, "systemOffReason":I
    new-instance v6, Lcom/android/car/hal/PowerHalService$PowerState;

    invoke-direct {v6, v4, v5}, Lcom/android/car/hal/PowerHalService$PowerState;-><init>(II)V

    invoke-interface {p2, v6}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onApPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 641
    .end local v4    # "systemOff":I
    .end local v5    # "systemOffReason":I
    goto/16 :goto_3

    .line 676
    :sswitch_5
    const-string v4, "CAR.POWER"

    const-string v5, "receive PMS_SYSTEM_DAY_NIGHT_MODE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    invoke-interface {p2, v4}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onDayNightModeReceived(Z)V

    .line 679
    goto :goto_3

    .line 669
    :sswitch_6
    iget-object v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 670
    .local v4, "tempRunTime":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive PMS_SYSTEM_TIME_OF_TEMPRUN time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CAR.POWER"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-interface {p2, v4}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onTempRunTimeReceived(I)V

    .line 673
    .end local v4    # "tempRunTime":I
    goto :goto_3

    .line 663
    :sswitch_7
    const-string v4, "CAR.POWER"

    const-string v5, "receive onTempRunEnding"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v4, Lcom/android/car/hal/PowerHalService$PowerState;

    const/16 v5, 0x13

    invoke-direct {v4, v5, v2}, Lcom/android/car/hal/PowerHalService$PowerState;-><init>(II)V

    invoke-interface {p2, v4}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onApPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 666
    goto :goto_3

    .line 622
    :sswitch_8
    iget-object v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 623
    .local v4, "reason":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received PMS_BOOT_REASON reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CAR.POWER"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-interface {p2, v4}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onBootReasonReceived(I)V

    .line 626
    .end local v4    # "reason":I
    nop

    .line 695
    .end local v3    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :goto_3
    goto/16 :goto_0

    :cond_4
    goto/16 :goto_7

    .line 697
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 698
    .restart local v3    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    sparse-switch v4, :sswitch_data_1

    goto/16 :goto_6

    .line 701
    :sswitch_9
    goto/16 :goto_6

    .line 703
    :sswitch_a
    iget-object v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 704
    .local v4, "state":I
    iget-object v5, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v5, v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 705
    .local v5, "param":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received AP_POWER_STATE_REQ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-static {v4}, Lcom/android/car/hal/PowerHalService;->powerStateReqName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " param="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 705
    const-string v7, "CAR.POWER"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v6, Lcom/android/car/hal/PowerHalService$PowerState;

    invoke-direct {v6, v4, v5}, Lcom/android/car/hal/PowerHalService$PowerState;-><init>(II)V

    invoke-interface {p2, v6}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onApPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)V

    .line 708
    goto :goto_6

    .line 712
    .end local v4    # "state":I
    .end local v5    # "param":I
    :sswitch_b
    monitor-enter p0

    .line 713
    :try_start_0
    iget v4, p0, Lcom/android/car/hal/PowerHalService;->mMaxDisplayBrightness:I

    .line 714
    .local v4, "maxBrightness":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    iget-object v5, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v5, v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x64

    mul-int/2addr v5, v6

    div-int/2addr v5, v4

    .line 716
    .local v5, "brightness":I
    if-gez v5, :cond_6

    .line 717
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid brightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", set to 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CAR.POWER"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v5, 0x0

    goto :goto_5

    .line 719
    :cond_6
    if-le v5, v6, :cond_7

    .line 720
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid brightness: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CAR.POWER"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/16 v5, 0x64

    .line 724
    :cond_7
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received DISPLAY_BRIGHTNESS="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CAR.POWER"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-interface {p2, v5}, Lcom/android/car/hal/PowerHalService$PowerEventListener;->onDisplayBrightnessChange(I)V

    goto :goto_6

    .line 714
    .end local v4    # "maxBrightness":I
    .end local v5    # "brightness":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 729
    .end local v3    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :goto_6
    goto/16 :goto_4

    .line 731
    :cond_8
    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x11407002 -> :sswitch_8
        0x1140700b -> :sswitch_7
        0x1140700d -> :sswitch_6
        0x1140700e -> :sswitch_5
        0x11417004 -> :sswitch_4
        0x11707001 -> :sswitch_3
        0x11707010 -> :sswitch_2
        0x21402047 -> :sswitch_1
        0x21602043 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x11400a03 -> :sswitch_b
        0x11410a00 -> :sswitch_a
        0x11410a01 -> :sswitch_9
    .end sparse-switch
.end method

.method private declared-synchronized isConfigFlagSet(I)Z
    .locals 4
    .param p1, "flag"    # I

    monitor-enter p0

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    const v1, 0x11410a00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    .local v0, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 532
    monitor-exit p0

    return v1

    .line 533
    :cond_0
    :try_start_1
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 534
    monitor-exit p0

    return v1

    .line 536
    :cond_1
    :try_start_2
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    move v1, v3

    :cond_2
    monitor-exit p0

    return v1

    .line 529
    .end local v0    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .end local p0    # "this":Lcom/android/car/hal/PowerHalService;
    .end local p1    # "flag":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static powerStateReportName(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .line 113
    packed-switch p0, :pswitch_data_0

    .line 122
    const-string v0, "<unknown>"

    .local v0, "baseName":Ljava/lang/String;
    goto :goto_0

    .line 121
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_0
    const-string v0, "SHUTDOWN_CANCELLED"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 120
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_1
    const-string v0, "SHUTDOWN_PREPARE"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 119
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_2
    const-string v0, "ON"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 118
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_3
    const-string v0, "SHUTDOWN_START"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 117
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_4
    const-string v0, "SHUTDOWN_POSTPONE"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 116
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_5
    const-string v0, "DEEP_SLEEP_EXIT"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 115
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_6
    const-string v0, "DEEP_SLEEP_ENTRY"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 114
    .end local v0    # "baseName":Ljava/lang/String;
    :pswitch_7
    const-string v0, "WAIT_FOR_VHAL"

    .line 124
    .restart local v0    # "baseName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static powerStateReqName(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .line 129
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 134
    const-string v0, "<unknown>"

    .local v0, "baseName":Ljava/lang/String;
    goto :goto_0

    .line 133
    .end local v0    # "baseName":Ljava/lang/String;
    :cond_0
    const-string v0, "FINISHED"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 132
    .end local v0    # "baseName":Ljava/lang/String;
    :cond_1
    const-string v0, "CANCEL_SHUTDOWN"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v0    # "baseName":Ljava/lang/String;
    :cond_2
    const-string v0, "SHUTDOWN_PREPARE"

    .restart local v0    # "baseName":Ljava/lang/String;
    goto :goto_0

    .line 130
    .end local v0    # "baseName":Ljava/lang/String;
    :cond_3
    const-string v0, "ON"

    .line 136
    .restart local v0    # "baseName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setPowerState(II)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "additionalParam"    # I

    .line 360
    const-string v0, "CAR.POWER"

    invoke-virtual {p0}, Lcom/android/car/hal/PowerHalService;->isPowerStateSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    .line 363
    .local v1, "values":[I
    :try_start_0
    iget-object v3, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const v4, 0x11410a01

    invoke-virtual {v3, v4, v2}, Lcom/android/car/hal/VehicleHal;->set(II)Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->to([I)V

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/car/hal/PowerHalService;->powerStateReportName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    goto :goto_0

    .line 366
    :catch_0
    move-exception v2

    .line 367
    .local v2, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v3, "cannot set to AP_POWER_STATE_REPORT"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v1    # "values":[I
    .end local v2    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 735
    const-string v0, "*Power HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPowerStateSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/car/hal/PowerHalService;->isPowerStateSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isDeepSleepAllowed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {p0}, Lcom/android/car/hal/PowerHalService;->isDeepSleepAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    return-void
.end method

.method public getCurrentPowerState()Lcom/android/car/hal/PowerHalService$PowerState;
    .locals 6

    .line 463
    iget-boolean v0, p0, Lcom/android/car/hal/PowerHalService;->SUPPORT_YF_POWER_MODULE:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "CAR.POWER"

    if-eqz v0, :cond_0

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const v5, 0x11407007

    invoke-virtual {v0, v4, v5}, Lcom/android/car/hal/VehicleHal;->get(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 467
    .local v0, "state":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Power Hal get current power state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    nop

    .line 472
    new-instance v2, Lcom/android/car/hal/PowerHalService$PowerState;

    invoke-direct {v2, v0, v1}, Lcom/android/car/hal/PowerHalService$PowerState;-><init>(II)V

    return-object v2

    .line 468
    .end local v0    # "state":I
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v1, "Can\'t get PMS_SYSTEM_POWER_STATE"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    return-object v2

    .line 476
    .end local v0    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const-class v4, [I

    const v5, 0x11410a00

    invoke-virtual {v0, v4, v5}, Lcom/android/car/hal/VehicleHal;->get(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_1
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    .line 480
    .local v0, "state":[I
    nop

    .line 481
    new-instance v2, Lcom/android/car/hal/PowerHalService$PowerState;

    aget v1, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {v2, v1, v3}, Lcom/android/car/hal/PowerHalService$PowerState;-><init>(II)V

    return-object v2

    .line 477
    .end local v0    # "state":[I
    :catch_1
    move-exception v0

    .line 478
    .local v0, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v1, "Cannot get AP_POWER_STATE_REQ"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    return-object v2
.end method

.method public getMcuBootMode()I
    .locals 4

    .line 447
    const-string v0, "CAR.POWER"

    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const v3, 0x21402047

    invoke-virtual {v1, v2, v3}, Lcom/android/car/hal/VehicleHal;->get(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 448
    .local v1, "state":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power Hal get MCU_BOOT_MODE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    nop

    .line 453
    return v1

    .line 449
    .end local v1    # "state":I
    :catch_0
    move-exception v1

    .line 450
    .local v1, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v2, "Can\'t get MCU_BOOT_MODE"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public handleHalEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 600
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    monitor-enter p0

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mListener:Lcom/android/car/hal/PowerHalService$PowerEventListener;

    if-nez v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mQueuedEvents:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PowerHalService;->mQueuedEvents:Ljava/util/LinkedList;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mQueuedEvents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 606
    monitor-exit p0

    return-void

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mListener:Lcom/android/car/hal/PowerHalService$PowerEventListener;

    .line 609
    .local v0, "listener":Lcom/android/car/hal/PowerHalService$PowerEventListener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    invoke-direct {p0, p1, v0}, Lcom/android/car/hal/PowerHalService;->dispatchEvents(Ljava/util/List;Lcom/android/car/hal/PowerHalService$PowerEventListener;)V

    .line 611
    return-void

    .line 609
    .end local v0    # "listener":Lcom/android/car/hal/PowerHalService$PowerEventListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized init()V
    .locals 4

    monitor-enter p0

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 550
    .local v1, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    invoke-static {v1}, Lcom/android/car/hal/VehicleHal;->isPropertySubscribable(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    iget-object v2, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    iget v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v2, p0, v3}, Lcom/android/car/hal/VehicleHal;->subscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V

    .line 553
    .end local v1    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .end local p0    # "this":Lcom/android/car/hal/PowerHalService;
    :cond_0
    goto :goto_0

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    const v1, 0x11400a03

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 555
    .local v0, "brightnessProperty":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    if-eqz v0, :cond_3

    .line 556
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 557
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;

    iget v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->maxInt32Value:I

    goto :goto_1

    :cond_2
    nop

    :goto_1
    iput v2, p0, Lcom/android/car/hal/PowerHalService;->mMaxDisplayBrightness:I

    .line 558
    iget v1, p0, Lcom/android/car/hal/PowerHalService;->mMaxDisplayBrightness:I

    if-gtz v1, :cond_3

    .line 559
    const-string v1, "CAR.POWER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max display brightness from vehicle HAL is invalid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/hal/PowerHalService;->mMaxDisplayBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/car/hal/PowerHalService;->mMaxDisplayBrightness:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :cond_3
    monitor-exit p0

    return-void

    .line 548
    .end local v0    # "brightnessProperty":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDeepSleepAllowed()Z
    .locals 1

    .line 540
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/car/hal/PowerHalService;->isConfigFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isPowerStateSupported()Z
    .locals 7

    monitor-enter p0

    .line 490
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/hal/PowerHalService;->SUPPORT_YF_POWER_MODULE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 491
    const/4 v0, -0x1

    .line 493
    .local v0, "status":I
    const v3, 0x1140700a

    :try_start_1
    iget-object v4, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Lcom/android/car/hal/VehicleHal;->get(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_1
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v4

    .line 496
    goto :goto_0

    .line 494
    .end local p0    # "this":Lcom/android/car/hal/PowerHalService;
    :catch_0
    move-exception v4

    .line 495
    .local v4, "e":Lcom/android/car/hal/PropertyTimeoutException;
    :try_start_2
    const-string v5, "CAR.POWER"

    const-string v6, "Cannot get PMS_SYSTEM_COMM_READY"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    .end local v4    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :goto_0
    const-string v4, "CAR.POWER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init get PMS_SYSTEM_COMM_READY status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 498
    if-nez v0, :cond_0

    .line 499
    const/4 v4, 0x1

    .line 501
    .local v4, "value":I
    :try_start_3
    iget-object v5, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v5, v3, v2}, Lcom/android/car/hal/VehicleHal;->set(II)Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->to(I)V

    .line 502
    const-string v3, "CAR.POWER"

    const-string v5, "set PMS_SYSTEM_COMM_READY again"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 503
    const/4 v0, 0x1

    .line 506
    goto :goto_1

    .line 504
    :catch_1
    move-exception v3

    .line 505
    .local v3, "e":Lcom/android/car/hal/PropertyTimeoutException;
    :try_start_4
    const-string v5, "CAR.POWER"

    const-string v6, "cannot set to PMS_SYSTEM_COMM_READY"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    .end local v3    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    .end local v4    # "value":I
    :goto_1
    goto :goto_2

    .line 508
    :cond_0
    const-string v3, "CAR.POWER"

    const-string v4, "isPowerStateSupported COMM already"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 510
    :goto_2
    if-ne v0, v1, :cond_1

    goto :goto_3

    :cond_1
    move v1, v2

    :goto_3
    monitor-exit p0

    return v1

    .line 512
    .end local v0    # "status":I
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    const v3, 0x11410a00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    const v3, 0x11410a01

    .line 513
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    move v1, v2

    .line 512
    :goto_4
    monitor-exit p0

    return v1

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isTimedWakeupAllowed()Z
    .locals 1

    .line 544
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/car/hal/PowerHalService;->isConfigFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    monitor-exit p0

    return-void

    .line 567
    .end local p0    # "this":Lcom/android/car/hal/PowerHalService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendDisplayBrightness(I)V
    .locals 4
    .param p1, "brightness"    # I

    .line 346
    const-string v0, "CAR.POWER"

    if-gez p1, :cond_0

    .line 347
    const/4 p1, 0x0

    goto :goto_0

    .line 348
    :cond_0
    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 349
    const/16 p1, 0x64

    .line 352
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const v2, 0x11400a03

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/car/hal/VehicleHal;->set(II)Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->to(I)V

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send display brightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    goto :goto_1

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v2, "cannot set DISPLAY_BRIGHTNESS"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    .end local v1    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :goto_1
    return-void
.end method

.method public sendFactoryResetToMCU(Z)V
    .locals 5
    .param p1, "ensure"    # Z

    .line 430
    const-string v0, "CAR.POWER"

    if-eqz p1, :cond_0

    .line 431
    const/4 v1, 0x1

    .line 433
    .local v1, "value":I
    :try_start_0
    const-string v2, "powerhal send PMS_MCU_FACTORY_RESET to hal"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v2, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const v3, 0x11407013

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/car/hal/VehicleHal;->set(II)Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->to(I)V
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    goto :goto_0

    .line 435
    :catch_0
    move-exception v2

    .line 436
    .local v2, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v3, "cannot set to PMS_MCU_FACTORY_RESET"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    .end local v1    # "value":I
    .end local v2    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendHeartBeat()V
    .locals 4

    .line 521
    const/4 v0, 0x1

    .line 523
    .local v0, "value":I
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const v2, 0x1140700f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/car/hal/VehicleHal;->set(II)Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->to(I)V
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    goto :goto_0

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v2, "CAR.POWER"

    const-string v3, "can\'t set to PMS_HEART_BEAT"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    .end local v1    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :goto_0
    return-void
.end method

.method public sendOn()V
    .locals 2

    .line 321
    const-string v0, "CAR.POWER"

    const-string v1, "send on"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/car/hal/PowerHalService;->setPowerState(II)V

    .line 323
    return-void
.end method

.method public sendPROModeExit(Z)V
    .locals 4
    .param p1, "isExit"    # Z

    .line 422
    const-string v0, "CAR.POWER"

    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const v2, 0x11407012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/car/hal/VehicleHal;->set(II)Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->to(I)V

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PMS_PRO_MODE_EXIT  isExit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    goto :goto_0

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v2, "cannot set to PMS_SYSTEM_TIME_OF_TEMPRUN"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    .end local v1    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :goto_0
    return-void
.end method

.method public sendPowerEventToMCU(Z)V
    .locals 4
    .param p1, "hasEvent"    # Z

    .line 403
    const-string v0, "CAR.POWER"

    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const v2, 0x11407011

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/car/hal/VehicleHal;->set(II)Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->to(I)V

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PMS_INFO_SOC_EVENT  hasEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    goto :goto_0

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v2, "cannot set to PMS_SYSTEM_TIME_OF_TEMPRUN"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    .end local v1    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :goto_0
    return-void
.end method

.method public sendReEnterTempRun()V
    .locals 5

    .line 383
    const-string v0, "CAR.POWER"

    const/4 v1, 0x1

    .line 385
    .local v1, "value":I
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const v3, 0x1140700c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/car/hal/VehicleHal;->set(II)Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->to(I)V

    .line 386
    const-string v2, "PMS_SYSTEM_RE_TEMPRUN_TIMEOUT "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    goto :goto_0

    .line 387
    :catch_0
    move-exception v2

    .line 388
    .local v2, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v3, "cannot set to PMS_SYSTEM_RE_TEMPRUN_TIMEOUT"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    .end local v2    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :goto_0
    return-void
.end method

.method public sendRestartNow()V
    .locals 5

    .line 373
    const/4 v0, 0x1

    .line 374
    .local v0, "value":I
    const-string v1, "CAR.POWER"

    const-string v2, "sendRestartNow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const v3, 0x11407008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/car/hal/VehicleHal;->set(II)Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->to(I)V
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    goto :goto_0

    .line 377
    :catch_0
    move-exception v2

    .line 378
    .local v2, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v3, "cannot set to PMS_SYSTEM_RESTART"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .end local v2    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :goto_0
    return-void
.end method

.method public sendShutdownCancel()V
    .locals 2

    .line 337
    const-string v0, "CAR.POWER"

    const-string v1, "send shutdown cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/car/hal/PowerHalService;->setPowerState(II)V

    .line 339
    return-void
.end method

.method public sendShutdownPostpone(I)V
    .locals 2
    .param p1, "postponeTimeMs"    # I

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send shutdown postpone, time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-boolean v0, p0, Lcom/android/car/hal/PowerHalService;->SUPPORT_YF_POWER_MODULE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/car/hal/PowerHalService;->setPowerState(II)V

    .line 307
    :goto_0
    return-void
.end method

.method public sendShutdownPrepare()V
    .locals 2

    .line 329
    const-string v0, "CAR.POWER"

    const-string v1, "send shutdown prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/car/hal/PowerHalService;->setPowerState(II)V

    .line 331
    return-void
.end method

.method public sendShutdownStart(I)V
    .locals 2
    .param p1, "wakeupTimeSec"    # I

    .line 313
    const-string v0, "CAR.POWER"

    const-string v1, "send shutdown start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    mul-int/lit16 v0, p1, 0x3e8

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/android/car/hal/PowerHalService;->setPowerState(II)V

    .line 315
    return-void
.end method

.method public sendSleepEntry(I)V
    .locals 2
    .param p1, "wakeupTimeSec"    # I

    .line 282
    const-string v0, "CAR.POWER"

    const-string v1, "send sleep entry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    mul-int/lit16 v0, p1, 0x3e8

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/car/hal/PowerHalService;->setPowerState(II)V

    .line 284
    return-void
.end method

.method public sendSleepExit()V
    .locals 2

    .line 291
    const-string v0, "CAR.POWER"

    const-string v1, "send sleep exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/car/hal/PowerHalService;->setPowerState(II)V

    .line 293
    return-void
.end method

.method public sendVoltageInfoQuery()V
    .locals 5

    .line 411
    const-string v0, "CAR.POWER"

    const/4 v1, 0x1

    .line 413
    .local v1, "value":I
    :try_start_0
    const-string v2, "PMS_VOLTAGE_INFO_QUERY"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v2, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const v3, 0x11407014

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/car/hal/VehicleHal;->set(II)Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->to(I)V
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    goto :goto_0

    .line 415
    :catch_0
    move-exception v2

    .line 416
    .local v2, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v3, "cannot set to PMS_VOLTAGE_INFO_QUERY"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    .end local v2    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :goto_0
    return-void
.end method

.method public sendWaitForVhal()V
    .locals 2

    .line 273
    const-string v0, "CAR.POWER"

    const-string v1, "send wait for vhal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/car/hal/PowerHalService;->setPowerState(II)V

    .line 275
    return-void
.end method

.method public setListener(Lcom/android/car/hal/PowerHalService$PowerEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/car/hal/PowerHalService$PowerEventListener;

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "eventsToDispatch":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    monitor-enter p0

    .line 257
    :try_start_0
    iput-object p1, p0, Lcom/android/car/hal/PowerHalService;->mListener:Lcom/android/car/hal/PowerHalService$PowerEventListener;

    .line 258
    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mQueuedEvents:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mQueuedEvents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mQueuedEvents:Ljava/util/LinkedList;

    move-object v0, v1

    .line 261
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/hal/PowerHalService;->mQueuedEvents:Ljava/util/LinkedList;

    .line 262
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    if-eqz v0, :cond_1

    .line 265
    invoke-direct {p0, v0, p1}, Lcom/android/car/hal/PowerHalService;->dispatchEvents(Ljava/util/List;Lcom/android/car/hal/PowerHalService$PowerEventListener;)V

    .line 267
    :cond_1
    return-void

    .line 262
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setTempRunTime(I)V
    .locals 4
    .param p1, "tempRunTime"    # I

    .line 394
    const-string v0, "CAR.POWER"

    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const v2, 0x1140700d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/car/hal/VehicleHal;->set(II)Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->to(I)V

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PMS_SYSTEM_TIME_OF_TEMPRUN  tempRunTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    goto :goto_0

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v2, "cannot set to PMS_SYSTEM_TIME_OF_TEMPRUN"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    .end local v1    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :goto_0
    return-void
.end method

.method public declared-synchronized takeSupportedProperties(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation

    .local p1, "allProperties":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    monitor-enter p0

    .line 574
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 575
    .local v1, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    sparse-switch v2, :sswitch_data_0

    .end local p0    # "this":Lcom/android/car/hal/PowerHalService;
    goto :goto_1

    .line 590
    .restart local p0    # "this":Lcom/android/car/hal/PowerHalService;
    :sswitch_0
    iget-object v2, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    iget v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    .end local v1    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .end local p0    # "this":Lcom/android/car/hal/PowerHalService;
    :goto_1
    goto :goto_0

    .line 594
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/android/car/hal/PowerHalService;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 573
    .end local p1    # "allProperties":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x11400a03 -> :sswitch_0
        0x11407002 -> :sswitch_0
        0x11407003 -> :sswitch_0
        0x1140700b -> :sswitch_0
        0x1140700e -> :sswitch_0
        0x11410a00 -> :sswitch_0
        0x11410a01 -> :sswitch_0
        0x11417004 -> :sswitch_0
        0x11707001 -> :sswitch_0
        0x11707010 -> :sswitch_0
        0x21402047 -> :sswitch_0
        0x21602043 -> :sswitch_0
    .end sparse-switch
.end method
