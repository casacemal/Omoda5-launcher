.class Lcom/android/car/pm/AppBlockingPolicyProxy$ICarAppBlockingPolicySetterImpl;
.super Landroid/car/content/pm/ICarAppBlockingPolicySetter$Stub;
.source "AppBlockingPolicyProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/pm/AppBlockingPolicyProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ICarAppBlockingPolicySetterImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/pm/AppBlockingPolicyProxy;


# direct methods
.method private constructor <init>(Lcom/android/car/pm/AppBlockingPolicyProxy;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy$ICarAppBlockingPolicySetterImpl;->this$0:Lcom/android/car/pm/AppBlockingPolicyProxy;

    invoke-direct {p0}, Landroid/car/content/pm/ICarAppBlockingPolicySetter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/pm/AppBlockingPolicyProxy;Lcom/android/car/pm/AppBlockingPolicyProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/pm/AppBlockingPolicyProxy;
    .param p2, "x1"    # Lcom/android/car/pm/AppBlockingPolicyProxy$1;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/car/pm/AppBlockingPolicyProxy$ICarAppBlockingPolicySetterImpl;-><init>(Lcom/android/car/pm/AppBlockingPolicyProxy;)V

    return-void
.end method


# virtual methods
.method public setAppBlockingPolicy(Landroid/car/content/pm/CarAppBlockingPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/car/content/pm/CarAppBlockingPolicy;

    .line 155
    iget-object v0, p0, Lcom/android/car/pm/AppBlockingPolicyProxy$ICarAppBlockingPolicySetterImpl;->this$0:Lcom/android/car/pm/AppBlockingPolicyProxy;

    invoke-static {v0}, Lcom/android/car/pm/AppBlockingPolicyProxy;->access$400(Lcom/android/car/pm/AppBlockingPolicyProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy$ICarAppBlockingPolicySetterImpl;->this$0:Lcom/android/car/pm/AppBlockingPolicyProxy;

    invoke-static {v1}, Lcom/android/car/pm/AppBlockingPolicyProxy;->access$300(Lcom/android/car/pm/AppBlockingPolicyProxy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppBlockingPolicy null policy from policy service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy$ICarAppBlockingPolicySetterImpl;->this$0:Lcom/android/car/pm/AppBlockingPolicyProxy;

    .line 158
    invoke-static {v1}, Lcom/android/car/pm/AppBlockingPolicyProxy;->access$000(Lcom/android/car/pm/AppBlockingPolicyProxy;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string v1, "CAR.PACKAGE"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/car/pm/AppBlockingPolicyProxy$ICarAppBlockingPolicySetterImpl;->this$0:Lcom/android/car/pm/AppBlockingPolicyProxy;

    invoke-static {v0}, Lcom/android/car/pm/AppBlockingPolicyProxy;->access$100(Lcom/android/car/pm/AppBlockingPolicyProxy;)Lcom/android/car/pm/CarPackageManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy$ICarAppBlockingPolicySetterImpl;->this$0:Lcom/android/car/pm/AppBlockingPolicyProxy;

    invoke-virtual {v0, v1, p1}, Lcom/android/car/pm/CarPackageManagerService;->onPolicyConnectionAndSet(Lcom/android/car/pm/AppBlockingPolicyProxy;Landroid/car/content/pm/CarAppBlockingPolicy;)V

    .line 161
    return-void
.end method
