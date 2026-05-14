.class Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$3;
.super Ljava/lang/Object;
.source "UsbMusicPlayerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

.field final synthetic val$holder:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;

.field final synthetic val$musicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$3;->this$0:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    iput-object p2, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$3;->val$musicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iput-object p3, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$3;->val$holder:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 154
    iget-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$3;->this$0:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->access$300(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$3;->val$musicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-virtual {p1, v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->checkLocalState(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)I

    move-result p1

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$3;->this$0:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->access$300(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$3;->val$musicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->addToLocal(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;)V

    .line 156
    iget-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$3;->val$holder:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;

    iget-object p1, p1, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    const v0, 0x7f070106

    invoke-virtual {p1, v0}, Lcom/chery/media/view/component/RotateAnimImageView;->setImageResource(I)V

    .line 157
    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$3;->val$holder:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;

    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$ViewHolder;->binding:Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    invoke-virtual {p0}, Lcom/chery/media/view/component/RotateAnimImageView;->startAnim()V

    :cond_0
    return-void
.end method
