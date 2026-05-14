.class Lcom/chery/media/view/fragment/LocalMusicListFragment$2;
.super Ljava/lang/Object;
.source "LocalMusicListFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/LocalMusicListFragment;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$2;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 0

    .line 150
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$2;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$200(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    .line 151
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$2;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$100(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 147
    check-cast p1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment$2;->onChanged(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    return-void
.end method
