.class Lcom/chery/media/view/dialog/Dialog_DABOption$1;
.super Ljava/lang/Object;
.source "Dialog_DABOption.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/dialog/Dialog_DABOption;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/dialog/Dialog_DABOption;


# direct methods
.method constructor <init>(Lcom/chery/media/view/dialog/Dialog_DABOption;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DABOption$1;->this$0:Lcom/chery/media/view/dialog/Dialog_DABOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_DABOption$1;->this$0:Lcom/chery/media/view/dialog/Dialog_DABOption;

    invoke-static {v0}, Lcom/chery/media/view/dialog/Dialog_DABOption;->access$000(Lcom/chery/media/view/dialog/Dialog_DABOption;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_DABOption$1;->this$0:Lcom/chery/media/view/dialog/Dialog_DABOption;

    invoke-static {p0}, Lcom/chery/media/view/dialog/Dialog_DABOption;->access$000(Lcom/chery/media/view/dialog/Dialog_DABOption;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_DABOption$1;->this$0:Lcom/chery/media/view/dialog/Dialog_DABOption;

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DABOption;->dismiss()V

    :goto_0
    return-void
.end method
