.class Lcom/chery/media/view/fragment/DabPlayerFragment$21;
.super Ljava/lang/Object;
.source "DabPlayerFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/fragment/DabPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$21;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 422
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/DabPlayerFragment$21;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$21;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$400(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvLabelShort:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$21;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$400(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvLabelLong:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$21;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$500(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    .line 428
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$21;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$600(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    .line 429
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$21;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$700(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    return-void
.end method
