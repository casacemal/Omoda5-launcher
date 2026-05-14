.class Lcom/chery/media/model/business/DabBusiness$5$1;
.super Ljava/lang/Object;
.source "DabBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/DabBusiness$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/DabBusiness$5;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/DabBusiness$5;)V
    .locals 0

    .line 1189
    iput-object p1, p0, Lcom/chery/media/model/business/DabBusiness$5$1;->this$1:Lcom/chery/media/model/business/DabBusiness$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1192
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$5$1;->this$1:Lcom/chery/media/model/business/DabBusiness$5;

    iget-object v0, v0, Lcom/chery/media/model/business/DabBusiness$5;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/DabBusiness;->access$300(Lcom/chery/media/model/business/DabBusiness;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$5$1;->this$1:Lcom/chery/media/model/business/DabBusiness$5;

    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$5;->val$infoString:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v1, "save_all_list"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/chery/media/util/Utils;->writeToInternalFile(Landroid/content/Context;Ljava/lang/String;[BZ)Z

    return-void
.end method
