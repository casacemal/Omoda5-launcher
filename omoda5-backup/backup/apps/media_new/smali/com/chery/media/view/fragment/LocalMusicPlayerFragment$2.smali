.class Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$2;
.super Ljava/lang/Object;
.source "LocalMusicPlayerFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->initViewModel()V
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
.field final synthetic this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$2;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 0

    .line 159
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$2;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$200(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    .line 160
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$2;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$300(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    .line 161
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$2;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$400(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    .line 162
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$2;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$100(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 156
    check-cast p1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$2;->onChanged(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    return-void
.end method
