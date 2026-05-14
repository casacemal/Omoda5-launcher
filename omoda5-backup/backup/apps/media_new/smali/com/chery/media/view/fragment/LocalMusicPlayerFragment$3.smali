.class Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$3;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$3;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 168
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$3;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$500(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    .line 169
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$3;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$600(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    .line 170
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$3;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$700(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 165
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$3;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
