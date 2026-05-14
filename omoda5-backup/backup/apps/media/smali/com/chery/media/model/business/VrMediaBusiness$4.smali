.class Lcom/chery/media/model/business/VrMediaBusiness$4;
.super Ljava/lang/Object;
.source "VrMediaBusiness.java"

# interfaces
.implements Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/VrMediaBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/VrMediaBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VrMediaBusiness;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness$4;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDurationChanged(J)V
    .locals 0

    return-void
.end method

.method public onFastPlayStatusChanged(I)V
    .locals 0

    return-void
.end method

.method public onPlayingStateChanged(Z)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness$4;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/VrMediaBusiness;->access$400(Lcom/chery/media/model/business/VrMediaBusiness;)I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness$4;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->access$500(Lcom/chery/media/model/business/VrMediaBusiness;)V

    :cond_0
    return-void
.end method

.method public onPositionChanged(J)V
    .locals 0

    return-void
.end method
