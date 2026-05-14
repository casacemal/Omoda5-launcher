.class Lcom/chery/media/model/business/DabBusiness$9;
.super Ljava/lang/Object;
.source "DabBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/DabBusiness;->saveCurDabInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/DabBusiness;

.field final synthetic val$infoString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/DabBusiness;Ljava/lang/String;)V
    .locals 0

    .line 1259
    iput-object p1, p0, Lcom/chery/media/model/business/DabBusiness$9;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iput-object p2, p0, Lcom/chery/media/model/business/DabBusiness$9;->val$infoString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1262
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/MediaBusiness;->getIoThread()Lcom/chery/media/util/RunnableThread;

    move-result-object v0

    new-instance v1, Lcom/chery/media/model/business/DabBusiness$9$1;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/DabBusiness$9$1;-><init>(Lcom/chery/media/model/business/DabBusiness$9;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/util/RunnableThread;->addRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
