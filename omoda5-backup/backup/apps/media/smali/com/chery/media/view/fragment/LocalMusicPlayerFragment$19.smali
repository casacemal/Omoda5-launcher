.class Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$19;
.super Ljava/lang/Object;
.source "LocalMusicPlayerFragment.java"

# interfaces
.implements Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->initPlaylist()V
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

    .line 424
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$19;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 0

    .line 427
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$19;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1100(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->changeCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    .line 428
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$19;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1100(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->play()V

    return-void
.end method
