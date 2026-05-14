.class Lcom/chery/media/view/adapter/VideoFolderListAdapter$1;
.super Ljava/lang/Object;
.source "VideoFolderListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/VideoFolderListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/VideoFolderListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/VideoFolderListAdapter;

.field final synthetic val$position:I

.field final synthetic val$subVideoFolderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/VideoFolderListAdapter;ILcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter$1;->this$0:Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter$1;->val$subVideoFolderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter$1;->this$0:Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->access$000(Lcom/chery/media/view/adapter/VideoFolderListAdapter;)Lcom/chery/media/view/adapter/VideoFolderListAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter$1;->this$0:Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->access$000(Lcom/chery/media/view/adapter/VideoFolderListAdapter;)Lcom/chery/media/view/adapter/VideoFolderListAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter$1;->val$position:I

    iget-object p0, p0, Lcom/chery/media/view/adapter/VideoFolderListAdapter$1;->val$subVideoFolderInfo:Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    invoke-interface {p1, v0, p0}, Lcom/chery/media/view/adapter/VideoFolderListAdapter$OnItemClickListener;->onSubFolderClick(ILcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    :cond_0
    return-void
.end method
