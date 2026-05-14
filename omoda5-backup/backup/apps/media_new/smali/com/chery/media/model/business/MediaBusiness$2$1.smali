.class Lcom/chery/media/model/business/MediaBusiness$2$1;
.super Ljava/lang/Object;
.source "MediaBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/MediaBusiness$2;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/MediaBusiness$2;

.field final synthetic val$var1:I


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/MediaBusiness$2;I)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness$2$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$2;

    iput p2, p0, Lcom/chery/media/model/business/MediaBusiness$2$1;->val$var1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 167
    iget v0, p0, Lcom/chery/media/model/business/MediaBusiness$2$1;->val$var1:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 168
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$2$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$2;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$2;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarPowerClient()Lcom/chery/caradapter/carapi/client/CarPowerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/caradapter/carapi/client/CarPowerClient;->getBackLightStatus()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/chery/media/model/business/MediaBusiness;->access$300(Lcom/chery/media/model/business/MediaBusiness;Z)V

    :cond_1
    return-void
.end method
