.class Lcom/chery/media/view/fragment/RadioPlayerFragment$16;
.super Ljava/lang/Object;
.source "RadioPlayerFragment.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/RadioPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$16;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 343
    iget-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$16;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$500(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/RadioPlayerFragment$16$1;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$16$1;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment$16;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 353
    iget-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$16;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$500(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/RadioPlayerFragment$16$2;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$16$2;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment$16;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
