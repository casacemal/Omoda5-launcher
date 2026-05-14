.class Lcom/chery/media/view/adapter/VideoAllListAdapter$2;
.super Ljava/lang/Object;
.source "VideoAllListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/VideoAllListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/VideoAllListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/VideoAllListAdapter;

.field final synthetic val$position:I

.field final synthetic val$videoInfo:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/VideoAllListAdapter;ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/chery/media/view/adapter/VideoAllListAdapter$2;->this$0:Lcom/chery/media/view/adapter/VideoAllListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/VideoAllListAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/chery/media/view/adapter/VideoAllListAdapter$2;->val$videoInfo:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/chery/media/view/adapter/VideoAllListAdapter$2;->this$0:Lcom/chery/media/view/adapter/VideoAllListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/VideoAllListAdapter;->access$000(Lcom/chery/media/view/adapter/VideoAllListAdapter;)Lcom/chery/media/view/adapter/VideoAllListAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/chery/media/view/adapter/VideoAllListAdapter$2;->this$0:Lcom/chery/media/view/adapter/VideoAllListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/VideoAllListAdapter;->access$000(Lcom/chery/media/view/adapter/VideoAllListAdapter;)Lcom/chery/media/view/adapter/VideoAllListAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/chery/media/view/adapter/VideoAllListAdapter$2;->val$position:I

    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoAllListAdapter$2;->val$videoInfo:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    invoke-interface {p1, v0, p0}, Lcom/chery/media/view/adapter/VideoAllListAdapter$OnItemClickListener;->onItemClick(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    :cond_0
    return-void
.end method
