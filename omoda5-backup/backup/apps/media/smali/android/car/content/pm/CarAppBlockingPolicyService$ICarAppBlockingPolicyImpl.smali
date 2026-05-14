.class Landroid/car/content/pm/CarAppBlockingPolicyService$ICarAppBlockingPolicyImpl;
.super Landroid/car/content/pm/ICarAppBlockingPolicy$Stub;
.source "CarAppBlockingPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/content/pm/CarAppBlockingPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ICarAppBlockingPolicyImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/content/pm/CarAppBlockingPolicyService;


# direct methods
.method private constructor <init>(Landroid/car/content/pm/CarAppBlockingPolicyService;)V
    .locals 0

    .line 70
    iput-object p1, p0, Landroid/car/content/pm/CarAppBlockingPolicyService$ICarAppBlockingPolicyImpl;->this$0:Landroid/car/content/pm/CarAppBlockingPolicyService;

    invoke-direct {p0}, Landroid/car/content/pm/ICarAppBlockingPolicy$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/content/pm/CarAppBlockingPolicyService;Landroid/car/content/pm/CarAppBlockingPolicyService$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Landroid/car/content/pm/CarAppBlockingPolicyService$ICarAppBlockingPolicyImpl;-><init>(Landroid/car/content/pm/CarAppBlockingPolicyService;)V

    return-void
.end method


# virtual methods
.method public setAppBlockingPolicySetter(Landroid/car/content/pm/ICarAppBlockingPolicySetter;)V
    .locals 2

    .line 74
    invoke-static {}, Landroid/car/content/pm/CarAppBlockingPolicyService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setAppBlockingPolicySetter will set policy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p0, p0, Landroid/car/content/pm/CarAppBlockingPolicyService$ICarAppBlockingPolicyImpl;->this$0:Landroid/car/content/pm/CarAppBlockingPolicyService;

    invoke-virtual {p0}, Landroid/car/content/pm/CarAppBlockingPolicyService;->getAppBlockingPolicy()Landroid/car/content/pm/CarAppBlockingPolicy;

    move-result-object p0

    .line 77
    :try_start_0
    invoke-interface {p1, p0}, Landroid/car/content/pm/ICarAppBlockingPolicySetter;->setAppBlockingPolicy(Landroid/car/content/pm/CarAppBlockingPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
