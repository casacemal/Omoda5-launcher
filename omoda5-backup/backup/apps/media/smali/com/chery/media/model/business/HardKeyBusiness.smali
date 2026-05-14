.class public Lcom/chery/media/model/business/HardKeyBusiness;
.super Ljava/lang/Object;
.source "HardKeyBusiness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/model/business/HardKeyBusiness$HardKeyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/chery/media/model/business/HardKeyBusiness;


# instance fields
.field private context:Landroid/content/Context;

.field private hardKeyListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/HardKeyBusiness$HardKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field private longPressedKeyCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-class v0, Lcom/chery/media/model/business/HardKeyBusiness;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/business/HardKeyBusiness;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/chery/media/model/business/HardKeyBusiness;->longPressedKeyCode:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/HardKeyBusiness;->hardKeyListenerList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/model/business/HardKeyBusiness;Landroid/content/Intent;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/HardKeyBusiness;->onHardKey(Landroid/content/Intent;)V

    return-void
.end method

.method private checkChangeSourceView(Landroid/content/Context;I)V
    .locals 11

    .line 406
    sget-object v0, Lcom/chery/media/model/business/HardKeyBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkChangeSourceView source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {p1}, Lcom/avn/tools/activity/ActivityUtils;->getTopActivityComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 408
    sget-object v1, Lcom/chery/media/model/business/HardKeyBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkChangeSourceView ComponentName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-static {}, Lcom/chery/media/view/activity/MediaActivity;->getInstance()Lcom/chery/media/view/activity/MediaActivity;

    move-result-object v1

    .line 413
    sget-object v2, Lcom/chery/media/model/business/HardKeyBusiness;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkChangeSourceView mediaActivity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 415
    sget-object v2, Lcom/chery/media/model/business/HardKeyBusiness;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkChangeSourceView mediaActivity.getCurrentFragment:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "com.yfve.car.carplay"

    const-string v5, "com.yfve.car.androidauto"

    const-string v6, "com.chery.media.view.activity.VideoPlayerActivity"

    const-string v7, "com.chery.media.view.activity.VideoActivity"

    const-string v8, "com.chery.media"

    if-eq p2, v2, :cond_14

    const/4 v9, 0x2

    if-eq p2, v9, :cond_14

    const/4 v10, 0x3

    if-eq p2, v10, :cond_11

    const/4 v10, 0x5

    if-eq p2, v10, :cond_e

    const/4 v10, 0x6

    if-eq p2, v10, :cond_b

    const/16 v10, 0xc

    if-eq p2, v10, :cond_8

    const/16 p0, 0x32

    const-string p1, "com.chery.media.view.activity.MediaActivity"

    if-eq p2, p0, :cond_5

    const/16 p0, 0x46

    if-eq p2, p0, :cond_2

    goto/16 :goto_0

    .line 547
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/carplay/CarplayModel;->isVideoStarted()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 548
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/MediaBusiness;->getAAModel()Lcom/chery/androidauto/AAModel;

    move-result-object p0

    invoke-virtual {p0, v9}, Lcom/chery/androidauto/AAModel;->switchAAMediaSource(I)V

    goto/16 :goto_0

    .line 550
    :cond_3
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 551
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 552
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 553
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 554
    :cond_4
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/MediaBusiness;->getAAModel()Lcom/chery/androidauto/AAModel;

    move-result-object p0

    invoke-virtual {p0, v9}, Lcom/chery/androidauto/AAModel;->switchAAMediaSource(I)V

    goto/16 :goto_0

    .line 535
    :cond_5
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 536
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/chery/carplay/CarplayModel;->requestVideoResource(Z)V

    goto/16 :goto_0

    .line 538
    :cond_6
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 539
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 540
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 541
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 542
    :cond_7
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/chery/carplay/CarplayModel;->requestVideoResource(Z)V

    goto/16 :goto_0

    .line 512
    :cond_8
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 513
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/carplay/CarplayModel;->isVideoStarted()Z

    move-result v2

    if-nez v2, :cond_9

    .line 514
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 515
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 516
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 517
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 518
    :cond_9
    new-instance v4, Lcom/chery/common/PageManager;

    invoke-direct {v4, p1}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v5, "com.chery.media"

    const-string v6, "com.chery.media.view.activity.MediaActivity"

    const-string v7, "com.chery.media.ACTION_OPEN"

    const-string v8, "MediaPageId"

    const-string v9, "PAGE_LOCAL_MUSIC_PLAYER"

    invoke-virtual/range {v4 .. v9}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/chery/carplay/CarplayModel;->requestVideoResource(Z)V

    :cond_a
    if-eqz v1, :cond_17

    .line 526
    new-instance p1, Lcom/chery/media/model/business/HardKeyBusiness$6;

    invoke-direct {p1, p0, v1, p2}, Lcom/chery/media/model/business/HardKeyBusiness$6;-><init>(Lcom/chery/media/model/business/HardKeyBusiness;Lcom/chery/media/view/activity/MediaActivity;I)V

    invoke-virtual {v1, p1}, Lcom/chery/media/view/activity/MediaActivity;->addRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 466
    :cond_b
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 467
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/carplay/CarplayModel;->isVideoStarted()Z

    move-result v2

    if-nez v2, :cond_c

    .line 468
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 469
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 470
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 471
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 472
    :cond_c
    new-instance v4, Lcom/chery/common/PageManager;

    invoke-direct {v4, p1}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v5, "com.chery.media"

    const-string v6, "com.chery.media.view.activity.MediaActivity"

    const-string v7, "com.chery.media.ACTION_OPEN"

    const-string v8, "MediaPageId"

    const-string v9, "PAGE_USB_MUSIC_PLAYER"

    invoke-virtual/range {v4 .. v9}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/chery/carplay/CarplayModel;->requestVideoResource(Z)V

    :cond_d
    if-eqz v1, :cond_17

    .line 480
    new-instance p1, Lcom/chery/media/model/business/HardKeyBusiness$4;

    invoke-direct {p1, p0, v1, p2}, Lcom/chery/media/model/business/HardKeyBusiness$4;-><init>(Lcom/chery/media/model/business/HardKeyBusiness;Lcom/chery/media/view/activity/MediaActivity;I)V

    invoke-virtual {v1, p1}, Lcom/chery/media/view/activity/MediaActivity;->addRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 489
    :cond_e
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 490
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/carplay/CarplayModel;->isVideoStarted()Z

    move-result v2

    if-nez v2, :cond_f

    .line 491
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 492
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 493
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 494
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 495
    :cond_f
    new-instance v4, Lcom/chery/common/PageManager;

    invoke-direct {v4, p1}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v5, "com.chery.media"

    const-string v6, "com.chery.media.view.activity.MediaActivity"

    const-string v7, "com.chery.media.ACTION_OPEN"

    const-string v8, "MediaPageId"

    const-string v9, "PAGE_BT_MUSIC_PLAYER"

    invoke-virtual/range {v4 .. v9}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/chery/carplay/CarplayModel;->requestVideoResource(Z)V

    :cond_10
    if-eqz v1, :cond_17

    .line 503
    new-instance p1, Lcom/chery/media/model/business/HardKeyBusiness$5;

    invoke-direct {p1, p0, v1, p2}, Lcom/chery/media/model/business/HardKeyBusiness$5;-><init>(Lcom/chery/media/model/business/HardKeyBusiness;Lcom/chery/media/view/activity/MediaActivity;I)V

    invoke-virtual {v1, p1}, Lcom/chery/media/view/activity/MediaActivity;->addRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 419
    :cond_11
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 420
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/carplay/CarplayModel;->isVideoStarted()Z

    move-result v2

    if-nez v2, :cond_12

    .line 421
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 422
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 423
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 424
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 425
    :cond_12
    new-instance v4, Lcom/chery/common/PageManager;

    invoke-direct {v4, p1}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v5, "com.chery.media"

    const-string v6, "com.chery.media.view.activity.MediaActivity"

    const-string v7, "com.chery.media.ACTION_OPEN"

    const-string v8, "MediaPageId"

    const-string v9, "PAGE_DAB_PLAYER"

    invoke-virtual/range {v4 .. v9}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/chery/carplay/CarplayModel;->requestVideoResource(Z)V

    :cond_13
    if-eqz v1, :cond_17

    .line 433
    new-instance p1, Lcom/chery/media/model/business/HardKeyBusiness$2;

    invoke-direct {p1, p0, v1, p2}, Lcom/chery/media/model/business/HardKeyBusiness$2;-><init>(Lcom/chery/media/model/business/HardKeyBusiness;Lcom/chery/media/view/activity/MediaActivity;I)V

    invoke-virtual {v1, p1}, Lcom/chery/media/view/activity/MediaActivity;->addRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 443
    :cond_14
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 444
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/carplay/CarplayModel;->isVideoStarted()Z

    move-result v2

    if-nez v2, :cond_15

    .line 445
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 446
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 447
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 448
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 449
    :cond_15
    new-instance v4, Lcom/chery/common/PageManager;

    invoke-direct {v4, p1}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v5, "com.chery.media"

    const-string v6, "com.chery.media.view.activity.MediaActivity"

    const-string v7, "com.chery.media.ACTION_OPEN"

    const-string v8, "MediaPageId"

    const-string v9, "PAGE_RADIO_PLAYER"

    invoke-virtual/range {v4 .. v9}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/chery/carplay/CarplayModel;->requestVideoResource(Z)V

    :cond_16
    if-eqz v1, :cond_17

    .line 457
    new-instance p1, Lcom/chery/media/model/business/HardKeyBusiness$3;

    invoke-direct {p1, p0, v1, p2}, Lcom/chery/media/model/business/HardKeyBusiness$3;-><init>(Lcom/chery/media/model/business/HardKeyBusiness;Lcom/chery/media/view/activity/MediaActivity;I)V

    invoke-virtual {v1, p1}, Lcom/chery/media/view/activity/MediaActivity;->addRunnable(Ljava/lang/Runnable;)V

    :cond_17
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/chery/media/model/business/HardKeyBusiness;
    .locals 1

    .line 57
    sget-object v0, Lcom/chery/media/model/business/HardKeyBusiness;->instance:Lcom/chery/media/model/business/HardKeyBusiness;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/chery/media/model/business/HardKeyBusiness;

    invoke-direct {v0}, Lcom/chery/media/model/business/HardKeyBusiness;-><init>()V

    sput-object v0, Lcom/chery/media/model/business/HardKeyBusiness;->instance:Lcom/chery/media/model/business/HardKeyBusiness;

    .line 60
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/HardKeyBusiness;->instance:Lcom/chery/media/model/business/HardKeyBusiness;

    return-object v0
.end method

.method private isSourceValid(I)Z
    .locals 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0x32

    if-eq p1, v0, :cond_2

    const/16 v0, 0x46

    if-eq p1, v0, :cond_0

    return v1

    .line 399
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/MediaBusiness;->getAAModel()Lcom/chery/androidauto/AAModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/androidauto/AAModel;->getSessionState()I

    move-result p1

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    return p0

    .line 397
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/carplay/CarplayModel;->isCPStarted()Z

    move-result p0

    return p0

    .line 395
    :cond_3
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->getLocalMusics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p0, p1

    return p0

    .line 391
    :cond_4
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v0

    invoke-static {p1}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object p1

    iget p1, p1, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->musicsCount:I

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    move p0, v1

    :goto_1
    return p0

    .line 393
    :cond_6
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->getBtMusicState()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :cond_7
    return p0
.end method

.method private onHardKey(Landroid/content/Intent;)V
    .locals 11

    .line 80
    sget-object v0, Lcom/chery/media/model/business/HardKeyBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHardKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.extra.hardkey.keycode"

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.intent.extra.hardkey.down"

    .line 82
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "android.intent.extra.hardkey.longpress"

    .line 83
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 84
    sget-object v3, Lcom/chery/media/model/business/HardKeyBusiness;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-string v6, "keyCode:%s keyDown:%s longPress:%s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/chery/media/util/PowerWakeLockUse;->getInstance()Lcom/chery/media/util/PowerWakeLockUse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/media/util/PowerWakeLockUse;->getPowerWakeLock()Lcom/chery/power/PowerWakeLock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/power/PowerWakeLock;->isScreenLock()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    sget-object p0, Lcom/chery/media/model/business/HardKeyBusiness;->TAG:Ljava/lang/String;

    const-string p1, "screen is lock!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v3, 0x57

    const/16 v5, 0x10

    const/16 v6, 0xc

    const/4 v9, 0x6

    const/4 v10, 0x5

    if-eq v0, v3, :cond_15

    const/16 v3, 0x58

    if-eq v0, v3, :cond_2

    const/16 v3, 0x121

    if-eq v0, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    if-nez v2, :cond_28

    .line 287
    iget v3, p0, Lcom/chery/media/model/business/HardKeyBusiness;->longPressedKeyCode:I

    if-nez v3, :cond_28

    .line 288
    iget-object v3, p0, Lcom/chery/media/model/business/HardKeyBusiness;->context:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/chery/media/model/business/HardKeyBusiness;->onHardKeySrc(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 91
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/media/model/business/MediaBusiness;->getCurrentAudioSource()I

    move-result v3

    if-eq v3, v7, :cond_12

    if-eq v3, v8, :cond_12

    if-eq v3, v4, :cond_f

    if-eq v3, v10, :cond_c

    if-eq v3, v9, :cond_9

    if-eq v3, v6, :cond_6

    if-eq v3, v5, :cond_3

    goto/16 :goto_0

    :cond_3
    if-eqz v2, :cond_4

    if-eqz p1, :cond_28

    .line 172
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v3

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentUsb()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/chery/media/model/business/VideoBusiness;->fastBackward(I)V

    goto/16 :goto_0

    .line 176
    :cond_4
    iget v3, p0, Lcom/chery/media/model/business/HardKeyBusiness;->longPressedKeyCode:I

    if-ne v3, v0, :cond_5

    .line 177
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v3

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentUsb()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/chery/media/model/business/VideoBusiness;->stopFastPlay(I)V

    goto/16 :goto_0

    .line 180
    :cond_5
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v3

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentUsb()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/chery/media/model/business/VideoBusiness;->playPrior(I)V

    goto/16 :goto_0

    :cond_6
    if-eqz v2, :cond_7

    if-eqz p1, :cond_28

    .line 157
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/media/model/business/LocalMusicBusiness;->fastBackward()V

    goto/16 :goto_0

    .line 161
    :cond_7
    iget v3, p0, Lcom/chery/media/model/business/HardKeyBusiness;->longPressedKeyCode:I

    if-ne v3, v0, :cond_8

    .line 162
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/media/model/business/LocalMusicBusiness;->stopFastPlay()V

    goto/16 :goto_0

    .line 165
    :cond_8
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/media/model/business/LocalMusicBusiness;->playPrior()V

    goto/16 :goto_0

    :cond_9
    if-eqz v2, :cond_a

    if-eqz p1, :cond_28

    .line 142
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v4

    invoke-static {v3}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/chery/media/model/business/UsbMusicBusiness;->fastBackward(I)V

    goto/16 :goto_0

    .line 146
    :cond_a
    iget v4, p0, Lcom/chery/media/model/business/HardKeyBusiness;->longPressedKeyCode:I

    if-ne v4, v0, :cond_b

    .line 147
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v4

    invoke-static {v3}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/chery/media/model/business/UsbMusicBusiness;->stopFastPlay(I)V

    goto/16 :goto_0

    .line 150
    :cond_b
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v4

    invoke-static {v3}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/chery/media/model/business/UsbMusicBusiness;->playPrior(I)V

    goto/16 :goto_0

    :cond_c
    if-eqz v2, :cond_d

    goto/16 :goto_0

    .line 131
    :cond_d
    iget v3, p0, Lcom/chery/media/model/business/HardKeyBusiness;->longPressedKeyCode:I

    if-ne v3, v0, :cond_e

    goto/16 :goto_0

    .line 135
    :cond_e
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/media/model/business/BtMusicBusiness;->previous()V

    goto/16 :goto_0

    :cond_f
    if-eqz v2, :cond_10

    goto/16 :goto_0

    .line 100
    :cond_10
    iget v3, p0, Lcom/chery/media/model/business/HardKeyBusiness;->longPressedKeyCode:I

    if-ne v3, v0, :cond_11

    goto/16 :goto_0

    .line 104
    :cond_11
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/media/model/business/DabBusiness;->playPrevious()V

    goto/16 :goto_0

    :cond_12
    if-eqz v2, :cond_13

    if-eqz p1, :cond_28

    .line 112
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/chery/media/model/business/RadioBusiness;->tuneByList(I)V

    goto/16 :goto_0

    .line 116
    :cond_13
    iget v3, p0, Lcom/chery/media/model/business/HardKeyBusiness;->longPressedKeyCode:I

    if-ne v3, v0, :cond_14

    goto/16 :goto_0

    .line 120
    :cond_14
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Lcom/chery/media/model/business/RadioBusiness;->seek(IZ)V

    goto/16 :goto_0

    .line 189
    :cond_15
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/media/model/business/MediaBusiness;->getCurrentAudioSource()I

    move-result v3

    if-eq v3, v7, :cond_25

    if-eq v3, v8, :cond_25

    if-eq v3, v4, :cond_22

    if-eq v3, v10, :cond_1f

    if-eq v3, v9, :cond_1c

    if-eq v3, v6, :cond_19

    if-eq v3, v5, :cond_16

    goto/16 :goto_0

    :cond_16
    if-eqz v2, :cond_17

    if-eqz p1, :cond_28

    .line 270
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v3

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentUsb()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/chery/media/model/business/VideoBusiness;->fastForward(I)V

    goto/16 :goto_0

    .line 274
    :cond_17
    iget v3, p0, Lcom/chery/media/model/business/HardKeyBusiness;->longPressedKeyCode:I

    if-ne v3, v0, :cond_18

    .line 275
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v3

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentUsb()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/chery/media/model/business/VideoBusiness;->stopFastPlay(I)V

    goto/16 :goto_0

    .line 278
    :cond_18
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v3

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentUsb()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/chery/media/model/business/VideoBusiness;->playNext(I)V

    goto/16 :goto_0

    :cond_19
    if-eqz v2, :cond_1a

    if-eqz p1, :cond_28

    .line 255
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/media/model/business/LocalMusicBusiness;->fastForward()V

    goto/16 :goto_0

    .line 259
    :cond_1a
    iget v3, p0, Lcom/chery/media/model/business/HardKeyBusiness;->longPressedKeyCode:I

    if-ne v3, v0, :cond_1b

    .line 260
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/media/model/business/LocalMusicBusiness;->stopFastPlay()V

    goto/16 :goto_0

    .line 263
    :cond_1b
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/media/model/business/LocalMusicBusiness;->playNext()V

    goto/16 :goto_0

    :cond_1c
    if-eqz v2, :cond_1d

    if-eqz p1, :cond_28

    .line 240
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v4

    invoke-static {v3}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/chery/media/model/business/UsbMusicBusiness;->fastForward(I)V

    goto :goto_0

    .line 244
    :cond_1d
    iget v4, p0, Lcom/chery/media/model/business/HardKeyBusiness;->longPressedKeyCode:I

    if-ne v4, v0, :cond_1e

    .line 245
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v4

    invoke-static {v3}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/chery/media/model/business/UsbMusicBusiness;->stopFastPlay(I)V

    goto :goto_0

    .line 248
    :cond_1e
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v4

    invoke-static {v3}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/chery/media/model/business/UsbMusicBusiness;->playNext(I)V

    goto :goto_0

    :cond_1f
    if-eqz v2, :cond_20

    goto :goto_0

    .line 229
    :cond_20
    iget v3, p0, Lcom/chery/media/model/business/HardKeyBusiness;->longPressedKeyCode:I

    if-ne v3, v0, :cond_21

    goto :goto_0

    .line 233
    :cond_21
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/media/model/business/BtMusicBusiness;->next()V

    goto :goto_0

    :cond_22
    if-eqz v2, :cond_23

    goto :goto_0

    .line 198
    :cond_23
    iget v3, p0, Lcom/chery/media/model/business/HardKeyBusiness;->longPressedKeyCode:I

    if-ne v3, v0, :cond_24

    goto :goto_0

    .line 202
    :cond_24
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/media/model/business/DabBusiness;->playNext()V

    goto :goto_0

    :cond_25
    if-eqz v2, :cond_26

    if-eqz p1, :cond_28

    .line 210
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/chery/media/model/business/RadioBusiness;->tuneByList(I)V

    goto :goto_0

    .line 214
    :cond_26
    iget v3, p0, Lcom/chery/media/model/business/HardKeyBusiness;->longPressedKeyCode:I

    if-ne v3, v0, :cond_27

    goto :goto_0

    .line 218
    :cond_27
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v3

    invoke-virtual {v3, v1, v7}, Lcom/chery/media/model/business/RadioBusiness;->seek(IZ)V

    :cond_28
    :goto_0
    if-eqz v2, :cond_29

    if-eqz p1, :cond_29

    move v1, v0

    .line 294
    :cond_29
    iput v1, p0, Lcom/chery/media/model/business/HardKeyBusiness;->longPressedKeyCode:I

    .line 296
    iget-object p0, p0, Lcom/chery/media/model/business/HardKeyBusiness;->hardKeyListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/HardKeyBusiness$HardKeyListener;

    .line 297
    invoke-interface {v1, v0, v2, p1}, Lcom/chery/media/model/business/HardKeyBusiness$HardKeyListener;->onHardKey(IZZ)V

    goto :goto_1

    :cond_2a
    return-void
.end method

.method private onHardKeySrc(Landroid/content/Context;)V
    .locals 7

    .line 302
    sget-object v0, Lcom/chery/media/model/business/HardKeyBusiness;->TAG:Ljava/lang/String;

    const-string v1, "onHardKeySrc"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/MediaBusiness;->getCurrentAudioSource()I

    move-result v0

    .line 304
    sget-object v1, Lcom/chery/media/model/business/HardKeyBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHardKeySrc currentSource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_b

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_b

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_b

    const/16 v1, 0x33

    if-eq v0, v1, :cond_b

    const/16 v1, 0x35

    if-eq v0, v1, :cond_b

    const/16 v1, 0x48

    if-eq v0, v1, :cond_b

    const/16 v1, 0x49

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x6

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_4

    if-eq v0, v5, :cond_3

    goto/16 :goto_0

    .line 319
    :cond_1
    invoke-direct {p0, v5}, Lcom/chery/media/model/business/HardKeyBusiness;->isSourceValid(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 320
    sget-object v0, Lcom/chery/media/model/business/HardKeyBusiness;->TAG:Ljava/lang/String;

    const-string v1, "changeSource:6"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v0

    invoke-static {v5}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->requestAudioFocus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v0

    invoke-static {v5}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    .line 324
    :cond_2
    invoke-direct {p0, p1, v5}, Lcom/chery/media/model/business/HardKeyBusiness;->checkChangeSourceView(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 328
    :cond_3
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/HardKeyBusiness;->isSourceValid(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 329
    sget-object v0, Lcom/chery/media/model/business/HardKeyBusiness;->TAG:Ljava/lang/String;

    const-string v2, "changeSource:5"

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/chery/media/model/business/BtMusicBusiness;->setPlayOnCanPlay(Z)V

    .line 331
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/BtMusicBusiness;->requestBtMusicAudioFocus()Z

    .line 334
    invoke-direct {p0, p1, v1}, Lcom/chery/media/model/business/HardKeyBusiness;->checkChangeSourceView(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_4
    const/16 v1, 0xc

    .line 338
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/HardKeyBusiness;->isSourceValid(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 339
    sget-object v0, Lcom/chery/media/model/business/HardKeyBusiness;->TAG:Ljava/lang/String;

    const-string v2, "changeSource:12"

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getPlaylist()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 341
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->changePlaylist(I)V

    .line 342
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->changeCurrentPlaying(I)V

    .line 344
    :cond_5
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->requestAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 345
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    .line 347
    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/chery/media/model/business/HardKeyBusiness;->checkChangeSourceView(Landroid/content/Context;I)V

    goto :goto_1

    :cond_7
    :goto_0
    if-eq v0, v3, :cond_a

    if-eq v0, v4, :cond_a

    if-eq v0, v2, :cond_a

    .line 368
    sget-object v0, Lcom/chery/media/model/business/HardKeyBusiness;->TAG:Ljava/lang/String;

    const-string v1, "changeSource:Radio"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/MediaBusiness;->isDabLastPlayed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 370
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/DabBusiness;->requestAudioFocus()Z

    .line 371
    invoke-direct {p0, p1, v2}, Lcom/chery/media/model/business/HardKeyBusiness;->checkChangeSourceView(Landroid/content/Context;I)V

    goto :goto_1

    .line 374
    :cond_8
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 375
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    .line 377
    :cond_9
    invoke-direct {p0, p1, v3}, Lcom/chery/media/model/business/HardKeyBusiness;->checkChangeSourceView(Landroid/content/Context;I)V

    :cond_a
    :goto_1
    return-void

    .line 312
    :cond_b
    :goto_2
    sget-object p0, Lcom/chery/media/model/business/HardKeyBusiness;->TAG:Ljava/lang/String;

    const-string p1, "ignore src key"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addHardKeyListener(Lcom/chery/media/model/business/HardKeyBusiness$HardKeyListener;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/chery/media/model/business/HardKeyBusiness;->hardKeyListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object p0, p0, Lcom/chery/media/model/business/HardKeyBusiness;->hardKeyListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 64
    iput-object p1, p0, Lcom/chery/media/model/business/HardKeyBusiness;->context:Landroid/content/Context;

    .line 66
    new-instance p1, Lcom/chery/media/model/business/HardKeyBusiness$1;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/HardKeyBusiness$1;-><init>(Lcom/chery/media/model/business/HardKeyBusiness;)V

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.saic.keyevent.hardkey.report"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object p0, p0, Lcom/chery/media/model/business/HardKeyBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public removeHardKeyListener(Lcom/chery/media/model/business/HardKeyBusiness$HardKeyListener;)V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/HardKeyBusiness;->hardKeyListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
