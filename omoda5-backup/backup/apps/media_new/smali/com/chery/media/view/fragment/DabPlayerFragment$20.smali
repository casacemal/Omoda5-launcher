.class Lcom/chery/media/view/fragment/DabPlayerFragment$20;
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
        "Lcom/chery/media/model/business/DabInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/model/business/DabInfo;)V
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0, p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$1302(Lcom/chery/media/view/fragment/DabPlayerFragment;Lcom/chery/media/model/business/DabInfo;)Lcom/chery/media/model/business/DabInfo;

    .line 414
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$400(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->ivCollection:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/chery/media/viewmodel/DabViewModel;->isFavor(Lcom/chery/media/model/business/DabInfo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 415
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$400(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvProgramName:Lcom/chery/media/view/component/MarqueeTextView;

    iget-object v1, p1, Lcom/chery/media/model/business/DabInfo;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$400(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/databinding/FragmentDabPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPlayerBinding;->tvChannelName:Lcom/chery/media/view/component/MarqueeTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v2}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object v2

    iget v3, p1, Lcom/chery/media/model/business/DabInfo;->servicePty:I

    invoke-virtual {v2, v3}, Lcom/chery/media/viewmodel/DabViewModel;->getPtyName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/chery/media/model/business/DabInfo;->ensembleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$1000(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/view/adapter/DABPlayListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chery/media/view/adapter/DABPlayListAdapter;->setCurPlayInfo(Lcom/chery/media/model/business/DabInfo;)V

    .line 418
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$20;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$1200(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 410
    check-cast p1, Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/DabPlayerFragment$20;->onChanged(Lcom/chery/media/model/business/DabInfo;)V

    return-void
.end method
