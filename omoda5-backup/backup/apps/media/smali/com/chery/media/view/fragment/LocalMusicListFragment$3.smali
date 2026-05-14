.class Lcom/chery/media/view/fragment/LocalMusicListFragment$3;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$3;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$3;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$300(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 154
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment$3;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
