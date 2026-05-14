.class Lcom/chery/media/view/fragment/PictureViewerFragment$12;
.super Ljava/lang/Object;
.source "PictureViewerFragment.java"

# interfaces
.implements Lcom/chery/media/view/adapter/PictureViewerAdapter$OnCurrentItemListener;


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

    .line 416
    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$12;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentItemChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0800de

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 422
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/chrisbanes/photoview/PhotoView;

    .line 423
    invoke-virtual {p2}, Lcom/github/chrisbanes/photoview/PhotoView;->getMinimumScale()F

    move-result v2

    invoke-virtual {p2, v2, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setScale(FZ)V

    :cond_0
    if-eqz p1, :cond_3

    .line 427
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/chrisbanes/photoview/PhotoView;

    .line 428
    iget-object p2, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$12;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivZoomIn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result v0

    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/PhotoView;->getMaximumScale()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 429
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$12;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivZoomOut:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result p2

    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/PhotoView;->getMinimumScale()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    cmpl-double p1, p1, v4

    if-lez p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public onCurrentPositionChanged(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 435
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$12;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1400(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/viewmodel/PictureViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$12;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$200(Lcom/chery/media/view/fragment/PictureViewerFragment;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/chery/media/viewmodel/PictureViewModel;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    .line 436
    invoke-virtual {p0, p3, p4}, Lcom/chery/media/view/fragment/PictureViewerFragment$12;->onCurrentItemChanged(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
