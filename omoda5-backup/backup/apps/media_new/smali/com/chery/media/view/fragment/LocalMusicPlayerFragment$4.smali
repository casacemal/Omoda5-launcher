.class Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$4;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$4;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Long;)V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$4;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$800(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 173
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$4;->onChanged(Ljava/lang/Long;)V

    return-void
.end method
