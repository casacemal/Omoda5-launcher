.class Lcom/chery/media/view/fragment/DabPlayerFragment$13;
.super Ljava/lang/Object;
.source "DabPlayerFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .line 271
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$13;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$13;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$400(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvLabelShort:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$13;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayLabel()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$13;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$500(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    .line 276
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$13;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$400(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvLabelShort:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 277
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$13;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$600(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    return-void
.end method
