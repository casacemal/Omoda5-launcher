.class public Lcom/chery/media/view/activity/PictureActivity;
.super Lcom/chery/media/view/activity/BaseActivity;
.source "PictureActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-class v0, Lcom/chery/media/view/activity/PictureActivity;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/activity/PictureActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/chery/media/view/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 6

    .line 104
    sget-object v0, Lcom/chery/media/view/activity/PictureActivity;->TAG:Ljava/lang/String;

    const-string v1, "handleIntent"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    const-string v0, "PicturePageId"

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbType"

    .line 109
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    const/4 v1, -0x1

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, -0x24f4fd6f

    const/4 v5, 0x1

    if-eq v2, v4, :cond_2

    const v4, -0x23796297

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "PAGE_MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v2, "PAGE_PLAYER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v5

    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    goto :goto_2

    .line 124
    :cond_4
    invoke-virtual {p0}, Lcom/chery/media/view/activity/PictureActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/chery/media/view/fragment/PictureViewerFragment;

    if-nez p1, :cond_7

    .line 125
    invoke-static {v3, v3}, Lcom/chery/media/view/fragment/PictureViewerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/PictureViewerFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/PictureActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    .line 114
    :cond_5
    invoke-static {p1}, Lcom/chery/media/model/business/MediaDef;->getPageUsbType(Ljava/lang/String;)I

    move-result p1

    .line 115
    invoke-virtual {p0}, Lcom/chery/media/view/activity/PictureActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/chery/media/view/fragment/PictureMainFragment;

    if-eqz v0, :cond_6

    .line 116
    invoke-virtual {p0}, Lcom/chery/media/view/activity/PictureActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/chery/media/view/fragment/PictureMainFragment;

    .line 117
    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/PictureMainFragment;->setCurrentViewUsbType(I)V

    goto :goto_2

    .line 120
    :cond_6
    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureMainFragment;->newInstance(I)Lcom/chery/media/view/fragment/PictureMainFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/PictureActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method protected getContainerId()I
    .locals 0

    const p0, 0x7f08013c

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lcom/chery/media/view/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isRudderRight()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0b0022

    .line 37
    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/PictureActivity;->setContentView(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0b0021

    .line 40
    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/PictureActivity;->setContentView(I)V

    .line 43
    :goto_0
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/chery/media/viewmodel/PictureViewModel;

    iput-object p1, p0, Lcom/chery/media/view/activity/PictureActivity;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    .line 44
    invoke-virtual {p1}, Lcom/chery/media/viewmodel/PictureViewModel;->getCurrentUsbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/activity/PictureActivity$1;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/PictureActivity$1;-><init>(Lcom/chery/media/view/activity/PictureActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 55
    invoke-virtual {p0}, Lcom/chery/media/view/activity/PictureActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 56
    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureMainFragment;->newInstance(I)Lcom/chery/media/view/fragment/PictureMainFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/PictureActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/chery/media/view/activity/PictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chery/media/view/activity/PictureActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCurrentFragmentChanged(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Lcom/chery/media/view/activity/BaseActivity;->onCurrentFragmentChanged(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 138
    instance-of p1, p3, Lcom/chery/media/view/fragment/PictureMainFragment;

    if-eqz p1, :cond_0

    const-string p1, "PAGE_MAIN"

    goto :goto_0

    .line 141
    :cond_0
    instance-of p1, p3, Lcom/chery/media/view/fragment/PictureViewerFragment;

    if-eqz p1, :cond_1

    const-string p1, "PAGE_PLAYER"

    goto :goto_0

    :cond_1
    const-string p1, "PAGE_NONE"

    .line 144
    :goto_0
    sget-object p2, Lcom/chery/media/view/activity/PictureActivity;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "post page "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/chery/media/view/activity/PictureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "PicturePageId"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    instance-of p0, p3, Lcom/chery/media/view/fragment/PictureViewerFragment;

    if-eqz p0, :cond_2

    .line 148
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/MediaBusiness;->updateFullscreenState(Z)V

    goto :goto_1

    .line 151
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/MediaBusiness;->updateFullscreenState(Z)V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 87
    invoke-super {p0}, Lcom/chery/media/view/activity/BaseActivity;->onDestroy()V

    .line 88
    sget-object v0, Lcom/chery/media/view/activity/PictureActivity;->TAG:Ljava/lang/String;

    const-string v1, "post page PAGE_NONE"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/chery/media/view/activity/PictureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "PicturePageId"

    const-string v1, "PAGE_NONE"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/chery/media/view/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/chery/media/view/activity/PictureActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 64
    invoke-super {p0}, Lcom/chery/media/view/activity/BaseActivity;->onResume()V

    .line 66
    invoke-static {p0}, Lcom/avn/tools/activity/ActivityUtils;->getTopActivityComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/chery/media/view/activity/PictureActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    :cond_0
    sget-object v3, Lcom/chery/media/view/activity/PictureActivity;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 71
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lcom/chery/media/view/activity/PictureActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    .line 72
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v0

    const-string p0, "package(%s) not expect(%s) or activity(%s) not expect(%s)"

    .line 70
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/chery/media/view/activity/PictureActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;

    if-eqz p0, :cond_2

    .line 78
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/MediaBusiness;->updateFullscreenState(Z)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/chery/media/model/business/MediaBusiness;->updateFullscreenState(Z)V

    :goto_0
    return-void
.end method
