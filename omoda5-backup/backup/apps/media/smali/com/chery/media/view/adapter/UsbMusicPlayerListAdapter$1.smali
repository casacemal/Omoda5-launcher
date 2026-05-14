.class Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$1;
.super Ljava/lang/Object;
.source "UsbMusicPlayerListAdapter.java"

# interfaces
.implements Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;-><init>(Landroid/content/Context;Lcom/chery/media/viewmodel/LocalMusicViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$1;->this$0:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddResult(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;I)V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$1;->this$0:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    invoke-static {v0}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->access$000(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$1;->this$0:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    invoke-static {v0}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->access$100(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;

    .line 55
    invoke-virtual {v1}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$1;->this$0:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    invoke-static {v3}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->access$000(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 56
    iget-object v2, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$1;->this$0:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    invoke-static {v2}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->access$000(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-ne v2, p1, :cond_1

    const/4 v2, -0x2

    if-eq p2, v2, :cond_3

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    goto :goto_0

    .line 61
    :cond_2
    iget-object v2, v1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    invoke-virtual {v2}, Lcom/chery/media/view/component/RotateAnimImageView;->endAnim()V

    .line 62
    iget-object v1, v1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    const v2, 0x7f070105

    invoke-virtual {v1, v2}, Lcom/chery/media/view/component/RotateAnimImageView;->setImageResource(I)V

    goto :goto_0

    .line 66
    :cond_3
    iget-object v2, v1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    invoke-virtual {v2}, Lcom/chery/media/view/component/RotateAnimImageView;->endAnim()V

    .line 67
    iget-object v1, v1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    const v2, 0x7f070104

    invoke-virtual {v1, v2}, Lcom/chery/media/view/component/RotateAnimImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    return-void
.end method
