.class Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2$1;
.super Ljava/lang/Object;
.source "LocalMusicPlayerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2;

.field final synthetic val$dialog:Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2;Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2$1;->this$1:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2;

    iput-object p2, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2$1;->val$dialog:Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 108
    iget-object p1, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2$1;->this$1:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2;

    iget-object p1, p1, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2;->this$0:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->access$200(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2$1;->this$1:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2;

    iget-object v0, v0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->deleteLocal(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;)V

    .line 109
    iget-object p0, p0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$2$1;->val$dialog:Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->dismiss()V

    return-void
.end method
