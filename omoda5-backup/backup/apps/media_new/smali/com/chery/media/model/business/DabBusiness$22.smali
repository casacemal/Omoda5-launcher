.class Lcom/chery/media/model/business/DabBusiness$22;
.super Ljava/lang/Object;
.source "DabBusiness.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/DabBusiness;->showReverseHintDialog(Lcom/chery/media/model/business/DabProgramInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/DabBusiness;

.field final synthetic val$info:Lcom/chery/media/model/business/DabProgramInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/DabBusiness;Lcom/chery/media/model/business/DabProgramInfo;)V
    .locals 0

    .line 1877
    iput-object p1, p0, Lcom/chery/media/model/business/DabBusiness$22;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iput-object p2, p0, Lcom/chery/media/model/business/DabBusiness$22;->val$info:Lcom/chery/media/model/business/DabProgramInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1880
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$22;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$22;->val$info:Lcom/chery/media/model/business/DabProgramInfo;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/DabBusiness;->playDabProgram(Lcom/chery/media/model/business/DabProgramInfo;)V

    .line 1881
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$22;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/DabBusiness;->access$3000(Lcom/chery/media/model/business/DabBusiness;)Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->dismiss()V

    return-void
.end method
