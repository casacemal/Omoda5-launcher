.class Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/LocalMusicBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteRequest"
.end annotation


# instance fields
.field public localMusicInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field public response:Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;

.field final synthetic this$0:Lcom/chery/media/model/business/LocalMusicBusiness;


# direct methods
.method public constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness;Ljava/util/List;Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;",
            "Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;",
            ")V"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;->localMusicInfos:Ljava/util/List;

    .line 229
    iput-object p2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;->localMusicInfos:Ljava/util/List;

    .line 230
    iput-object p3, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteRequest;->response:Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;

    return-void
.end method
