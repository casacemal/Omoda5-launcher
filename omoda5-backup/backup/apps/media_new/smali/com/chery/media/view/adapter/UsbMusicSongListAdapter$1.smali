.class Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$1;
.super Ljava/lang/Object;
.source "UsbMusicSongListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;

.field final synthetic val$musicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$1;->this$0:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$1;->val$musicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$1;->this$0:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->access$000(Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;)Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$1;->this$0:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->access$000(Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;)Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$1;->val$position:I

    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$1;->val$musicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-interface {p1, v0, p0}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$OnItemClickListener;->onItemClick(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    :cond_0
    return-void
.end method
