.class Lcom/chery/media/view/fragment/LocalMusicListFragment$8$1;
.super Ljava/lang/Object;
.source "LocalMusicListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/LocalMusicListFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/view/fragment/LocalMusicListFragment$8;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/LocalMusicListFragment$8;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$8$1;->this$1:Lcom/chery/media/view/fragment/LocalMusicListFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 232
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$8$1;->this$1:Lcom/chery/media/view/fragment/LocalMusicListFragment$8;

    iget-object p1, p1, Lcom/chery/media/view/fragment/LocalMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$1100(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$8$1;->this$1:Lcom/chery/media/view/fragment/LocalMusicListFragment$8;

    iget-object v0, v0, Lcom/chery/media/view/fragment/LocalMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$500(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->deleteLocals(Ljava/util/List;Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;)V

    .line 233
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$8$1;->this$1:Lcom/chery/media/view/fragment/LocalMusicListFragment$8;

    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$1000(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->dismiss()V

    return-void
.end method
