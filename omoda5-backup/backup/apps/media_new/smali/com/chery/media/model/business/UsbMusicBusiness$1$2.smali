.class Lcom/chery/media/model/business/UsbMusicBusiness$1$2;
.super Ljava/lang/Object;
.source "UsbMusicBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/UsbMusicBusiness$1;->onStateChanged(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/UsbMusicBusiness$1;

.field final synthetic val$key:I

.field final synthetic val$media:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/UsbMusicBusiness$1;ILjava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1$2;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$1;

    iput p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1$2;->val$key:I

    iput-object p3, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1$2;->val$media:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 253
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1$2;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$1;

    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1$2;->val$key:I

    invoke-static {v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$000(Lcom/chery/media/model/business/UsbMusicBusiness;I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 254
    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1$2;->val$media:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    iget-boolean v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->canPlay:Z

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->errorlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    .line 257
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1$2;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$1;

    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1$2;->val$key:I

    invoke-static {v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$300(Lcom/chery/media/model/business/UsbMusicBusiness;I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1$2;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$1;

    iget-object v1, v1, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget v2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1$2;->val$key:I

    invoke-static {v1, v2}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$000(Lcom/chery/media/model/business/UsbMusicBusiness;I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-eq v0, v1, :cond_1

    .line 260
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v3, "nextMusic:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1$2;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$1;

    iget-object v1, v1, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget v2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1$2;->val$key:I

    invoke-virtual {v1, v2, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    .line 262
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1$2;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$1;

    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1$2;->val$key:I

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    goto :goto_0

    .line 266
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->errorlist:Ljava/util/List;

    .line 267
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "errorlist size(%s) >= playlist size(%s)"

    .line 266
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
