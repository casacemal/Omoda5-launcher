.class Lcom/chery/media/view/adapter/PictureViewerAdapter$3;
.super Ljava/lang/Object;
.source "PictureViewerAdapter.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


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

.field final synthetic val$photoView:Lcom/github/chrisbanes/photoview/PhotoView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/PictureViewerAdapter;ILcom/github/chrisbanes/photoview/PhotoView;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$3;->this$0:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$3;->val$position:I

    iput-object p3, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$3;->val$photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 132
    iget-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$3;->val$photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result p1

    iget-object v0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$3;->val$photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoView;->getMinimumScale()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v0, v2

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    .line 133
    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$3;->val$photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->getMaximumScale()F

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setScale(FZ)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$3;->val$photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->getMinimumScale()F

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setScale(FZ)V

    :goto_0
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$3;->this$0:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/PictureViewerAdapter;->access$000(Lcom/chery/media/view/adapter/PictureViewerAdapter;)Lcom/chery/media/view/adapter/PictureViewerAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$3;->this$0:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/PictureViewerAdapter;->access$000(Lcom/chery/media/view/adapter/PictureViewerAdapter;)Lcom/chery/media/view/adapter/PictureViewerAdapter$OnItemClickListener;

    move-result-object p1

    iget p0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$3;->val$position:I

    invoke-interface {p1, p0}, Lcom/chery/media/view/adapter/PictureViewerAdapter$OnItemClickListener;->onItemClick(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
