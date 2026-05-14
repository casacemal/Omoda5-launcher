.class Lcom/chery/media/view/fragment/DabPlayerFragment$16;
.super Ljava/lang/Object;
.source "DabPlayerFragment.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/DabPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$16;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChildViewAttachedToWindow$0$DabPlayerFragment$16()V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$16;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$900(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    return-void
.end method

.method public synthetic lambda$onChildViewDetachedFromWindow$1$DabPlayerFragment$16()V
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$16;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$900(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 309
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$16;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$800(Lcom/chery/media/view/fragment/DabPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/-$$Lambda$DabPlayerFragment$16$CrDelMsuZaACewipap5myTXN9h4;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/-$$Lambda$DabPlayerFragment$16$CrDelMsuZaACewipap5myTXN9h4;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment$16;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 314
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$16;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$800(Lcom/chery/media/view/fragment/DabPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/-$$Lambda$DabPlayerFragment$16$r1KZCV5rgRKpbnqyj8YmnKDFPcI;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/-$$Lambda$DabPlayerFragment$16$r1KZCV5rgRKpbnqyj8YmnKDFPcI;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment$16;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
