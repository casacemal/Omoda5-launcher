.class Lcom/chery/media/model/service/EolRadioService$1;
.super Landroid/os/Handler;
.source "EolRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/service/EolRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/service/EolRadioService;


# direct methods
.method constructor <init>(Lcom/chery/media/model/service/EolRadioService;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/chery/media/model/service/EolRadioService$1;->this$0:Lcom/chery/media/model/service/EolRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 29
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 30
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/RadioBusiness;->getChannel()I

    move-result v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/chery/media/model/business/RadioBusiness;->addCollection(IZ)Ljava/lang/String;

    :goto_1
    return-void
.end method
