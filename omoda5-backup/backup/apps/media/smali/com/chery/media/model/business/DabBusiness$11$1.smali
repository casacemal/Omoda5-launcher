.class Lcom/chery/media/model/business/DabBusiness$11$1;
.super Ljava/lang/Object;
.source "DabBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/DabBusiness$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/DabBusiness$11;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/DabBusiness$11;)V
    .locals 0

    .line 1301
    iput-object p1, p0, Lcom/chery/media/model/business/DabBusiness$11$1;->this$1:Lcom/chery/media/model/business/DabBusiness$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1304
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$11$1;->this$1:Lcom/chery/media/model/business/DabBusiness$11;

    iget-object v0, v0, Lcom/chery/media/model/business/DabBusiness$11;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/DabBusiness;->access$300(Lcom/chery/media/model/business/DabBusiness;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness$11$1;->this$1:Lcom/chery/media/model/business/DabBusiness$11;

    iget-object v1, v1, Lcom/chery/media/model/business/DabBusiness$11;->val$infoStringListType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "save_cur_play_list_type"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/chery/media/util/Utils;->writeToInternalFile(Landroid/content/Context;Ljava/lang/String;[BZ)Z

    .line 1305
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$11$1;->this$1:Lcom/chery/media/model/business/DabBusiness$11;

    iget-object v0, v0, Lcom/chery/media/model/business/DabBusiness$11;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/DabBusiness;->access$300(Lcom/chery/media/model/business/DabBusiness;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$11$1;->this$1:Lcom/chery/media/model/business/DabBusiness$11;

    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$11;->val$infoStringListName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v1, "save_cur_play_list_name"

    invoke-static {v0, v1, p0, v3}, Lcom/chery/media/util/Utils;->writeToInternalFile(Landroid/content/Context;Ljava/lang/String;[BZ)Z

    return-void
.end method
