.class Lcom/chery/media/view/fragment/DabPtyListFragment$2;
.super Ljava/lang/Object;
.source "DabPtyListFragment.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/DabPtyListFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabPtyListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPtyListFragment;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabPtyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChildViewAttachedToWindow$0$DabPtyListFragment$2()V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabPtyListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPtyListFragment;->access$000(Lcom/chery/media/view/fragment/DabPtyListFragment;)V

    return-void
.end method

.method public synthetic lambda$onChildViewDetachedFromWindow$1$DabPtyListFragment$2()V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabPtyListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPtyListFragment;->access$000(Lcom/chery/media/view/fragment/DabPtyListFragment;)V

    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabPtyListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPtyListFragment;->access$100(Lcom/chery/media/view/fragment/DabPtyListFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/-$$Lambda$DabPtyListFragment$2$-BUlvdLv0jqqt2YUfXscZ0Wupk4;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/-$$Lambda$DabPtyListFragment$2$-BUlvdLv0jqqt2YUfXscZ0Wupk4;-><init>(Lcom/chery/media/view/fragment/DabPtyListFragment$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabPtyListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPtyListFragment;->access$100(Lcom/chery/media/view/fragment/DabPtyListFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/-$$Lambda$DabPtyListFragment$2$GQ6tVxnLgYAh_BLSd2nZVY87qoA;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/-$$Lambda$DabPtyListFragment$2$GQ6tVxnLgYAh_BLSd2nZVY87qoA;-><init>(Lcom/chery/media/view/fragment/DabPtyListFragment$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
