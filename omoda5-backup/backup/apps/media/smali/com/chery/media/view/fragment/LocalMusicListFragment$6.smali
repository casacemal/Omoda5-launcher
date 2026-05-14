.class Lcom/chery/media/view/fragment/LocalMusicListFragment$6;
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

    .line 198
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$6;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 201
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$6;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$500(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->isEditingAll()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$6;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$500(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->cancelAll()V

    .line 203
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$6;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$900(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$6;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$500(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->editAll()V

    .line 207
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$6;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$900(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    :goto_0
    return-void
.end method
