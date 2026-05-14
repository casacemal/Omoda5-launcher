.class public Lcom/chery/media/view/activity/MediaActivity;
.super Lcom/chery/media/view/activity/BaseActivity;
.source "MediaActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mediaActivity:Lcom/chery/media/view/activity/MediaActivity;


# instance fields
.field private binding:Lcom/chery/media/databinding/ActivityMediaBinding;

.field private btMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

.field private currentTopSource:I

.field private dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

.field private hasIntentPage:Z

.field private localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

.field private mediaViewModel:Lcom/chery/media/viewmodel/MediaViewModel;

.field private radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

.field private topCoverAni:Landroid/animation/ObjectAnimator;

.field private usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

.field private usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const-class v0, Lcom/chery/media/view/activity/MediaActivity;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/activity/MediaActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/chery/media/view/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/chery/media/view/activity/MediaActivity;->hasIntentPage:Z

    .line 68
    iput v0, p0, Lcom/chery/media/view/activity/MediaActivity;->currentTopSource:I

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/activity/MediaActivity;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/chery/media/view/activity/MediaActivity;->currentTopSource:I

    return p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/activity/MediaActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopPlaying()V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/media/view/activity/MediaActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopPlayingVisible()V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/media/view/activity/MediaActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopCoverAnim()V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/view/activity/MediaActivity;)Lcom/chery/media/databinding/ActivityMediaBinding;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    return-object p0
.end method

.method public static getInstance()Lcom/chery/media/view/activity/MediaActivity;
    .locals 1

    .line 73
    sget-object v0, Lcom/chery/media/view/activity/MediaActivity;->mediaActivity:Lcom/chery/media/view/activity/MediaActivity;

    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 5

    .line 307
    sget-object v0, Lcom/chery/media/view/activity/MediaActivity;->TAG:Ljava/lang/String;

    const-string v1, "handleIntent"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    const-string v0, "MediaPageId"

    .line 309
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 310
    iput-boolean v1, p0, Lcom/chery/media/view/activity/MediaActivity;->hasIntentPage:Z

    .line 311
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UsbType"

    .line 313
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 314
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v4

    :goto_0
    const/4 v2, -0x1

    .line 316
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "PAGE_RADIO_PLAYER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :sswitch_1
    const-string v1, "PAGE_DAB_PLAYER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_2
    const-string v1, "PAGE_USB_MUSIC_LIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_3
    const-string v1, "PAGE_USB_MUSIC_PLAYER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_4
    const-string v1, "PAGE_BT_MUSIC_PLAYER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_5
    const-string v1, "PAGE_MENU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_6
    const-string v1, "PAGE_LOCAL_MUSIC_PLAYER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_7
    const-string v1, "PAGE_LOCAL_MUSIC_LIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    goto :goto_2

    :cond_1
    :goto_1
    move v1, v2

    :goto_2
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 360
    :pswitch_0
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/chery/media/view/fragment/DabPlayerFragment;

    if-nez p1, :cond_3

    .line 361
    new-instance p1, Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_3

    .line 355
    :pswitch_1
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    if-nez p1, :cond_3

    .line 356
    invoke-static {v4, v4}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_3

    .line 350
    :pswitch_2
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/chery/media/view/fragment/LocalMusicListFragment;

    if-nez p1, :cond_3

    .line 351
    invoke-static {v4, v4}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/LocalMusicListFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 345
    :pswitch_3
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    if-nez p1, :cond_3

    .line 346
    invoke-static {v4, v4}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 333
    :pswitch_4
    invoke-static {p1}, Lcom/chery/media/model/business/MediaDef;->getPageUsbType(Ljava/lang/String;)I

    move-result p1

    .line 334
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/chery/media/view/fragment/UsbMusicListFragment;

    if-nez v0, :cond_2

    .line 335
    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->newInstance(I)Lcom/chery/media/view/fragment/UsbMusicListFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 338
    :cond_2
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;

    .line 339
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getThisUsbType()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 340
    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->setThisUsbType(I)V

    goto :goto_3

    .line 328
    :pswitch_5
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;

    if-nez p1, :cond_3

    .line 329
    invoke-static {v4, v4}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/BtMusicPlayerFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 323
    :pswitch_6
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/chery/media/view/fragment/RadioPlayerFragment;

    if-nez p1, :cond_3

    .line 324
    invoke-static {v4, v4}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/RadioPlayerFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 318
    :pswitch_7
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/chery/media/view/fragment/MediaMainFragment;

    if-nez p1, :cond_3

    .line 319
    invoke-static {v4, v4}, Lcom/chery/media/view/fragment/MediaMainFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/MediaMainFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    :cond_3
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73648044 -> :sswitch_7
        -0x254fe981 -> :sswitch_6
        -0x237952f1 -> :sswitch_5
        -0x9f1a088 -> :sswitch_4
        0x13c1d106 -> :sswitch_3
        0x32183003 -> :sswitch_2
        0x672974ab -> :sswitch_1
        0x771c6375 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startTopCoverAnim()V
    .locals 3

    .line 665
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->topCoverAni:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityMediaBinding;->ivTopPlayingCover:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->topCoverAni:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f40

    .line 667
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 668
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->topCoverAni:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 669
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->topCoverAni:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 670
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->topCoverAni:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->topCoverAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity;->topCoverAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->topCoverAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity;->topCoverAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->resume()V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private stopTopCoverAnim()V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->topCoverAni:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity;->topCoverAni:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    return-void
.end method

.method private updateTopCoverAnim()V
    .locals 2

    .line 593
    iget v0, p0, Lcom/chery/media/view/activity/MediaActivity;->currentTopSource:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->stopTopCoverAnim()V

    goto :goto_0

    .line 605
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopCoverAnimOfLocalMusic()V

    goto :goto_0

    .line 602
    :cond_1
    invoke-static {v0}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopCoverAnimOfUsbMusic(I)V

    goto :goto_0

    .line 599
    :cond_2
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopCoverAnimOfBtMusic()V

    goto :goto_0

    .line 608
    :cond_3
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopCoverAnimOfDab()V

    goto :goto_0

    .line 596
    :cond_4
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopCoverAnimOfRadio()V

    :goto_0
    return-void
.end method

.method private updateTopCoverAnimOfBtMusic()V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->btMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getPlaybackState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->btMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    .line 638
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getPlaybackState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->startTopCoverAnim()V

    goto :goto_0

    .line 642
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->stopTopCoverAnim()V

    :goto_0
    return-void
.end method

.method private updateTopCoverAnimOfDab()V
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    .line 628
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->startTopCoverAnim()V

    goto :goto_0

    .line 632
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->stopTopCoverAnim()V

    :goto_0
    return-void
.end method

.method private updateTopCoverAnimOfLocalMusic()V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->isPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->startTopCoverAnim()V

    goto :goto_0

    .line 660
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->stopTopCoverAnim()V

    :goto_0
    return-void
.end method

.method private updateTopCoverAnimOfRadio()V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/RadioViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    .line 618
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/RadioViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->startTopCoverAnim()V

    goto :goto_0

    .line 622
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->stopTopCoverAnim()V

    :goto_0
    return-void
.end method

.method private updateTopCoverAnimOfUsbMusic(I)V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-virtual {v0, p1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->isPlaying(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 648
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->startTopCoverAnim()V

    goto :goto_0

    .line 651
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->stopTopCoverAnim()V

    :goto_0
    return-void
.end method

.method private updateTopInfoOfBtMusic()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityMediaBinding;->ivTopPlayingCover:Landroid/widget/ImageView;

    const v1, 0x7f0700f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 482
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->btMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->btMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->btMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;

    if-eqz v0, :cond_1

    .line 489
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/ActivityMediaBinding;->tvTopPlayingTitle:Lcom/chery/media/view/component/MarqueeTextView;

    iget-object v0, v0, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 492
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/ActivityMediaBinding;->tvTopPlayingTitle:Lcom/chery/media/view/component/MarqueeTextView;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 483
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/ActivityMediaBinding;->tvTopPlayingTitle:Lcom/chery/media/view/component/MarqueeTextView;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTopInfoOfDab()V
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getCurPlayInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    if-eqz v0, :cond_0

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DAB "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/chery/media/model/business/DabInfo;->serviceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 474
    :goto_0
    iget-object v1, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/ActivityMediaBinding;->tvTopPlayingTitle:Lcom/chery/media/view/component/MarqueeTextView;

    invoke-virtual {v1, v0}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/ActivityMediaBinding;->ivTopPlayingCover:Landroid/widget/ImageView;

    const v0, 0x7f0700f1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateTopInfoOfLocalMusic()V
    .locals 4

    .line 524
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getCurrentPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    const v1, 0x7f0700f1

    if-eqz v0, :cond_0

    .line 526
    iget-object v2, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/ActivityMediaBinding;->tvTopPlayingTitle:Lcom/chery/media/view/component/MarqueeTextView;

    iget-object v3, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v2, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/ActivityMediaBinding;->ivTopPlayingCover:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 529
    new-instance v1, Lcom/chery/media/view/activity/MediaActivity$18;

    invoke-direct {v1, p0, v0}, Lcom/chery/media/view/activity/MediaActivity$18;-><init>(Lcom/chery/media/view/activity/MediaActivity;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    .line 542
    invoke-virtual {v1}, Lcom/chery/media/view/activity/MediaActivity$18;->start()V

    goto :goto_0

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityMediaBinding;->tvTopPlayingTitle:Lcom/chery/media/view/component/MarqueeTextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/ActivityMediaBinding;->ivTopPlayingCover:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updateTopInfoOfRadio()V
    .locals 5

    .line 446
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/RadioViewModel;->getCurrentChannel()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/RadioDef;

    if-eqz v0, :cond_2

    .line 448
    iget v1, v0, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    sget-object v2, Lcom/chery/media/model/business/RadioBusiness;->FREQ_DIVIDE_BAND:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 450
    iget-object v1, p0, Lcom/chery/media/view/activity/MediaActivity;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/RadioViewModel;->getArea()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "."

    const-string v3, "FM "

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v0, v0, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    rem-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%1$02d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 453
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    rem-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    :goto_0
    iget-object v1, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/ActivityMediaBinding;->tvTopPlayingTitle:Lcom/chery/media/view/component/MarqueeTextView;

    invoke-virtual {v1, v0}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 458
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/ActivityMediaBinding;->tvTopPlayingTitle:Lcom/chery/media/view/component/MarqueeTextView;

    invoke-virtual {v1, v0}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityMediaBinding;->tvTopPlayingTitle:Lcom/chery/media/view/component/MarqueeTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :goto_1
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/ActivityMediaBinding;->ivTopPlayingCover:Landroid/widget/ImageView;

    const v0, 0x7f0700f1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateTopInfoOfUsbMusic(I)V
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-virtual {v0, p1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object p1

    const v0, 0x7f0700f1

    if-eqz p1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/ActivityMediaBinding;->tvTopPlayingTitle:Lcom/chery/media/view/component/MarqueeTextView;

    iget-object v2, p1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v1, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/ActivityMediaBinding;->ivTopPlayingCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 502
    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$17;

    invoke-direct {v0, p0, p1}, Lcom/chery/media/view/activity/MediaActivity$17;-><init>(Lcom/chery/media/view/activity/MediaActivity;Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    .line 515
    invoke-virtual {v0}, Lcom/chery/media/view/activity/MediaActivity$17;->start()V

    goto :goto_0

    .line 518
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/ActivityMediaBinding;->tvTopPlayingTitle:Lcom/chery/media/view/component/MarqueeTextView;

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/ActivityMediaBinding;->ivTopPlayingCover:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updateTopPlaying()V
    .locals 2

    .line 423
    iget v0, p0, Lcom/chery/media/view/activity/MediaActivity;->currentTopSource:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopInfoOfLocalMusic()V

    goto :goto_0

    .line 432
    :cond_1
    invoke-static {v0}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopInfoOfUsbMusic(I)V

    goto :goto_0

    .line 429
    :cond_2
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopInfoOfBtMusic()V

    goto :goto_0

    .line 438
    :cond_3
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopInfoOfDab()V

    goto :goto_0

    .line 426
    :cond_4
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopInfoOfRadio()V

    :goto_0
    return-void
.end method

.method private updateTopPlayingVisible()V
    .locals 4

    .line 551
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 557
    :cond_0
    instance-of v1, v0, Lcom/chery/media/view/fragment/MediaMainFragment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/chery/media/view/fragment/UsbMusicListFragment;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/chery/media/view/fragment/LocalMusicListFragment;

    if-eqz v0, :cond_2

    .line 560
    :cond_1
    iget v0, p0, Lcom/chery/media/view/activity/MediaActivity;->currentTopSource:I

    if-eq v0, v2, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    :cond_2
    move v2, v3

    goto :goto_0

    .line 574
    :cond_3
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getCurrentPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 571
    :cond_4
    iget-object v1, p0, Lcom/chery/media/view/activity/MediaActivity;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {v0}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 567
    :cond_5
    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->btMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->btMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chery/media/view/activity/MediaActivity;->btMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    .line 568
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_6
    :goto_0
    const/16 v0, 0x8

    if-eqz v2, :cond_7

    .line 581
    iget-object v1, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/ActivityMediaBinding;->clTopPlaying:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_8

    .line 582
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/ActivityMediaBinding;->clTopPlaying:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_1

    .line 586
    :cond_7
    iget-object v1, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/ActivityMediaBinding;->clTopPlaying:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 587
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/ActivityMediaBinding;->clTopPlaying:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public checkFragmentToSource(I)V
    .locals 3

    .line 689
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/16 v1, 0xc

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 718
    :cond_0
    instance-of p1, v0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    if-nez p1, :cond_5

    instance-of p1, v0, Lcom/chery/media/view/fragment/LocalMusicListFragment;

    if-nez p1, :cond_5

    instance-of p1, v0, Lcom/chery/media/view/fragment/MediaMainFragment;

    if-nez p1, :cond_5

    .line 721
    invoke-static {v2, v2}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 705
    :cond_1
    instance-of p1, v0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    if-nez p1, :cond_5

    instance-of p1, v0, Lcom/chery/media/view/fragment/UsbMusicListFragment;

    if-nez p1, :cond_5

    instance-of p1, v0, Lcom/chery/media/view/fragment/MediaMainFragment;

    if-nez p1, :cond_5

    .line 708
    invoke-static {v2, v2}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 712
    :cond_2
    instance-of p1, v0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;

    if-nez p1, :cond_5

    instance-of p1, v0, Lcom/chery/media/view/fragment/MediaMainFragment;

    if-nez p1, :cond_5

    .line 714
    invoke-static {v2, v2}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/BtMusicPlayerFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 692
    :cond_3
    instance-of p1, v0, Lcom/chery/media/view/fragment/DabPlayerFragment;

    if-nez p1, :cond_5

    instance-of p1, v0, Lcom/chery/media/view/fragment/MediaMainFragment;

    if-nez p1, :cond_5

    .line 694
    new-instance p1, Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 699
    :cond_4
    instance-of p1, v0, Lcom/chery/media/view/fragment/RadioPlayerFragment;

    if-nez p1, :cond_5

    instance-of p1, v0, Lcom/chery/media/view/fragment/MediaMainFragment;

    if-nez p1, :cond_5

    .line 701
    invoke-static {v2, v2}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/RadioPlayerFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceFragment(Landroidx/fragment/app/Fragment;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected getContainerId()I
    .locals 0

    const p0, 0x7f08010a

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 78
    invoke-super {p0, p1}, Lcom/chery/media/view/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    sput-object p0, Lcom/chery/media/view/activity/MediaActivity;->mediaActivity:Lcom/chery/media/view/activity/MediaActivity;

    .line 82
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isRudderRight()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0b0020

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/ActivityMediaBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/ActivityMediaBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0b001f

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/ActivityMediaBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/ActivityMediaBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    .line 88
    :goto_0
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    invoke-virtual {p1}, Lcom/chery/media/databinding/ActivityMediaBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->setContentView(Landroid/view/View;)V

    .line 91
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/chery/media/viewmodel/MediaViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/chery/media/viewmodel/MediaViewModel;

    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->mediaViewModel:Lcom/chery/media/viewmodel/MediaViewModel;

    .line 92
    invoke-virtual {p1}, Lcom/chery/media/viewmodel/MediaViewModel;->getCurrentAudioSource()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$1;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/MediaActivity$1;-><init>(Lcom/chery/media/view/activity/MediaActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 99
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/chery/media/viewmodel/UsbScannerViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    .line 100
    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$2;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/MediaActivity$2;-><init>(Lcom/chery/media/view/activity/MediaActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->observeUsbMountStatusDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 114
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    .line 115
    invoke-virtual {p1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getCurrentUsbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$3;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/MediaActivity$3;-><init>(Lcom/chery/media/view/activity/MediaActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 126
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$4;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/MediaActivity$4;-><init>(Lcom/chery/media/view/activity/MediaActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->observeCurrentPlayingDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 135
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$5;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/MediaActivity$5;-><init>(Lcom/chery/media/view/activity/MediaActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->observePlayingStateDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 144
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/chery/media/viewmodel/LocalMusicViewModel;

    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    .line 145
    invoke-virtual {p1}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getLocalMusics()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$6;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/MediaActivity$6;-><init>(Lcom/chery/media/view/activity/MediaActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 156
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getCurrentPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$7;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/MediaActivity$7;-><init>(Lcom/chery/media/view/activity/MediaActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 165
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->isPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$8;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/MediaActivity$8;-><init>(Lcom/chery/media/view/activity/MediaActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 174
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/chery/media/viewmodel/RadioViewModel;

    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    .line 175
    invoke-virtual {p1}, Lcom/chery/media/viewmodel/RadioViewModel;->getCurrentChannel()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$9;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/MediaActivity$9;-><init>(Lcom/chery/media/view/activity/MediaActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 184
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->radioViewModel:Lcom/chery/media/viewmodel/RadioViewModel;

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/RadioViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$10;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/MediaActivity$10;-><init>(Lcom/chery/media/view/activity/MediaActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 194
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/chery/media/viewmodel/DabViewModel;

    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    .line 195
    invoke-virtual {p1}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$11;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/MediaActivity$11;-><init>(Lcom/chery/media/view/activity/MediaActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 203
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/DabViewModel;->getCurPlayInfo()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$12;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/MediaActivity$12;-><init>(Lcom/chery/media/view/activity/MediaActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 212
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/chery/media/viewmodel/BtMusicViewModel;

    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->btMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    .line 213
    invoke-virtual {p1}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicInfo()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$13;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/MediaActivity$13;-><init>(Lcom/chery/media/view/activity/MediaActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 222
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->btMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getBtMusicState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$14;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/MediaActivity$14;-><init>(Lcom/chery/media/view/activity/MediaActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 231
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->btMusicViewModel:Lcom/chery/media/viewmodel/BtMusicViewModel;

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/BtMusicViewModel;->getPlaybackState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$15;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/MediaActivity$15;-><init>(Lcom/chery/media/view/activity/MediaActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 240
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object p1, p1, Lcom/chery/media/databinding/ActivityMediaBinding;->tvTopPlayingTitle:Lcom/chery/media/view/component/MarqueeTextView;

    new-instance v0, Lcom/chery/media/view/activity/MediaActivity$16;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/MediaActivity$16;-><init>(Lcom/chery/media/view/activity/MediaActivity;)V

    invoke-virtual {p1, v0}, Lcom/chery/media/view/component/MarqueeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity;->mediaViewModel:Lcom/chery/media/viewmodel/MediaViewModel;

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/MediaViewModel;->getCurrentAudioSource()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->updateCurrentTopSource(I)V

    .line 266
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopPlaying()V

    .line 267
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopPlayingVisible()V

    .line 268
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopCoverAnim()V

    .line 270
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_1

    .line 271
    invoke-static {v1, v1}, Lcom/chery/media/view/fragment/MediaMainFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/MediaMainFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCurrentFragmentChanged(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 0

    .line 371
    invoke-super {p0, p1, p2, p3, p4}, Lcom/chery/media/view/activity/BaseActivity;->onCurrentFragmentChanged(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 374
    instance-of p1, p3, Lcom/chery/media/view/fragment/MediaMainFragment;

    if-eqz p1, :cond_0

    const-string p1, "PAGE_MENU"

    goto :goto_0

    .line 377
    :cond_0
    instance-of p1, p3, Lcom/chery/media/view/fragment/RadioPlayerFragment;

    if-eqz p1, :cond_1

    const-string p1, "PAGE_RADIO_PLAYER"

    goto :goto_0

    .line 380
    :cond_1
    instance-of p1, p3, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;

    if-eqz p1, :cond_2

    const-string p1, "PAGE_BT_MUSIC_PLAYER"

    goto :goto_0

    .line 383
    :cond_2
    instance-of p1, p3, Lcom/chery/media/view/fragment/UsbMusicListFragment;

    if-eqz p1, :cond_3

    const-string p1, "PAGE_USB_MUSIC_LIST"

    goto :goto_0

    .line 386
    :cond_3
    instance-of p1, p3, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    if-eqz p1, :cond_4

    const-string p1, "PAGE_USB_MUSIC_PLAYER"

    goto :goto_0

    .line 389
    :cond_4
    instance-of p1, p3, Lcom/chery/media/view/fragment/LocalMusicListFragment;

    if-eqz p1, :cond_5

    const-string p1, "PAGE_LOCAL_MUSIC_LIST"

    goto :goto_0

    .line 392
    :cond_5
    instance-of p1, p3, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    if-eqz p1, :cond_6

    const-string p1, "PAGE_LOCAL_MUSIC_PLAYER"

    goto :goto_0

    :cond_6
    const-string p1, "PAGE_NONE"

    .line 395
    :goto_0
    sget-object p2, Lcom/chery/media/view/activity/MediaActivity;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "post page "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "MediaPageId"

    invoke-static {p2, p3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 398
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopPlayingVisible()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 291
    invoke-super {p0}, Lcom/chery/media/view/activity/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 292
    sput-object v0, Lcom/chery/media/view/activity/MediaActivity;->mediaActivity:Lcom/chery/media/view/activity/MediaActivity;

    .line 294
    sget-object v1, Lcom/chery/media/view/activity/MediaActivity;->TAG:Ljava/lang/String;

    const-string v2, "post page PAGE_NONE"

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "MediaPageId"

    const-string v3, "PAGE_NONE"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 297
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->stopTopCoverAnim()V

    .line 298
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity;->binding:Lcom/chery/media/databinding/ActivityMediaBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/ActivityMediaBinding;->tvTopPlayingTitle:Lcom/chery/media/view/component/MarqueeTextView;

    invoke-virtual {p0, v0}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 279
    invoke-super {p0, p1}, Lcom/chery/media/view/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 280
    invoke-direct {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 285
    invoke-super {p0}, Lcom/chery/media/view/activity/BaseActivity;->onStop()V

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lcom/chery/media/view/activity/MediaActivity;->hasIntentPage:Z

    return-void
.end method

.method public updateCurrentTopSource(I)V
    .locals 2

    .line 402
    iget v0, p0, Lcom/chery/media/view/activity/MediaActivity;->currentTopSource:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc

    if-eq p1, v1, :cond_0

    move p1, v0

    .line 413
    :cond_0
    iget v0, p0, Lcom/chery/media/view/activity/MediaActivity;->currentTopSource:I

    if-ne p1, v0, :cond_1

    return-void

    .line 416
    :cond_1
    iput p1, p0, Lcom/chery/media/view/activity/MediaActivity;->currentTopSource:I

    .line 417
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopPlaying()V

    .line 418
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopPlayingVisible()V

    .line 419
    invoke-direct {p0}, Lcom/chery/media/view/activity/MediaActivity;->updateTopCoverAnim()V

    return-void
.end method
