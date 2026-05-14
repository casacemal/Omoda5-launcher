.class Lcom/chery/media/view/fragment/LocalMusicListFragment$5;
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

    .line 186
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$5;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 189
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$5;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$402(Lcom/chery/media/view/fragment/LocalMusicListFragment;Z)Z

    .line 190
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$5;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$500(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->setEdit(Z)V

    .line 191
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$5;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$600(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    .line 192
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$5;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$700(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    .line 193
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$5;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$800(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    .line 194
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$5;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$900(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    return-void
.end method
