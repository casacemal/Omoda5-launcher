.class Lcom/chery/media/model/business/BtMusicBusiness$1;
.super Ljava/lang/Object;
.source "BtMusicBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/BtMusicBusiness;->handleAvrcpState(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/BtMusicBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/BtMusicBusiness;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/chery/media/model/business/BtMusicBusiness$1;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness$1;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-virtual {v0}, Lcom/chery/media/model/business/BtMusicBusiness;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  cycle   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/media/model/business/BtMusicBusiness$1;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->access$100(Lcom/chery/media/model/business/BtMusicBusiness;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness$1;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-virtual {v0}, Lcom/chery/media/model/business/BtMusicBusiness;->play()V

    .line 308
    iget-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness$1;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/BtMusicBusiness;->access$100(Lcom/chery/media/model/business/BtMusicBusiness;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/chery/media/model/business/BtMusicBusiness;->access$102(Lcom/chery/media/model/business/BtMusicBusiness;I)I

    .line 309
    iget-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness$1;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/BtMusicBusiness;->access$100(Lcom/chery/media/model/business/BtMusicBusiness;)I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 310
    iget-object v0, p0, Lcom/chery/media/model/business/BtMusicBusiness$1;->this$0:Lcom/chery/media/model/business/BtMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/BtMusicBusiness;->access$200(Lcom/chery/media/model/business/BtMusicBusiness;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
