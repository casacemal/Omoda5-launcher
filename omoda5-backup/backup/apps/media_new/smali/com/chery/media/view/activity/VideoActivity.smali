.class public Lcom/chery/media/view/activity/VideoActivity;
.super Lcom/chery/media/view/activity/BaseActivity;
.source "VideoActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-class v0, Lcom/chery/media/view/activity/VideoActivity;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/activity/VideoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/chery/media/view/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 4

    .line 60
    sget-object v0, Lcom/chery/media/view/activity/VideoActivity;->TAG:Ljava/lang/String;

    const-string v1, "handleIntent"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    const-string v0, "VideoPageId"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "UsbType"

    .line 65
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 p1, -0x1

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x23796297

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "PAGE_MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    .line 70
    :cond_3
    invoke-static {v1}, Lcom/chery/media/model/business/MediaDef;->getPageUsbType(Ljava/lang/String;)I

    move-result p1

    .line 71
    invoke-virtual {p0}, Lcom/chery/media/view/activity/VideoActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/chery/media/view/fragment/VideoMainFragment;

    if-eqz v0, :cond_4

    .line 72
    invoke-virtual {p0}, Lcom/chery/media/view/activity/VideoActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/chery/media/view/fragment/VideoMainFragment;

    .line 73
    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->setCurrentViewUsbType(I)V

    goto :goto_1

    .line 76
    :cond_4
    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->newInstance(I)Lcom/chery/media/view/fragment/VideoMainFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/VideoActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method protected getContainerId()I
    .locals 0

    const p0, 0x7f0801f1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/chery/media/view/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isRudderRight()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0b0025

    .line 35
    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/VideoActivity;->setContentView(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0b0023

    .line 38
    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/VideoActivity;->setContentView(I)V

    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/chery/media/view/activity/VideoActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 42
    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->newInstance(I)Lcom/chery/media/view/fragment/VideoMainFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/VideoActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/chery/media/view/activity/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chery/media/view/activity/VideoActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/chery/media/view/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/chery/media/view/activity/VideoActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method
