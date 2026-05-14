.class Lcom/chery/media/view/fragment/RadioPlayerFragment$21;
.super Ljava/lang/Object;
.source "RadioPlayerFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/fragment/RadioPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$21;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 1

    .line 452
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 453
    iget-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$21;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$300(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivDabRadioSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 454
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$21;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$300(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivRadioSwitch:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$21;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$300(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivDabRadioSwitch:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 457
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$21;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$300(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivRadioSwitch:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 449
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/RadioPlayerFragment$21;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
