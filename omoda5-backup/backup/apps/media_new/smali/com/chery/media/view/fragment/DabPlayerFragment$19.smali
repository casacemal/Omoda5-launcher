.class Lcom/chery/media/view/fragment/DabPlayerFragment$19;
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
        "Ljava/util/List<",
        "Lcom/chery/media/model/business/DabInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$19;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 398
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/DabPlayerFragment$19;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;)V"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$19;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$1100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 402
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$19;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$1100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 403
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$19;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$400(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvDabEmptyList:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$19;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$1100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$19;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$400(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvDabList:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$19;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-virtual {v1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e007d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$19;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$1100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$19;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$1000(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/view/adapter/DABPlayListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$19;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$1100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->setData(Ljava/util/List;)V

    .line 406
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$19;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$1200(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    return-void
.end method
