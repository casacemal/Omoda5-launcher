.class Lcom/chery/media/model/business/VrMediaBusiness$2;
.super Ljava/lang/Object;
.source "VrMediaBusiness.java"

# interfaces
.implements Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;


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

    .line 103
    iput-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness$2;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/chery/media/model/business/VrMediaBusiness$2;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v1, "LOCAL"

    invoke-static {v0, v1, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->access$200(Lcom/chery/media/model/business/VrMediaBusiness;Ljava/lang/String;Z)V

    .line 107
    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness$2;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-static {p0, v1}, Lcom/chery/media/model/business/VrMediaBusiness;->access$300(Lcom/chery/media/model/business/VrMediaBusiness;Ljava/lang/String;)V

    return-void
.end method
