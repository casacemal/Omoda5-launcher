.class Lcom/chery/media/view/dialog/Dialog_DabReserveHint$3;
.super Ljava/lang/Object;
.source "Dialog_DabReserveHint.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/dialog/Dialog_DabReserveHint;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;


# direct methods
.method constructor <init>(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$3;->this$0:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$3;->this$0:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    invoke-static {v0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->access$100(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$3;->this$0:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    invoke-static {p0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->access$100(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$3;->this$0:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->dismiss()V

    :goto_0
    return-void
.end method
