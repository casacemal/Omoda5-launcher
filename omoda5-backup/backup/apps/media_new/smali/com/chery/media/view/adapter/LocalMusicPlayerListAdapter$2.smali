.class Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2;
.super Ljava/lang/Object;
.source "LocalMusicPlayerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;

.field final synthetic val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2;->this$0:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;

    iput-object p2, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 103
    new-instance p1, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    iget-object v0, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2;->this$0:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;

    invoke-static {v0}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->access$100(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2;->this$0:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;

    invoke-static {v0}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->access$100(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e006f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    new-instance v0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2$1;

    invoke-direct {v0, p0, p1}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2$1;-><init>(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2;Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;)V

    invoke-virtual {p1, v0}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->setConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p1}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->show()V

    return-void
.end method
