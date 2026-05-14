.class Lcom/chery/media/view/fragment/LocalMusicListFragment$8;
.super Ljava/lang/Object;
.source "LocalMusicListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/LocalMusicListFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 226
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$1000(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    new-instance v6, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-virtual {v0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    const v2, 0x7f0e006f

    invoke-virtual {v0, v2}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1, v6}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$1002(Lcom/chery/media/view/fragment/LocalMusicListFragment;Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;)Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    .line 229
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$1000(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/LocalMusicListFragment$8$1;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment$8$1;-><init>(Lcom/chery/media/view/fragment/LocalMusicListFragment$8;)V

    invoke-virtual {p1, v0}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->setConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment$8;->this$0:Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->access$1000(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->show()V

    return-void
.end method
