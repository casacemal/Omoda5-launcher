.class Lcom/chery/media/view/fragment/VideoPlayerFragment$25;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VideoPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/VideoPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 524
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2100(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2200(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2300(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_0

    goto/16 :goto_0

    .line 543
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/high16 p3, 0x44700000    # 960.0f

    cmpl-float p1, p1, p3

    if-lez p1, :cond_6

    .line 544
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2300(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 545
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1, v1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2302(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    .line 546
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    .line 548
    :cond_1
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2200(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 549
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1, v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2202(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    .line 550
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    .line 551
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clBrightnessSetting:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 552
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1, v2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2602(Lcom/chery/media/view/fragment/VideoPlayerFragment;F)F

    :cond_2
    cmpl-float p1, p4, v2

    if-lez p1, :cond_3

    .line 554
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2600(Lcom/chery/media/view/fragment/VideoPlayerFragment;)F

    move-result p1

    cmpg-float p1, p1, v2

    if-ltz p1, :cond_4

    :cond_3
    cmpg-float p1, p4, v2

    if-gez p1, :cond_5

    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2600(Lcom/chery/media/view/fragment/VideoPlayerFragment;)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_5

    .line 555
    :cond_4
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1, v2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2602(Lcom/chery/media/view/fragment/VideoPlayerFragment;F)F

    .line 557
    :cond_5
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2600(Lcom/chery/media/view/fragment/VideoPlayerFragment;)F

    move-result p2

    add-float/2addr p2, p4

    invoke-static {p1, p2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2602(Lcom/chery/media/view/fragment/VideoPlayerFragment;F)F

    .line 558
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2600(Lcom/chery/media/view/fragment/VideoPlayerFragment;)F

    move-result p1

    const/high16 p2, 0x41f00000    # 30.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    if-eqz p1, :cond_13

    .line 560
    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p2, v2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2602(Lcom/chery/media/view/fragment/VideoPlayerFragment;F)F

    .line 561
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/viewmodel/VideoViewModel;->changeBrightnessBy(I)V

    goto/16 :goto_1

    .line 564
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    cmpg-float p1, p1, p3

    if-gez p1, :cond_13

    .line 565
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2200(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 566
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1, v1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2202(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    .line 567
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    .line 569
    :cond_7
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2300(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 570
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1, v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2302(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    .line 571
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    .line 572
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clVolSetting:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 573
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1, v2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2702(Lcom/chery/media/view/fragment/VideoPlayerFragment;F)F

    :cond_8
    cmpl-float p1, p4, v2

    if-lez p1, :cond_9

    .line 575
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2700(Lcom/chery/media/view/fragment/VideoPlayerFragment;)F

    move-result p1

    cmpg-float p1, p1, v2

    if-ltz p1, :cond_a

    :cond_9
    cmpg-float p1, p4, v2

    if-gez p1, :cond_b

    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2700(Lcom/chery/media/view/fragment/VideoPlayerFragment;)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_b

    .line 576
    :cond_a
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1, v2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2702(Lcom/chery/media/view/fragment/VideoPlayerFragment;F)F

    .line 578
    :cond_b
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2700(Lcom/chery/media/view/fragment/VideoPlayerFragment;)F

    move-result p2

    add-float/2addr p2, p4

    invoke-static {p1, p2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2702(Lcom/chery/media/view/fragment/VideoPlayerFragment;F)F

    .line 579
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2700(Lcom/chery/media/view/fragment/VideoPlayerFragment;)F

    move-result p1

    float-to-double p1, p1

    const-wide/high16 p3, 0x4034000000000000L    # 20.0

    div-double/2addr p1, p3

    double-to-int p1, p1

    if-eqz p1, :cond_13

    .line 581
    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p2, v2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2702(Lcom/chery/media/view/fragment/VideoPlayerFragment;F)F

    .line 582
    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chery/media/viewmodel/VideoViewModel;->getVolume()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, p1

    .line 583
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/VideoViewModel;->getVolumeMin()I

    move-result p1

    if-ge p2, p1, :cond_c

    .line 584
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/VideoViewModel;->getVolumeMin()I

    move-result p2

    .line 586
    :cond_c
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/VideoViewModel;->getVolumeMax()I

    move-result p1

    if-le p2, p1, :cond_d

    .line 587
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/VideoViewModel;->getVolumeMax()I

    move-result p2

    .line 589
    :cond_d
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/chery/media/viewmodel/VideoViewModel;->changeVolume(I)V

    goto/16 :goto_1

    .line 526
    :cond_e
    :goto_0
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2100(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 527
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1, v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2102(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    .line 528
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    .line 529
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 530
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->llFastTime:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 531
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1, v2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2402(Lcom/chery/media/view/fragment/VideoPlayerFragment;F)F

    .line 532
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p2

    iget-object p4, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p4}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$000(Lcom/chery/media/view/fragment/VideoPlayerFragment;)I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/chery/media/viewmodel/VideoViewModel;->getPlayingPosition(I)J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2502(Lcom/chery/media/view/fragment/VideoPlayerFragment;J)J

    :cond_f
    cmpl-float p1, p3, v2

    if-lez p1, :cond_10

    .line 534
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)F

    move-result p1

    cmpg-float p1, p1, v2

    if-ltz p1, :cond_11

    :cond_10
    cmpg-float p1, p3, v2

    if-gez p1, :cond_12

    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_12

    .line 535
    :cond_11
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1, v2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2402(Lcom/chery/media/view/fragment/VideoPlayerFragment;F)F

    .line 537
    :cond_12
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)F

    move-result p2

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2402(Lcom/chery/media/view/fragment/VideoPlayerFragment;F)F

    .line 538
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2500(Lcom/chery/media/view/fragment/VideoPlayerFragment;)J

    move-result-wide p2

    long-to-float p2, p2

    iget-object p3, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p3}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)F

    move-result p3

    const/high16 p4, 0x42700000    # 60.0f

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    float-to-long p2, p2

    invoke-static {p1, p2, p3}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2502(Lcom/chery/media/view/fragment/VideoPlayerFragment;J)J

    .line 539
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p1

    iget-object p2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$000(Lcom/chery/media/view/fragment/VideoPlayerFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/chery/media/viewmodel/VideoViewModel;->getPlayingDuration(I)J

    move-result-wide p1

    .line 540
    iget-object p3, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    const-wide/16 v1, 0x0

    invoke-static {p3}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2500(Lcom/chery/media/view/fragment/VideoPlayerFragment;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {p3, p1, p2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2502(Lcom/chery/media/view/fragment/VideoPlayerFragment;J)J

    .line 541
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->tvFastMusicTime:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2500(Lcom/chery/media/view/fragment/VideoPlayerFragment;)J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_1
    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 496
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clVolSetting:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 497
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0, v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2000(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)V

    goto :goto_0

    .line 499
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clBrightnessSetting:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 500
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0, v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2000(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)V

    goto :goto_0

    .line 503
    :cond_1
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clControl:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 504
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0, v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2000(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)V

    goto :goto_0

    .line 507
    :cond_2
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clVideoList:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 508
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clVideoList:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 509
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->tvVideoName:Lcom/chery/media/view/component/MarqueeTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/chery/media/view/component/MarqueeTextView;->setVisibility(I)V

    .line 510
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clPlayControl:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 511
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1700(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    goto :goto_0

    .line 514
    :cond_3
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    :goto_0
    return v0
.end method
