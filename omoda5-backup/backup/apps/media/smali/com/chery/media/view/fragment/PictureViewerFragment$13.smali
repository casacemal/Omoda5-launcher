.class Lcom/chery/media/view/fragment/PictureViewerFragment$13;
.super Ljava/lang/Object;
.source "PictureViewerFragment.java"

# interfaces
.implements Lcom/chery/media/view/adapter/PictureViewerAdapter$OnPhotoViewScaleChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/PictureViewerFragment;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$13;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleChanged(ILcom/github/chrisbanes/photoview/PhotoView;F)V
    .locals 5

    .line 443
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$13;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->viewPager:Lcom/chery/media/view/component/HackyViewPager;

    invoke-virtual {v0}, Lcom/chery/media/view/component/HackyViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 444
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$13;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivZoomIn:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/github/chrisbanes/photoview/PhotoView;->getMaximumScale()F

    move-result v0

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 445
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$13;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivZoomOut:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/github/chrisbanes/photoview/PhotoView;->getMinimumScale()F

    move-result p1

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    cmpl-double p1, p1, v2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_2
    return-void
.end method
