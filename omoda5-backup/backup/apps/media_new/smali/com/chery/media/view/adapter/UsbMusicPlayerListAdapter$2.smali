.class Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$2;
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

.field final synthetic val$musicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$2;->this$0:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$2;->val$musicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$2;->this$0:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->access$200(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;)Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$2;->this$0:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->access$200(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;)Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$2;->val$position:I

    iget-object p0, p0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$2;->val$musicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-interface {p1, v0, p0}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$OnItemClickListener;->onItemClick(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    :cond_0
    return-void
.end method
