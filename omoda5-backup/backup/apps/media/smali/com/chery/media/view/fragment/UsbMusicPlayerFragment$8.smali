.class Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$8;
.super Ljava/lang/Object;
.source "UsbMusicPlayerFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->initViewModel()V
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
.field final synthetic this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$8;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 238
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$8;->onChanged(Ljava/util/List;)V

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

    .line 241
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$8;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 242
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$8;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
