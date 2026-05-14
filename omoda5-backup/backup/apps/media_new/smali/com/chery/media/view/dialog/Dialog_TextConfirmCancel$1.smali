.class Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel$1;
.super Ljava/lang/Object;
.source "Dialog_TextConfirmCancel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;


# direct methods
.method constructor <init>(Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel$1;->this$0:Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel$1;->this$0:Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    invoke-static {v0}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->access$000(Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel$1;->this$0:Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    invoke-static {p0}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->access$000(Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel$1;->this$0:Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->dismiss()V

    :goto_0
    return-void
.end method
