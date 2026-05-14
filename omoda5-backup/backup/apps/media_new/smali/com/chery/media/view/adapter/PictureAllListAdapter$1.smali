.class Lcom/chery/media/view/adapter/PictureAllListAdapter$1;
.super Ljava/lang/Object;
.source "PictureAllListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/PictureAllListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/PictureAllListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/PictureAllListAdapter;

.field final synthetic val$pictureInfo:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/PictureAllListAdapter;ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter$1;->this$0:Lcom/chery/media/view/adapter/PictureAllListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter$1;->val$pictureInfo:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter$1;->this$0:Lcom/chery/media/view/adapter/PictureAllListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/PictureAllListAdapter;->access$000(Lcom/chery/media/view/adapter/PictureAllListAdapter;)Lcom/chery/media/view/adapter/PictureAllListAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter$1;->this$0:Lcom/chery/media/view/adapter/PictureAllListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/PictureAllListAdapter;->access$000(Lcom/chery/media/view/adapter/PictureAllListAdapter;)Lcom/chery/media/view/adapter/PictureAllListAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter$1;->val$position:I

    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureAllListAdapter$1;->val$pictureInfo:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    invoke-interface {p1, v0, p0}, Lcom/chery/media/view/adapter/PictureAllListAdapter$OnItemClickListener;->onItemClick(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    :cond_0
    return-void
.end method
