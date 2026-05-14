.class Lcom/chery/media/model/business/MediaBusiness$3;
.super Ljava/lang/Object;
.source "MediaBusiness.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/MediaBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/MediaBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/MediaBusiness;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness$3;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupMuteChanged(III)V
    .locals 0

    .line 228
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getVolumeGroupIdForUsage(I)I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 229
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getGroupMute(I)Z

    move-result p1

    .line 230
    iget-object p2, p0, Lcom/chery/media/model/business/MediaBusiness$3;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/MediaBusiness;->access$200(Lcom/chery/media/model/business/MediaBusiness;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/chery/media/model/business/MediaBusiness$3$3;

    invoke-direct {p3, p0, p1}, Lcom/chery/media/model/business/MediaBusiness$3$3;-><init>(Lcom/chery/media/model/business/MediaBusiness$3;Z)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 237
    :cond_0
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getVolumeGroupIdForUsage(I)I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 238
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getGroupMute(I)Z

    move-result p1

    .line 239
    iget-object p2, p0, Lcom/chery/media/model/business/MediaBusiness$3;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/MediaBusiness;->access$200(Lcom/chery/media/model/business/MediaBusiness;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/chery/media/model/business/MediaBusiness$3$4;

    invoke-direct {p3, p0, p1}, Lcom/chery/media/model/business/MediaBusiness$3$4;-><init>(Lcom/chery/media/model/business/MediaBusiness$3;Z)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onGroupVolumeChanged(III)V
    .locals 0

    .line 178
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getVolumeGroupIdForUsage(I)I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/chery/media/model/business/MediaBusiness$3;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/MediaBusiness;->access$200(Lcom/chery/media/model/business/MediaBusiness;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/chery/media/model/business/MediaBusiness$3$1;

    invoke-direct {p2, p0}, Lcom/chery/media/model/business/MediaBusiness$3$1;-><init>(Lcom/chery/media/model/business/MediaBusiness$3;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getVolumeGroupIdForUsage(I)I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/chery/media/model/business/MediaBusiness$3;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/MediaBusiness;->access$200(Lcom/chery/media/model/business/MediaBusiness;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/chery/media/model/business/MediaBusiness$3$2;

    invoke-direct {p2, p0}, Lcom/chery/media/model/business/MediaBusiness$3$2;-><init>(Lcom/chery/media/model/business/MediaBusiness$3;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onMasterMuteChanged(II)V
    .locals 0

    return-void
.end method
