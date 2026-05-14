.class Lcom/chery/media/view/adapter/PictureViewerAdapter$1;
.super Ljava/lang/Object;
.source "PictureViewerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/PictureViewerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/PictureViewerAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/PictureViewerAdapter;I)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$1;->this$0:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$1;->this$0:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/PictureViewerAdapter;->access$000(Lcom/chery/media/view/adapter/PictureViewerAdapter;)Lcom/chery/media/view/adapter/PictureViewerAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$1;->this$0:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/PictureViewerAdapter;->access$000(Lcom/chery/media/view/adapter/PictureViewerAdapter;)Lcom/chery/media/view/adapter/PictureViewerAdapter$OnItemClickListener;

    move-result-object p1

    iget p0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$1;->val$position:I

    invoke-interface {p1, p0}, Lcom/chery/media/view/adapter/PictureViewerAdapter$OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method
