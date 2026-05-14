.class Lcom/chery/media/model/business/PictureBusiness$1;
.super Ljava/lang/Object;
.source "PictureBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/PictureBusiness;
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

    .line 46
    iput-object p1, p0, Lcom/chery/media/model/business/PictureBusiness$1;->this$0:Lcom/chery/media/model/business/PictureBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 49
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness$1;->this$0:Lcom/chery/media/model/business/PictureBusiness;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chery/media/model/business/PictureBusiness;->access$000(Lcom/chery/media/model/business/PictureBusiness;Z)V

    return-void
.end method
