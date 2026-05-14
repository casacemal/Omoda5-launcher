.class Lcom/chery/media/model/business/RadioBusiness$16;
.super Ljava/lang/Object;
.source "RadioBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/RadioBusiness;->saveRestoreInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/RadioBusiness;

.field final synthetic val$infoString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/RadioBusiness;Ljava/lang/String;)V
    .locals 0

    .line 1226
    iput-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$16;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    iput-object p2, p0, Lcom/chery/media/model/business/RadioBusiness$16;->val$infoString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1229
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->access$200()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "do saveRestoreInfo"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chery/media/model/business/RadioBusiness$16;->val$infoString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness$16;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/RadioBusiness;->access$1700(Lcom/chery/media/model/business/RadioBusiness;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness$16;->val$infoString:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v2, "radio_frequency_save.txt"

    invoke-static {v0, v2, p0, v1}, Lcom/chery/media/util/Utils;->writeToInternalFile(Landroid/content/Context;Ljava/lang/String;[BZ)Z

    return-void
.end method
