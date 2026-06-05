.class public Lcom/android/car/monitoring/CarMonitoringService;
.super Ljava/lang/Object;
.source "CarMonitoringService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final DBG:Ljava/lang/Boolean;

.field private static final MONITORING_SLEEP_TIME_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "CAR.MONITORING"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/car/monitoring/CarMonitoringService;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/SystemActivityMonitoringService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemActivityMonitoringService"    # Lcom/android/car/SystemActivityMonitoringService;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/car/monitoring/CarMonitoringService;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/car/monitoring/CarMonitoringService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    .line 47
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public init()V
    .locals 2

    .line 51
    sget-object v0, Lcom/android/car/monitoring/CarMonitoringService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "CAR.MONITORING"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 59
    sget-object v0, Lcom/android/car/monitoring/CarMonitoringService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "CAR.MONITORING"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return-void
.end method
