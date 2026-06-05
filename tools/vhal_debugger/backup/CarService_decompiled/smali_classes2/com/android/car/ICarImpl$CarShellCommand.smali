.class Lcom/android/car/ICarImpl$CarShellCommand;
.super Ljava/lang/Object;
.source "ICarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ICarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarShellCommand"
.end annotation


# static fields
.field private static final COMMAND_DAY_NIGHT_MODE:Ljava/lang/String; = "day-night-mode"

.field private static final COMMAND_ENABLE_TRUSTED_DEVICE:Ljava/lang/String; = "enable-trusted-device"

.field private static final COMMAND_ENABLE_UXR:Ljava/lang/String; = "enable-uxr"

.field private static final COMMAND_GARAGE_MODE:Ljava/lang/String; = "garage-mode"

.field private static final COMMAND_GET_CARPROPERTYCONFIG:Ljava/lang/String; = "get-carpropertyconfig"

.field private static final COMMAND_GET_DO_ACTIVITIES:Ljava/lang/String; = "get-do-activities"

.field private static final COMMAND_GET_PROPERTY_VALUE:Ljava/lang/String; = "get-property-value"

.field private static final COMMAND_HELP:Ljava/lang/String; = "-h"

.field private static final COMMAND_INJECT_ERROR_EVENT:Ljava/lang/String; = "inject-error-event"

.field private static final COMMAND_INJECT_VHAL_EVENT:Ljava/lang/String; = "inject-vhal-event"

.field private static final COMMAND_PROJECTION_AP_TETHERING:Ljava/lang/String; = "projection-tethering"

.field private static final COMMAND_PROJECTION_UI_MODE:Ljava/lang/String; = "projection-ui-mode"

.field private static final COMMAND_REMOVE_TRUSTED_DEVICES:Ljava/lang/String; = "remove-trusted-devices"

.field private static final COMMAND_RESUME:Ljava/lang/String; = "resume"

.field private static final COMMAND_SUSPEND:Ljava/lang/String; = "suspend"

.field private static final PARAM_DAY_MODE:Ljava/lang/String; = "day"

.field private static final PARAM_NIGHT_MODE:Ljava/lang/String; = "night"

.field private static final PARAM_OFF_MODE:Ljava/lang/String; = "off"

.field private static final PARAM_ON_MODE:Ljava/lang/String; = "on"

.field private static final PARAM_QUERY_MODE:Ljava/lang/String; = "query"

.field private static final PARAM_SENSOR_MODE:Ljava/lang/String; = "sensor"

.field private static final PARAM_VEHICLE_PROPERTY_AREA_GLOBAL:Ljava/lang/String; = "0"


# instance fields
.field final synthetic this$0:Lcom/android/car/ICarImpl;


# direct methods
.method private constructor <init>(Lcom/android/car/ICarImpl;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/ICarImpl;Lcom/android/car/ICarImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/ICarImpl;
    .param p2, "x1"    # Lcom/android/car/ICarImpl$1;

    .line 531
    invoke-direct {p0, p1}, Lcom/android/car/ICarImpl$CarShellCommand;-><init>(Lcom/android/car/ICarImpl;)V

    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 558
    const-string v0, "Car service commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    const-string v0, "\t-h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    const-string v0, "\t  Print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    const-string v0, "\tday-night-mode [day|night|sensor]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    const-string v0, "\t  Force into day/night mode or restore to auto."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    const-string v0, "\tinject-vhal-event property [zone] data(can be comma separated list)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    const-string v0, "\t  Inject a vehicle property for testing."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    const-string v0, "\tinject-error-event property zone errorCode"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    const-string v0, "\t  Inject an error event from VHAL for testing."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    const-string v0, "\tenable-uxr true|false"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    const-string v0, "\t  Enable/Disable UX restrictions and App blocking."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    const-string v0, "\tgarage-mode [on|off|query]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    const-string v0, "\t  Force into garage mode or check status."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    const-string v0, "\tget-do-activities pkgname"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    const-string v0, "\t  Get Distraction Optimized activities in given package."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    const-string v0, "\tget-carpropertyconfig [propertyId]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    const-string v0, "\t  Get a CarPropertyConfig by Id in Hex or list all CarPropertyConfigs"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    const-string v0, "\tget-property-value [propertyId] [areaId]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    const-string v0, "\t  Get a vehicle property value by property id in Hex and areaId"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    const-string v0, "\t  or list all property values for all areaId"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    const-string v0, "\tsuspend"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    const-string v0, "\t  Suspend the system to Deep Sleep."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    const-string v0, "\tresume"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    const-string v0, "\t  Wake the system up after a \'suspend.\'"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    const-string v0, "\tenable-trusted-device true|false"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    const-string v0, "\t  Enable/Disable Trusted device feature."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    const-string v0, "\tremove-trusted-devices"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    const-string v0, "\t  Remove all trusted devices for the current foreground user."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    const-string v0, "\tprojection-tethering [true|false]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    const-string v0, "\t  Whether tethering should be used when creating access point for wireless projection"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    const-string v0, "\t--metrics"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    const-string v0, "\t  When used with dumpsys, only metrics will be in the dumpsys output."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method private forceDayNightMode(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 725
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x35ffac46

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x1839c

    if-eq v0, v1, :cond_2

    const v1, 0x63f6418

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "day"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    .line 736
    const-string v0, "Unknown value. Valid argument: day|night|sensor"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    return-void

    .line 733
    :cond_4
    const/4 v0, 0x0

    .line 734
    .local v0, "mode":I
    goto :goto_2

    .line 730
    .end local v0    # "mode":I
    :cond_5
    const/4 v0, 0x2

    .line 731
    .restart local v0    # "mode":I
    goto :goto_2

    .line 727
    .end local v0    # "mode":I
    :cond_6
    const/4 v0, 0x1

    .line 728
    .restart local v0    # "mode":I
    nop

    .line 740
    :goto_2
    iget-object v1, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v1}, Lcom/android/car/ICarImpl;->access$700(Lcom/android/car/ICarImpl;)Lcom/android/car/CarNightService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/car/CarNightService;->forceDayNightMode(I)I

    move-result v1

    .line 741
    .local v1, "current":I
    const/4 v4, 0x0

    .line 742
    .local v4, "currentMode":Ljava/lang/String;
    if-eqz v1, :cond_9

    if-eq v1, v3, :cond_8

    if-eq v1, v2, :cond_7

    goto :goto_3

    .line 747
    :cond_7
    const-string v4, "night"

    .line 748
    goto :goto_3

    .line 750
    :cond_8
    const-string v4, "day"

    goto :goto_3

    .line 744
    :cond_9
    const-string v4, "sensor"

    .line 745
    nop

    .line 753
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DayNightMode changed to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method private forceGarageMode(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 757
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xddf

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x1ad6f

    if-eq v0, v1, :cond_2

    const v1, 0x66f18c8

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "query"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_3
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "Garage mode: "

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    .line 770
    const-string v0, "Unknown value. Valid argument: on|off|query"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 767
    :cond_4
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$800(Lcom/android/car/ICarImpl;)Lcom/android/car/garagemode/GarageModeService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/car/garagemode/GarageModeService;->dump(Ljava/io/PrintWriter;)V

    .line 768
    goto :goto_2

    .line 763
    :cond_5
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$800(Lcom/android/car/ICarImpl;)Lcom/android/car/garagemode/GarageModeService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/garagemode/GarageModeService;->stopAndResetGarageMode()V

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v1}, Lcom/android/car/ICarImpl;->access$800(Lcom/android/car/ICarImpl;)Lcom/android/car/garagemode/GarageModeService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/car/garagemode/GarageModeService;->isGarageModeActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    goto :goto_2

    .line 759
    :cond_6
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$800(Lcom/android/car/ICarImpl;)Lcom/android/car/garagemode/GarageModeService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/garagemode/GarageModeService;->forceStartGarageMode()V

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v1}, Lcom/android/car/ICarImpl;->access$800(Lcom/android/car/ICarImpl;)Lcom/android/car/garagemode/GarageModeService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/car/garagemode/GarageModeService;->isGarageModeActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    nop

    .line 773
    :goto_2
    return-void
.end method

.method private injectVhalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintWriter;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "zone"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "isErrorEvent"    # Z
    .param p5, "writer"    # Ljava/io/PrintWriter;

    .line 786
    if-eqz p2, :cond_0

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    invoke-direct {p0, p1}, Lcom/android/car/ICarImpl$CarShellCommand;->isPropertyAreaTypeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    const-string v0, "Property area type inconsistent with given zone"

    invoke-virtual {p5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 789
    return-void

    .line 793
    :cond_0
    if-eqz p4, :cond_1

    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$200(Lcom/android/car/ICarImpl;)Lcom/android/car/hal/VehicleHal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/car/hal/VehicleHal;->injectOnPropertySetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$200(Lcom/android/car/ICarImpl;)Lcom/android/car/hal/VehicleHal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/car/hal/VehicleHal;->injectVhalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :goto_0
    goto :goto_1

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid property Id zone Id or value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    invoke-direct {p0, p5}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 802
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    return-void
.end method

.method private isPropertyAreaTypeGlobal(Ljava/lang/String;)Z
    .locals 3
    .param p1, "property"    # Ljava/lang/String;

    .line 806
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 807
    return v0

    .line 809
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, 0xf000000

    and-int/2addr v1, v2

    const/high16 v2, 0x1000000

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public exec([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 594
    const/4 v0, 0x0

    aget-object v6, p1, v0

    .line 595
    .local v6, "arg":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "enable-uxr"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "inject-error-event"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "day-night-mode"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "get-property-value"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "enable-trusted-device"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "inject-vhal-event"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "get-do-activities"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "-h"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_1

    :sswitch_8
    const-string v1, "remove-trusted-devices"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_9
    const-string v1, "garage-mode"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_a
    const-string v1, "resume"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_b
    const-string v1, "projection-ui-mode"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_c
    const-string v1, "projection-tethering"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_d
    const-string v1, "suspend"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_e
    const-string v1, "get-carpropertyconfig"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v7, ""

    const-string v8, "Incorrect number of arguments"

    packed-switch v1, :pswitch_data_0

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown command: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    invoke-direct {p0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_9

    .line 713
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$500(Lcom/android/car/ICarImpl;)Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getCarTrustAgentEnrollmentService()Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    .line 715
    invoke-static {v1}, Lcom/android/car/ICarImpl;->access$600(Lcom/android/car/ICarImpl;)Landroid/car/userlib/CarUserManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v1

    .line 714
    invoke-virtual {v0, v1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->removeAllTrustedDevices(I)V

    .line 716
    goto/16 :goto_9

    .line 702
    :pswitch_1
    array-length v0, p1

    if-eq v0, v5, :cond_1

    .line 703
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    invoke-direct {p0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 705
    goto/16 :goto_9

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$500(Lcom/android/car/ICarImpl;)Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getCarTrustAgentEnrollmentService()Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    move-result-object v0

    aget-object v1, p1, v4

    .line 708
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->setTrustedDeviceEnrollmentEnabled(Z)V

    .line 709
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$500(Lcom/android/car/ICarImpl;)Lcom/android/car/trust/CarTrustedDeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustedDeviceService;->getCarTrustAgentUnlockService()Lcom/android/car/trust/CarTrustAgentUnlockService;

    move-result-object v0

    aget-object v1, p1, v4

    .line 710
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/car/trust/CarTrustAgentUnlockService;->setTrustedDeviceUnlockEnabled(Z)V

    .line 711
    goto/16 :goto_9

    .line 698
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$400(Lcom/android/car/ICarImpl;)Lcom/android/car/CarPowerManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/CarPowerManagementService;->forceSimulatedSuspend()V

    .line 699
    const-string v0, "Resume: Simulating powering down to Deep Sleep"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    goto/16 :goto_9

    .line 694
    :pswitch_3
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$400(Lcom/android/car/ICarImpl;)Lcom/android/car/CarPowerManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/CarPowerManagementService;->forceSimulatedResume()V

    .line 695
    const-string v0, "Resume: Simulating resuming from Deep Sleep"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    goto/16 :goto_9

    .line 686
    :pswitch_4
    array-length v0, p1

    if-eq v0, v5, :cond_2

    .line 687
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    invoke-direct {p0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 689
    goto/16 :goto_9

    .line 691
    :cond_2
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$300(Lcom/android/car/ICarImpl;)Lcom/android/car/CarProjectionService;

    move-result-object v0

    aget-object v1, p1, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/car/CarProjectionService;->setAccessPointTethering(Z)V

    .line 692
    goto/16 :goto_9

    .line 678
    :pswitch_5
    array-length v0, p1

    if-eq v0, v5, :cond_3

    .line 679
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    invoke-direct {p0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 681
    goto/16 :goto_9

    .line 683
    :cond_3
    iget-object v0, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->access$300(Lcom/android/car/ICarImpl;)Lcom/android/car/CarProjectionService;

    move-result-object v0

    aget-object v1, p1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/CarProjectionService;->setUiMode(Ljava/lang/Integer;)V

    .line 684
    goto/16 :goto_9

    .line 673
    :pswitch_6
    array-length v0, p1

    if-ge v0, v5, :cond_4

    move-object v0, v7

    goto :goto_2

    :cond_4
    aget-object v0, p1, v4

    .line 674
    .local v0, "propId":Ljava/lang/String;
    :goto_2
    array-length v1, p1

    if-ge v1, v3, :cond_5

    goto :goto_3

    :cond_5
    aget-object v7, p1, v5

    :goto_3
    move-object v1, v7

    .line 675
    .local v1, "areaId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v2}, Lcom/android/car/ICarImpl;->access$200(Lcom/android/car/ICarImpl;)Lcom/android/car/hal/VehicleHal;

    move-result-object v2

    invoke-virtual {v2, p2, v0, v1}, Lcom/android/car/hal/VehicleHal;->dumpPropertyValueByCommend(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    goto/16 :goto_9

    .line 669
    .end local v0    # "propId":Ljava/lang/String;
    .end local v1    # "areaId":Ljava/lang/String;
    :pswitch_7
    array-length v0, p1

    if-ge v0, v5, :cond_6

    goto :goto_4

    :cond_6
    aget-object v7, p1, v4

    :goto_4
    move-object v0, v7

    .line 670
    .local v0, "propertyId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v1}, Lcom/android/car/ICarImpl;->access$200(Lcom/android/car/ICarImpl;)Lcom/android/car/hal/VehicleHal;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/android/car/hal/VehicleHal;->dumpPropertyConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 671
    goto/16 :goto_9

    .line 648
    .end local v0    # "propertyId":Ljava/lang/String;
    :pswitch_8
    array-length v1, p1

    if-eq v1, v5, :cond_7

    .line 649
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    invoke-direct {p0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 651
    goto/16 :goto_9

    .line 653
    :cond_7
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v2}, Lcom/android/car/ICarImpl;->access$100(Lcom/android/car/ICarImpl;)Lcom/android/car/pm/CarPackageManagerService;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 655
    iget-object v2, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    .line 656
    invoke-static {v2}, Lcom/android/car/ICarImpl;->access$100(Lcom/android/car/ICarImpl;)Lcom/android/car/pm/CarPackageManagerService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/car/pm/CarPackageManagerService;->getDistractionOptimizedActivities(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 658
    .local v2, "doActivities":[Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DO Activities for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    array-length v3, v2

    :goto_5
    if-ge v0, v3, :cond_9

    aget-object v4, v2, v0

    .line 661
    .local v4, "a":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    .end local v4    # "a":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 664
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No DO Activities for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    .end local v2    # "doActivities":[Ljava/lang/String;
    :cond_9
    goto/16 :goto_9

    .line 637
    .end local v1    # "pkgName":Ljava/lang/String;
    :pswitch_9
    array-length v0, p1

    if-eq v0, v5, :cond_a

    .line 638
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    invoke-direct {p0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 640
    goto/16 :goto_9

    .line 642
    :cond_a
    aget-object v0, p1, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 643
    .local v0, "enableBlocking":Z
    iget-object v1, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v1}, Lcom/android/car/ICarImpl;->access$100(Lcom/android/car/ICarImpl;)Lcom/android/car/pm/CarPackageManagerService;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 644
    iget-object v1, p0, Lcom/android/car/ICarImpl$CarShellCommand;->this$0:Lcom/android/car/ICarImpl;

    invoke-static {v1}, Lcom/android/car/ICarImpl;->access$100(Lcom/android/car/ICarImpl;)Lcom/android/car/pm/CarPackageManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/car/pm/CarPackageManagerService;->setEnableActivityBlocking(Z)V

    goto/16 :goto_9

    .line 627
    .end local v0    # "enableBlocking":Z
    :pswitch_a
    array-length v0, p1

    if-eq v0, v2, :cond_b

    .line 628
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    invoke-direct {p0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 630
    goto/16 :goto_9

    .line 632
    :cond_b
    aget-object v7, p1, v5

    .line 633
    .local v7, "errorAreaId":Ljava/lang/String;
    aget-object v8, p1, v3

    .line 634
    .local v8, "errorCode":Ljava/lang/String;
    aget-object v1, p1, v4

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, v7

    move-object v3, v8

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/car/ICarImpl$CarShellCommand;->injectVhalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 635
    goto :goto_9

    .line 610
    .end local v7    # "errorAreaId":Ljava/lang/String;
    .end local v8    # "errorCode":Ljava/lang/String;
    :pswitch_b
    const-string v0, "0"

    .line 612
    .local v0, "zone":Ljava/lang/String;
    array-length v1, p1

    if-eq v1, v3, :cond_c

    array-length v1, p1

    if-eq v1, v2, :cond_c

    .line 613
    const-string v1, "Incorrect number of arguments."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    invoke-direct {p0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 615
    goto :goto_9

    .line 616
    :cond_c
    array-length v1, p1

    if-ne v1, v2, :cond_d

    .line 618
    aget-object v0, p1, v5

    .line 619
    aget-object v1, p1, v3

    move-object v7, v0

    move-object v8, v1

    .local v1, "data":Ljava/lang/String;
    goto :goto_6

    .line 622
    .end local v1    # "data":Ljava/lang/String;
    :cond_d
    aget-object v1, p1, v5

    move-object v7, v0

    move-object v8, v1

    .line 624
    .end local v0    # "zone":Ljava/lang/String;
    .local v7, "zone":Ljava/lang/String;
    .local v8, "data":Ljava/lang/String;
    :goto_6
    aget-object v1, p1, v4

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, v7

    move-object v3, v8

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/car/ICarImpl$CarShellCommand;->injectVhalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 625
    goto :goto_9

    .line 605
    .end local v7    # "zone":Ljava/lang/String;
    .end local v8    # "data":Ljava/lang/String;
    :pswitch_c
    array-length v0, p1

    if-ge v0, v5, :cond_e

    goto :goto_7

    :cond_e
    aget-object v7, p1, v4

    :goto_7
    move-object v0, v7

    .line 606
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->forceGarageMode(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 607
    goto :goto_9

    .line 600
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_d
    array-length v0, p1

    if-ge v0, v5, :cond_f

    goto :goto_8

    :cond_f
    aget-object v7, p1, v4

    :goto_8
    move-object v0, v7

    .line 601
    .restart local v0    # "value":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->forceDayNightMode(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 602
    goto :goto_9

    .line 597
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_e
    invoke-direct {p0, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 598
    nop

    .line 721
    :cond_10
    :goto_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7414708c -> :sswitch_e
        -0x6e635fc4 -> :sswitch_d
        -0x6b7b1f6e -> :sswitch_c
        -0x630ec842 -> :sswitch_b
        -0x37b237d3 -> :sswitch_a
        -0x2db41f77 -> :sswitch_9
        -0x18a7d142 -> :sswitch_8
        0x5db -> :sswitch_7
        0x5d15838 -> :sswitch_6
        0xebc90e6 -> :sswitch_5
        0x35f7b176 -> :sswitch_4
        0x3a9ad6d0 -> :sswitch_3
        0x42d39509 -> :sswitch_2
        0x62499c59 -> :sswitch_1
        0x70c6e6e5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
