.class Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$10;
.super Ljava/lang/Object;
.source "LocalMusicPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->initView()V
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

    .line 235
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$10;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 238
    invoke-static {}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ivLast onLongClick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$10;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1100(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->fastBackward()V

    const/4 p0, 0x1

    return p0
.end method
