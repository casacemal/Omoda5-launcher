.class Lcom/chery/media/view/fragment/LocalMusicListFragment$4;
.super Ljava/lang/Object;
.source "LocalMusicListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/LocalMusicListFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$4;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$4;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/chery/media/view/activity/MediaActivity;

    const/4 p1, 0x0

    .line 182
    invoke-static {p1, p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/MediaMainFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
