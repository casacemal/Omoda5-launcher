.class Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$21;
.super Ljava/lang/Object;
.source "UsbMusicPlayerFragment.java"

# interfaces
.implements Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->initPlaylist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$21;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 1

    .line 493
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$21;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1500(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Lcom/chery/media/viewmodel/UsbMusicViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$21;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    .line 494
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$21;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1500(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Lcom/chery/media/viewmodel/UsbMusicViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$21;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->play(I)V

    return-void
.end method
