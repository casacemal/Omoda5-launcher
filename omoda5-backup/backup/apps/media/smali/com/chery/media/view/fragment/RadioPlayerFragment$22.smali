.class Lcom/chery/media/view/fragment/RadioPlayerFragment$22;
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
        "Ljava/util/List<",
        "Lcom/chery/media/model/business/RadioDef;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 464
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/RadioPlayerFragment$22;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/RadioDef;",
            ">;)V"
        }
    .end annotation

    .line 467
    invoke-static {}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radioDefs size :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/RadioDef;

    .line 471
    iget v4, v3, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    iget-object v5, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v5}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$600(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    .line 473
    iget-object v4, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v4}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$300(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivCollection:Landroid/widget/ImageView;

    iget-boolean v3, v3, Lcom/chery/media/model/business/RadioDef;->isCollection:Z

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 477
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$300(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->ivCollection:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$300(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->tvRadioList:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-virtual {v2}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e00bd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff08"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$800(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 483
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$800(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 484
    iget-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$900(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/view/adapter/RadioListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$800(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chery/media/view/adapter/RadioListAdapter;->setData(Ljava/util/List;)V

    .line 486
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$700(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V

    return-void
.end method
