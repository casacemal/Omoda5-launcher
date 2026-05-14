.class Lcom/chery/media/view/fragment/MediaMainFragment$10;
.super Ljava/lang/Object;
.source "MediaMainFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/MediaMainFragment;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/MediaMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$10;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 1

    .line 218
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$10;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->access$700(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    .line 220
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$10;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->access$400(Lcom/chery/media/view/fragment/MediaMainFragment;)Lcom/chery/media/viewmodel/MediaViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/MediaViewModel;->getCurrentAudioSource()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$10;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    .line 221
    invoke-static {p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->access$400(Lcom/chery/media/view/fragment/MediaMainFragment;)Lcom/chery/media/viewmodel/MediaViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/MediaViewModel;->getCurrentAudioSource()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 222
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment$10;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->access$100(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 215
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/MediaMainFragment$10;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
