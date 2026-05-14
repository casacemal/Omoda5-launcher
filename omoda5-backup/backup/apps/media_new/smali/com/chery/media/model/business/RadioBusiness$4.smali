.class Lcom/chery/media/model/business/RadioBusiness$4;
.super Ljava/lang/Object;
.source "RadioBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/RadioBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/RadioBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/RadioBusiness;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$4;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness$4;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {v0}, Lcom/chery/media/model/business/RadioBusiness;->getMute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Runnable SET MUTE :false"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness$4;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/RadioBusiness;->access$1600(Lcom/chery/media/model/business/RadioBusiness;)Landroid/hardware/radio/RadioTuner;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/radio/RadioTuner;->setMute(Z)I

    :cond_0
    return-void
.end method
