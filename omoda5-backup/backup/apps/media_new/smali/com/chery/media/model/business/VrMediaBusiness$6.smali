.class Lcom/chery/media/model/business/VrMediaBusiness$6;
.super Ljava/lang/Object;
.source "VrMediaBusiness.java"

# interfaces
.implements Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;


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

    .line 170
    iput-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness$6;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentPlayingChanged(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 0

    .line 178
    invoke-static {p1}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicAudioSource(I)I

    move-result p1

    iget-object p2, p0, Lcom/chery/media/model/business/VrMediaBusiness$6;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/VrMediaBusiness;->access$400(Lcom/chery/media/model/business/VrMediaBusiness;)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 179
    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness$6;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->access$500(Lcom/chery/media/model/business/VrMediaBusiness;)V

    :cond_0
    return-void
.end method

.method public onPlaylistChanged(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
