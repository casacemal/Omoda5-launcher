.class Lcom/chery/media/model/business/LocalMusicBusiness$9;
.super Ljava/util/ArrayList;
.source "LocalMusicBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/LocalMusicBusiness;->deleteLocal(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

.field final synthetic val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$9;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    iput-object p2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$9;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$9;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness$9;->add(Ljava/lang/Object;)Z

    return-void
.end method
