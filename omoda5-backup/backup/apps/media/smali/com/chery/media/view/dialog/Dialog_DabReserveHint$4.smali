.class Lcom/chery/media/view/dialog/Dialog_DabReserveHint$4;
.super Ljava/lang/Object;
.source "Dialog_DabReserveHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/dialog/Dialog_DabReserveHint;
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

    .line 116
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$4;->this$0:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$4;->this$0:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    invoke-static {v0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->access$200(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$4;->this$0:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    invoke-static {v0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->access$210(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->setSeconds(I)V

    .line 121
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$4;->this$0:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    invoke-static {v0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->access$400(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$4;->this$0:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    invoke-static {p0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->access$300(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$4;->this$0:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    invoke-virtual {v0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->dismiss()V

    .line 124
    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_DabReserveHint$4;->this$0:Lcom/chery/media/view/dialog/Dialog_DabReserveHint;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/chery/media/view/dialog/Dialog_DabReserveHint;->access$202(Lcom/chery/media/view/dialog/Dialog_DabReserveHint;I)I

    :goto_0
    return-void
.end method
