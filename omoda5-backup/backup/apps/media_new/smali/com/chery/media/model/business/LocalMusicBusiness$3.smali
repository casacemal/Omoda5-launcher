.class Lcom/chery/media/model/business/LocalMusicBusiness$3;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"

# interfaces
.implements Lcom/chery/media/model/business/StableMediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/LocalMusicBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/LocalMusicBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$3;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(IJ)V
    .locals 0

    .line 355
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$3;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1, p2, p3}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1200(Lcom/chery/media/model/business/LocalMusicBusiness;J)V

    .line 357
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$3;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1100(Lcom/chery/media/model/business/LocalMusicBusiness;)I

    move-result p1

    if-nez p1, :cond_0

    .line 359
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$3;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1300(Lcom/chery/media/model/business/LocalMusicBusiness;Z)V

    :cond_0
    return-void
.end method
