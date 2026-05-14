.class Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$1;
.super Ljava/lang/Object;
.source "UsbMusicFolderListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->onBindViewHolder(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;I)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$1;->this$0:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$1;->this$0:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->access$000(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;)Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$1;->this$0:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->access$000(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;)Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$OnItemClickListener;

    move-result-object p1

    iget p0, p0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$1;->val$position:I

    invoke-interface {p1, p0}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$OnItemClickListener;->onRootFolderClick(I)V

    :cond_0
    return-void
.end method
