.class Lcom/chery/media/model/business/VrMediaBusiness$3;
.super Ljava/lang/Object;
.source "VrMediaBusiness.java"

# interfaces
.implements Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;


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

    .line 110
    iput-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness$3;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentPlayingChanged(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness$3;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/VrMediaBusiness;->access$400(Lcom/chery/media/model/business/VrMediaBusiness;)I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 119
    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness$3;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->access$500(Lcom/chery/media/model/business/VrMediaBusiness;)V

    :cond_0
    return-void
.end method

.method public onPlaylistChanged(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
