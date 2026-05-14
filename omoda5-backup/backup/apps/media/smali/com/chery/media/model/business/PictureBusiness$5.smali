.class Lcom/chery/media/model/business/PictureBusiness$5;
.super Landroid/content/BroadcastReceiver;
.source "PictureBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/PictureBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/PictureBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/PictureBusiness;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/chery/media/model/business/PictureBusiness$5;->this$0:Lcom/chery/media/model/business/PictureBusiness;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 304
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.chery.media.test.speed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "speed"

    .line 305
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness$5;->this$0:Lcom/chery/media/model/business/PictureBusiness;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->access$600(Lcom/chery/media/model/business/PictureBusiness;F)V

    :cond_0
    return-void
.end method
