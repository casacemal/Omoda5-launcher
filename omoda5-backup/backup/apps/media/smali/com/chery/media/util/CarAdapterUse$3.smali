.class final Lcom/chery/media/util/CarAdapterUse$3;
.super Ljava/lang/Object;
.source "CarAdapterUse.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/IPowerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/util/CarAdapterUse;->getCarPowerClient()Lcom/chery/caradapter/carapi/client/CarPowerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 2

    .line 288
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$500()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chery/media/util/CarAdapterUse$3$1;

    invoke-direct {v1, p0, p1}, Lcom/chery/media/util/CarAdapterUse$3$1;-><init>(Lcom/chery/media/util/CarAdapterUse$3;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
