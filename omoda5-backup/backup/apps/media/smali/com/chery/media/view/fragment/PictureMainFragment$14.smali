.class Lcom/chery/media/view/fragment/PictureMainFragment$14;
.super Ljava/lang/Object;
.source "PictureMainFragment.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/PictureMainFragment;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/PictureMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$14;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 401
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$14;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$1200(Lcom/chery/media/view/fragment/PictureMainFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/PictureMainFragment$14$1;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$14$1;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment$14;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 411
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$14;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$1200(Lcom/chery/media/view/fragment/PictureMainFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/PictureMainFragment$14$2;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$14$2;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment$14;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
