.class public Landroid/car/diagnostic/CarDiagnosticEvent$CommonIgnitionMonitors;
.super Ljava/lang/Object;
.source "CarDiagnosticEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/diagnostic/CarDiagnosticEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonIgnitionMonitors"
.end annotation


# static fields
.field public static final COMPONENTS_AVAILABLE:I = 0x1

.field static final COMPONENTS_DECODER:Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;

.field public static final COMPONENTS_INCOMPLETE:I = 0x2

.field public static final FUEL_SYSTEM_AVAILABLE:I = 0x4

.field static final FUEL_SYSTEM_DECODER:Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;

.field public static final FUEL_SYSTEM_INCOMPLETE:I = 0x8

.field public static final MISFIRE_AVAILABLE:I = 0x10

.field static final MISFIRE_DECODER:Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;

.field public static final MISFIRE_INCOMPLETE:I = 0x20


# instance fields
.field public final components:Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor;

.field public final fuelSystem:Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor;

.field public final misfire:Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 699
    new-instance v0, Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;-><init>(II)V

    sput-object v0, Landroid/car/diagnostic/CarDiagnosticEvent$CommonIgnitionMonitors;->COMPONENTS_DECODER:Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;

    .line 702
    new-instance v0, Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;-><init>(II)V

    sput-object v0, Landroid/car/diagnostic/CarDiagnosticEvent$CommonIgnitionMonitors;->FUEL_SYSTEM_DECODER:Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;

    .line 705
    new-instance v0, Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;

    const/16 v1, 0x10

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;-><init>(II)V

    sput-object v0, Landroid/car/diagnostic/CarDiagnosticEvent$CommonIgnitionMonitors;->MISFIRE_DECODER:Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    sget-object v0, Landroid/car/diagnostic/CarDiagnosticEvent$CommonIgnitionMonitors;->COMPONENTS_DECODER:Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;

    invoke-virtual {v0, p1}, Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;->fromValue(I)Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent$CommonIgnitionMonitors;->components:Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor;

    .line 710
    sget-object v0, Landroid/car/diagnostic/CarDiagnosticEvent$CommonIgnitionMonitors;->FUEL_SYSTEM_DECODER:Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;

    invoke-virtual {v0, p1}, Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;->fromValue(I)Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent$CommonIgnitionMonitors;->fuelSystem:Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor;

    .line 711
    sget-object v0, Landroid/car/diagnostic/CarDiagnosticEvent$CommonIgnitionMonitors;->MISFIRE_DECODER:Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;

    invoke-virtual {v0, p1}, Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor$Decoder;->fromValue(I)Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor;

    move-result-object p1

    iput-object p1, p0, Landroid/car/diagnostic/CarDiagnosticEvent$CommonIgnitionMonitors;->misfire:Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor;

    return-void
.end method


# virtual methods
.method public asCompressionIgnitionMonitors()Landroid/car/diagnostic/CarDiagnosticEvent$CompressionIgnitionMonitors;
    .locals 1

    .line 730
    instance-of v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent$CompressionIgnitionMonitors;

    if-eqz v0, :cond_0

    .line 731
    check-cast p0, Landroid/car/diagnostic/CarDiagnosticEvent$CompressionIgnitionMonitors;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public asSparkIgnitionMonitors()Landroid/car/diagnostic/CarDiagnosticEvent$SparkIgnitionMonitors;
    .locals 1

    .line 720
    instance-of v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent$SparkIgnitionMonitors;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/car/diagnostic/CarDiagnosticEvent$SparkIgnitionMonitors;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
