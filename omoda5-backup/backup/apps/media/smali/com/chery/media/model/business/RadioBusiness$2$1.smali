.class Lcom/chery/media/model/business/RadioBusiness$2$1;
.super Ljava/lang/Object;
.source "RadioBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/RadioBusiness$2;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/RadioBusiness$2;

.field final synthetic val$var1:I


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/RadioBusiness$2;I)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$2$1;->this$1:Lcom/chery/media/model/business/RadioBusiness$2;

    iput p2, p0, Lcom/chery/media/model/business/RadioBusiness$2$1;->val$var1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 193
    iget v0, p0, Lcom/chery/media/model/business/RadioBusiness$2$1;->val$var1:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness$2$1;->this$1:Lcom/chery/media/model/business/RadioBusiness$2;

    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness$2;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/RadioBusiness;->access$1200(Lcom/chery/media/model/business/RadioBusiness;)V

    :goto_0
    return-void
.end method
