.class Lcom/chery/media/view/activity/MediaActivity$6;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/activity/MediaActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/activity/MediaActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/MediaActivity;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity$6;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 145
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity$6;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 148
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity$6;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-virtual {p1}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity$6;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    .line 150
    invoke-virtual {p1}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/chery/media/view/fragment/LocalMusicListFragment;

    if-eqz p1, :cond_2

    .line 151
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity$6;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/MediaMainFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    :cond_2
    return-void
.end method
