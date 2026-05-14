.class Lcom/chery/media/model/business/RadioBusiness$5;
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

    .line 777
    iput-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$5;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 780
    new-instance v0, Lcom/chery/media/view/dialog/Dialog_SingleText;

    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$5;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$1700(Lcom/chery/media/model/business/RadioBusiness;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chery/media/view/dialog/Dialog_SingleText;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness$5;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/RadioBusiness;->access$1700(Lcom/chery/media/model/business/RadioBusiness;)Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0e00b7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1}, Lcom/chery/media/view/dialog/Dialog_SingleText;->showText(Ljava/lang/String;I)V

    return-void
.end method
