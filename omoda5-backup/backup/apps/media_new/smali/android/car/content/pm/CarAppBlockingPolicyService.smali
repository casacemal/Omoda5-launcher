.class public abstract Landroid/car/content/pm/CarAppBlockingPolicyService;
.super Landroid/app/Service;
.source "CarAppBlockingPolicyService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/content/pm/CarAppBlockingPolicyService$ICarAppBlockingPolicyImpl;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.car.content.pm.CarAppBlockingPolicyService"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/car/content/pm/CarAppBlockingPolicyService$ICarAppBlockingPolicyImpl;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Landroid/car/content/pm/CarAppBlockingPolicyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/car/content/pm/CarAppBlockingPolicyService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    new-instance v0, Landroid/car/content/pm/CarAppBlockingPolicyService$ICarAppBlockingPolicyImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/car/content/pm/CarAppBlockingPolicyService$ICarAppBlockingPolicyImpl;-><init>(Landroid/car/content/pm/CarAppBlockingPolicyService;Landroid/car/content/pm/CarAppBlockingPolicyService$1;)V

    iput-object v0, p0, Landroid/car/content/pm/CarAppBlockingPolicyService;->mBinder:Landroid/car/content/pm/CarAppBlockingPolicyService$ICarAppBlockingPolicyImpl;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Landroid/car/content/pm/CarAppBlockingPolicyService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract getAppBlockingPolicy()Landroid/car/content/pm/CarAppBlockingPolicy;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 58
    sget-object p1, Landroid/car/content/pm/CarAppBlockingPolicyService;->TAG:Ljava/lang/String;

    const-string v0, "onBind"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p0, p0, Landroid/car/content/pm/CarAppBlockingPolicyService;->mBinder:Landroid/car/content/pm/CarAppBlockingPolicyService$ICarAppBlockingPolicyImpl;

    return-object p0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 64
    sget-object p1, Landroid/car/content/pm/CarAppBlockingPolicyService;->TAG:Ljava/lang/String;

    const-string v0, "onUnbind"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Landroid/car/content/pm/CarAppBlockingPolicyService;->stopSelf()V

    const/4 p0, 0x0

    return p0
.end method
