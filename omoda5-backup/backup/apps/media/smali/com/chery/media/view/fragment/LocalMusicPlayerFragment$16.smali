.class Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$16;
.super Ljava/lang/Object;
.source "LocalMusicPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$16;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 313
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$16;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1100(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getPlayMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$16;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1100(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->changePlayMode(I)V

    goto :goto_0

    .line 319
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$16;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1100(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->changePlayMode(I)V

    goto :goto_0

    .line 316
    :cond_2
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$16;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1100(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->changePlayMode(I)V

    :goto_0
    return-void
.end method
