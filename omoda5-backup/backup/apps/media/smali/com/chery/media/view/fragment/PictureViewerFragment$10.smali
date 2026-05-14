.class Lcom/chery/media/view/fragment/PictureViewerFragment$10;
.super Ljava/lang/Object;
.source "PictureViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/PictureViewerFragment;->initView()V
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

    .line 289
    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 292
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$900(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$500(Lcom/chery/media/view/fragment/PictureViewerFragment;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 297
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$100(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    goto/16 :goto_3

    .line 300
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/chery/media/view/activity/PictureActivity;

    invoke-virtual {p0}, Lcom/chery/media/view/activity/PictureActivity;->backward()V

    goto/16 :goto_3

    .line 303
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivAutoChangePaused:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 304
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1100(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    goto/16 :goto_3

    .line 306
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivRotate:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    const v2, 0x7f0800de

    const/4 v3, 0x1

    if-ne v0, v1, :cond_d

    .line 307
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1200(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/view/adapter/PictureViewerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/view/adapter/PictureViewerAdapter;->getCurrentItemView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/chrisbanes/photoview/PhotoView;

    .line 310
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 311
    invoke-virtual {p1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->getSuppMatrix(Landroid/graphics/Matrix;)V

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 314
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const v0, 0x38d1b717    # 1.0E-4f

    const/4 v2, 0x0

    .line 317
    aget v4, v1, v2

    const/4 v5, 0x0

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v0

    const/4 v6, -0x1

    if-gez v4, :cond_4

    :cond_3
    move v4, v2

    goto :goto_0

    .line 318
    :cond_4
    aget v4, v1, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    move v4, v6

    goto :goto_0

    .line 319
    :cond_5
    aget v4, v1, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    move v4, v3

    .line 320
    :goto_0
    aget v7, v1, v3

    sub-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v0, v7, v0

    if-gez v0, :cond_7

    :cond_6
    move v0, v2

    goto :goto_1

    .line 321
    :cond_7
    aget v0, v1, v3

    cmpg-float v0, v0, v5

    if-gez v0, :cond_8

    move v0, v6

    goto :goto_1

    .line 322
    :cond_8
    aget v0, v1, v3

    cmpl-float v0, v0, v5

    if-lez v0, :cond_6

    move v0, v3

    :goto_1
    const/16 v1, 0x5a

    if-ne v4, v3, :cond_a

    if-nez v0, :cond_a

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    if-nez v4, :cond_b

    if-ne v0, v6, :cond_b

    move v0, v1

    goto :goto_2

    :cond_b
    if-ne v4, v6, :cond_c

    if-nez v0, :cond_c

    const/16 v0, 0xb4

    goto :goto_2

    :cond_c
    if-nez v4, :cond_9

    if-ne v0, v3, :cond_9

    const/16 v0, 0x10e

    .line 328
    :goto_2
    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/PhotoView;->getMinimumScale()F

    move-result v4

    invoke-virtual {p1, v4, v2}, Lcom/github/chrisbanes/photoview/PhotoView;->setScale(FZ)V

    .line 329
    iget-object v4, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v4}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 330
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivZoomOut:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    add-int/2addr v0, v1

    int-to-float p0, v0

    .line 332
    invoke-virtual {p1, p0}, Lcom/github/chrisbanes/photoview/PhotoView;->setRotationTo(F)V

    goto/16 :goto_3

    .line 334
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivAutoPlay:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 335
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1300(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/btphone/livedata/BtCallStateLiveData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/btphone/livedata/BtCallStateLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1300(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/btphone/livedata/BtCallStateLiveData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/btphone/livedata/BtCallStateLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    .line 336
    invoke-static {}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "during bt phone, do not start audio change"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 339
    :cond_e
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->startAutoChange()V

    goto/16 :goto_3

    .line 342
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivPlayPrior:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 343
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1400(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/viewmodel/PictureViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1400(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/viewmodel/PictureViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/PictureViewModel;->getCurrentUsbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/chery/media/viewmodel/PictureViewModel;->changePrior(I)V

    goto/16 :goto_3

    .line 345
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivPlayNext:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 346
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1400(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/viewmodel/PictureViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1400(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/viewmodel/PictureViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/PictureViewModel;->getCurrentUsbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/chery/media/viewmodel/PictureViewModel;->changeNext(I)V

    goto/16 :goto_3

    .line 348
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    const v4, 0x3e4ccccd    # 0.2f

    if-ne v0, v1, :cond_13

    .line 349
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1200(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/view/adapter/PictureViewerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/view/adapter/PictureViewerAdapter;->getCurrentItemView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/github/chrisbanes/photoview/PhotoView;

    .line 350
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result p1

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->getMaximumScale()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_12

    return-void

    .line 353
    :cond_12
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result p1

    add-float/2addr p1, v4

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->getMaximumScale()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 354
    invoke-virtual {p0, p1, v3}, Lcom/github/chrisbanes/photoview/PhotoView;->setScale(FZ)V

    goto :goto_3

    .line 356
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_15

    .line 357
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1200(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/view/adapter/PictureViewerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/view/adapter/PictureViewerAdapter;->getCurrentItemView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/github/chrisbanes/photoview/PhotoView;

    .line 358
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result p1

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->getMinimumScale()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_14

    return-void

    .line 361
    :cond_14
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result p1

    sub-float/2addr p1, v4

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->getMinimumScale()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 362
    invoke-virtual {p0, p1, v3}, Lcom/github/chrisbanes/photoview/PhotoView;->setScale(FZ)V

    :cond_15
    :goto_3
    return-void
.end method
