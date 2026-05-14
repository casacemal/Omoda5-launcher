.class public Lcom/chery/media/model/business/VrMediaBusiness;
.super Ljava/lang/Object;
.source "VrMediaBusiness.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/chery/media/model/business/VrMediaBusiness;


# instance fields
.field private context:Landroid/content/Context;

.field private currentMediaSource:I

.field private handler:Landroid/os/Handler;

.field private isInit:Z

.field private vrMediaManager:Lcom/chery/libvr/manager/funtionmanager/VrMediaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    const-class v0, Lcom/chery/media/model/business/VrMediaBusiness;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->isInit:Z

    .line 62
    iput v0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->currentMediaSource:I

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/model/business/VrMediaBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->onVrRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/chery/media/model/business/VrMediaBusiness;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/model/business/VrMediaBusiness;Ljava/lang/String;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/VrMediaBusiness;->uploadSourceAvailable(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/media/model/business/VrMediaBusiness;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->uploadMusicList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/model/business/VrMediaBusiness;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->currentMediaSource:I

    return p0
.end method

.method static synthetic access$500(Lcom/chery/media/model/business/VrMediaBusiness;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->uploadSourcePlayingInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/media/model/business/VrMediaBusiness;I)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->getUsbTypeSource(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/chery/media/model/business/VrMediaBusiness;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->setCurrentMediaSource(I)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/chery/media/model/business/VrMediaBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkBtMusicPage()V
    .locals 7

    .line 1175
    iget-object v0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/avn/tools/activity/ActivityUtils;->getTopActivityComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1179
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.yfve.car.carplay"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1180
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/carplay/CarplayModel;->isVideoStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1181
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.yfve.car.androidauto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1182
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.chery.media"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1183
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.chery.media.view.activity.VideoActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1184
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.chery.media.view.activity.VideoPlayerActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1185
    :cond_1
    new-instance v1, Lcom/chery/common/PageManager;

    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->context:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v2, "com.chery.media"

    const-string v3, "com.chery.media.view.activity.MediaActivity"

    const-string v4, "com.chery.media.ACTION_OPEN"

    const-string v5, "MediaPageId"

    const-string v6, "PAGE_BT_MUSIC_PLAYER"

    invoke-virtual/range {v1 .. v6}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chery/carplay/CarplayModel;->requestVideoResource(Z)V

    .line 1192
    :cond_2
    invoke-static {}, Lcom/chery/media/view/activity/MediaActivity;->getInstance()Lcom/chery/media/view/activity/MediaActivity;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1193
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1194
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;

    if-nez v0, :cond_3

    .line 1195
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/chery/media/view/fragment/MediaMainFragment;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 1196
    invoke-static {v0, v0}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/BtMusicPlayerFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chery/media/view/activity/MediaActivity;->replaceFragment(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method private checkLocalMusicPage()V
    .locals 7

    .line 1147
    iget-object v0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/avn/tools/activity/ActivityUtils;->getTopActivityComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1151
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.yfve.car.carplay"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1152
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/carplay/CarplayModel;->isVideoStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1153
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.yfve.car.androidauto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1154
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.chery.media"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1155
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.chery.media.view.activity.VideoActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1156
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.chery.media.view.activity.VideoPlayerActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1157
    :cond_1
    new-instance v1, Lcom/chery/common/PageManager;

    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->context:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v2, "com.chery.media"

    const-string v3, "com.chery.media.view.activity.MediaActivity"

    const-string v4, "com.chery.media.ACTION_OPEN"

    const-string v5, "MediaPageId"

    const-string v6, "PAGE_LOCAL_MUSIC_PLAYER"

    invoke-virtual/range {v1 .. v6}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chery/carplay/CarplayModel;->requestVideoResource(Z)V

    .line 1164
    :cond_2
    invoke-static {}, Lcom/chery/media/view/activity/MediaActivity;->getInstance()Lcom/chery/media/view/activity/MediaActivity;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1165
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1166
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    if-nez v0, :cond_3

    .line 1167
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/chery/media/view/fragment/LocalMusicListFragment;

    if-nez v0, :cond_3

    .line 1168
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/chery/media/view/fragment/MediaMainFragment;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 1169
    invoke-static {v0, v0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chery/media/view/activity/MediaActivity;->replaceFragment(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method private checkUsbMusicPage()V
    .locals 7

    .line 1119
    iget-object v0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/avn/tools/activity/ActivityUtils;->getTopActivityComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1123
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.yfve.car.carplay"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1124
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/carplay/CarplayModel;->isVideoStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1125
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.yfve.car.androidauto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1126
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.chery.media"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1127
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.chery.media.view.activity.VideoActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1128
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.chery.media.view.activity.VideoPlayerActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1129
    :cond_1
    new-instance v1, Lcom/chery/common/PageManager;

    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->context:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v2, "com.chery.media"

    const-string v3, "com.chery.media.view.activity.MediaActivity"

    const-string v4, "com.chery.media.ACTION_OPEN"

    const-string v5, "MediaPageId"

    const-string v6, "PAGE_USB_MUSIC_PLAYER"

    invoke-virtual/range {v1 .. v6}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chery/carplay/CarplayModel;->requestVideoResource(Z)V

    .line 1136
    :cond_2
    invoke-static {}, Lcom/chery/media/view/activity/MediaActivity;->getInstance()Lcom/chery/media/view/activity/MediaActivity;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1137
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1138
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    if-nez v0, :cond_3

    .line 1139
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/chery/media/view/fragment/UsbMusicListFragment;

    if-nez v0, :cond_3

    .line 1140
    invoke-virtual {p0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/chery/media/view/fragment/MediaMainFragment;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 1141
    invoke-static {v0, v0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chery/media/view/activity/MediaActivity;->replaceFragment(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method private duringNaviActivity()Z
    .locals 1

    .line 586
    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/avn/tools/activity/ActivityUtils;->getTopActivityComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 590
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.astrob.turbodog"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/chery/media/model/business/VrMediaBusiness;
    .locals 1

    .line 65
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->instance:Lcom/chery/media/model/business/VrMediaBusiness;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-direct {v0}, Lcom/chery/media/model/business/VrMediaBusiness;-><init>()V

    sput-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->instance:Lcom/chery/media/model/business/VrMediaBusiness;

    .line 68
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->instance:Lcom/chery/media/model/business/VrMediaBusiness;

    return-object v0
.end method

.method private getSourceUsbType(Ljava/lang/String;)I
    .locals 3

    .line 1099
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "USB1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :pswitch_1
    const-string p0, "USB0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    if-eq p0, v2, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x27e34c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUsbTypeSource(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "USB1"

    return-object p0

    :cond_1
    const-string p0, "USB0"

    return-object p0
.end method

.method private handleAddCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 798
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    const-string v1, "handleAddCollectResponse"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget v0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->currentMediaSource:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 801
    sget-object p0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    const-string p1, "current media source not usb music"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 804
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v0

    iget v1, p0, Lcom/chery/media/model/business/VrMediaBusiness;->currentMediaSource:I

    invoke-static {v1}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 806
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    const-string v1, "current usb music null"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    new-instance v0, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    const-string v1, "ALL"

    .line 808
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setUser(Ljava/lang/String;)V

    .line 809
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 810
    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    const-string p2, "-1"

    .line 811
    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 813
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 817
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v1

    new-instance v2, Lcom/chery/media/model/business/VrMediaBusiness$12;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/chery/media/model/business/VrMediaBusiness$12;-><init>(Lcom/chery/media/model/business/VrMediaBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->addToLocal(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;Lcom/chery/media/model/business/LocalMusicBusiness$HandleAddResponse;)V

    return-void
.end method

.method private handleControlCollect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 739
    const-class v0, Lcom/chery/libvr/bean/action/ActionMusicCommonn;

    invoke-static {p2, v0}, Lcom/avn/tools/json/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/libvr/bean/action/ActionMusicCommonn;

    .line 740
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleControlCollect actionMusicCommonn -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 742
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x37a563bb

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x258334

    if-eq v0, v1, :cond_1

    const v1, 0x6362ed0a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "COLLECT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v0, "PLAY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "CANCEL_COLLECT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    goto :goto_2

    .line 750
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->handleRemoveCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 747
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->handleAddCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 744
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->handlePlayCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private handleControlPlayList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    .line 702
    const-class v1, Lcom/chery/libvr/bean/action/ActionMusicCommonn;

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lcom/avn/tools/json/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/libvr/bean/action/ActionMusicCommonn;

    .line 703
    sget-object v2, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleControlPlayMode actionMusicCommonn -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v1}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 705
    invoke-virtual {v1}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getType()Ljava/lang/String;

    move-result-object v3

    .line 706
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const v7, 0x251e4a

    if-eq v4, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "OPEN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_3

    .line 708
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v7, 0x27e34c

    const/4 v8, 0x1

    if-eq v4, v7, :cond_4

    const v7, 0x453e74b

    if-eq v4, v7, :cond_3

    goto :goto_2

    :cond_3
    const-string v4, "LOCAL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v5, v6

    goto :goto_2

    :cond_4
    const-string v4, "USB0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v5, v8

    :cond_5
    :goto_2
    if-eqz v5, :cond_7

    if-eq v5, v8, :cond_6

    goto :goto_3

    .line 717
    :cond_6
    new-instance v9, Lcom/chery/common/PageManager;

    iget-object v4, v0, Lcom/chery/media/model/business/VrMediaBusiness;->context:Landroid/content/Context;

    invoke-direct {v9, v4}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v4, "MediaPageId"

    const-string v5, "UsbType"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x2

    new-array v14, v4, [Ljava/lang/String;

    const-string v4, "PAGE_USB_MUSIC_LIST"

    aput-object v4, v14, v6

    .line 721
    invoke-direct {p0, v3}, Lcom/chery/media/model/business/VrMediaBusiness;->getSourceUsbType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/chery/media/model/business/MediaDef;->getUsbTypePage(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v8

    const-string v10, "com.chery.media"

    const-string v11, "com.chery.media.view.activity.MediaActivity"

    const-string v12, "com.chery.media.ACTION_OPEN"

    .line 717
    invoke-virtual/range {v9 .. v14}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 710
    :cond_7
    new-instance v3, Lcom/chery/common/PageManager;

    iget-object v4, v0, Lcom/chery/media/model/business/VrMediaBusiness;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v4, "com.chery.media"

    const-string v5, "com.chery.media.view.activity.MediaActivity"

    const-string v6, "com.chery.media.ACTION_OPEN"

    const-string v7, "MediaPageId"

    const-string v8, "PAGE_LOCAL_MUSIC_LIST"

    invoke-virtual/range {v3 .. v8}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :goto_3
    new-instance v3, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v3}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    const-string v4, "ALL"

    .line 728
    invoke-virtual {v3, v4}, Lcom/chery/libvr/bean/action/ActionCommon;->setUser(Ljava/lang/String;)V

    .line 730
    new-instance v4, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v4}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 731
    invoke-virtual {v4, v2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v1}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setType(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v3, v4}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 735
    invoke-static {v3}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {p0, v2, v1, v3}, Lcom/chery/media/model/business/VrMediaBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleControlPlayMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 651
    const-class v0, Lcom/chery/libvr/bean/action/ActionMusicCommonn;

    invoke-static {p2, v0}, Lcom/avn/tools/json/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/libvr/bean/action/ActionMusicCommonn;

    .line 652
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleControlPlayMode actionMusicCommonn -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getType()Ljava/lang/String;

    move-result-object p2

    .line 655
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_1
    const-string v1, "CYCLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_2
    const-string v1, "SINGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "RANDOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v4

    :goto_1
    const-string v7, "LOCAL"

    const-string v8, "USB0"

    const v9, 0x453e74b

    const v10, 0x27e34c

    if-eqz v1, :cond_d

    if-eq v1, v6, :cond_d

    if-eq v1, v3, :cond_7

    if-eq v1, v2, :cond_1

    return-void

    .line 678
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq v1, v10, :cond_3

    if-eq v1, v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v4, v5

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v4, v6

    :cond_4
    :goto_2
    if-eqz v4, :cond_6

    if-eq v4, v6, :cond_5

    goto/16 :goto_5

    .line 683
    :cond_5
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/chery/media/model/business/VrMediaBusiness;->getSourceUsbType(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2, v6}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlayMode(II)V

    goto/16 :goto_5

    .line 680
    :cond_6
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/chery/media/model/business/LocalMusicBusiness;->changePlayMode(I)V

    goto/16 :goto_5

    .line 668
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq v1, v10, :cond_9

    if-eq v1, v9, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v4, v5

    goto :goto_3

    :cond_9
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v4, v6

    :cond_a
    :goto_3
    if-eqz v4, :cond_c

    if-eq v4, v6, :cond_b

    goto :goto_5

    .line 673
    :cond_b
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/chery/media/model/business/VrMediaBusiness;->getSourceUsbType(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2, v5}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlayMode(II)V

    goto :goto_5

    .line 670
    :cond_c
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/chery/media/model/business/LocalMusicBusiness;->changePlayMode(I)V

    goto :goto_5

    .line 658
    :cond_d
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq v1, v10, :cond_f

    if-eq v1, v9, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v4, v5

    goto :goto_4

    :cond_f
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v4, v6

    :cond_10
    :goto_4
    if-eqz v4, :cond_12

    if-eq v4, v6, :cond_11

    goto :goto_5

    .line 663
    :cond_11
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/chery/media/model/business/VrMediaBusiness;->getSourceUsbType(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2, v3}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlayMode(II)V

    goto :goto_5

    .line 660
    :cond_12
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/chery/media/model/business/LocalMusicBusiness;->changePlayMode(I)V

    .line 691
    :goto_5
    new-instance p2, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {p2}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    const-string v1, "ALL"

    .line 692
    invoke-virtual {p2, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setUser(Ljava/lang/String;)V

    .line 694
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 695
    invoke-virtual {v1, v0}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p2, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 698
    invoke-static {p2}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x705a273d -> :sswitch_3
        -0x6e3487b8 -> :sswitch_2
        0x3d9a0c6 -> :sswitch_1
        0x47f8f2e -> :sswitch_0
    .end sparse-switch
.end method

.method private handlePlayCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 756
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    const-string v1, "handlePlayCollectResponse"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getLocalMusics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 760
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getPlaylist()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->changePlaylist(I)V

    .line 762
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->changeCurrentPlaying(I)V

    .line 764
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    .line 765
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->checkLocalMusicPage()V

    const-string v0, "1"

    .line 766
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/chery/media/model/business/VrMediaBusiness;->responsePlayCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :cond_1
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->playOtherMusic()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "0"

    .line 770
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/chery/media/model/business/VrMediaBusiness;->responsePlayCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "-1"

    .line 773
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/chery/media/model/business/VrMediaBusiness;->responsePlayCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handlePlayMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 508
    const-class v0, Lcom/chery/libvr/bean/action/ActionMusicCommonn;

    invoke-static {p2, v0}, Lcom/avn/tools/json/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/libvr/bean/action/ActionMusicCommonn;

    .line 509
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePlayState actionMusicCommonn -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x251e4a

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x3d3e5d8

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "CLOSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v1, "OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_2

    .line 516
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->handlePlayMusicClose(Ljava/lang/String;Lcom/chery/libvr/bean/action/ActionMusicCommonn;Ljava/lang/String;)V

    goto :goto_2

    .line 513
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->handlePlayMusicOpen(Ljava/lang/String;Lcom/chery/libvr/bean/action/ActionMusicCommonn;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private handlePlayMusicClose(Ljava/lang/String;Lcom/chery/libvr/bean/action/ActionMusicCommonn;Ljava/lang/String;)V
    .locals 6

    .line 594
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    const-string v1, "handlePlayMusicClose"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getType()Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x852

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_2

    const v2, 0x27e34c

    if-eq v1, v2, :cond_1

    const v2, 0x453e74b

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "LOCAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_1

    :cond_1
    const-string v1, "USB0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_2
    const-string v1, "BT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    return-void

    .line 606
    :cond_4
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/BtMusicBusiness;->pause()V

    .line 607
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/chery/media/model/business/BtMusicBusiness;->setPlayOnCanPlay(Z)V

    goto :goto_2

    .line 602
    :cond_5
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/VrMediaBusiness;->getSourceUsbType(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/chery/media/model/business/UsbMusicBusiness;->pause(I)V

    .line 603
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/VrMediaBusiness;->getSourceUsbType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0, v5}, Lcom/chery/media/model/business/UsbMusicBusiness;->setPlayOnCanPlay(IZ)V

    goto :goto_2

    .line 598
    :cond_6
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->pause()V

    .line 599
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/chery/media/model/business/LocalMusicBusiness;->setPlayOnCanPlay(Z)V

    .line 613
    :goto_2
    invoke-static {}, Lcom/chery/media/view/activity/MediaActivity;->getInstance()Lcom/chery/media/view/activity/MediaActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 615
    invoke-virtual {v0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 616
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_8

    instance-of v2, v1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    if-nez v2, :cond_7

    instance-of v2, v1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    if-nez v2, :cond_7

    instance-of v1, v1, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;

    if-eqz v1, :cond_8

    :cond_7
    const/4 v1, 0x0

    .line 620
    invoke-static {v1, v1}, Lcom/chery/media/view/fragment/MediaMainFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/MediaMainFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    .line 624
    :cond_8
    new-instance v0, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    const-string v1, "ALL"

    .line 625
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setUser(Ljava/lang/String;)V

    .line 627
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 628
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setType(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 632
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handlePlayMusicOpen(Ljava/lang/String;Lcom/chery/libvr/bean/action/ActionMusicCommonn;Ljava/lang/String;)V
    .locals 7

    .line 524
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    const-string v1, "handlePlayMusicOpen"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getType()Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x852

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x27e34c

    if-eq v1, v2, :cond_2

    const v2, 0x453e74b

    if-eq v1, v2, :cond_1

    const v2, 0x4de1c5b

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_1
    const-string v1, "LOCAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "USB0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_1

    :cond_3
    const-string v1, "BT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "SHOW"

    if-eqz v1, :cond_a

    if-eq v1, v5, :cond_8

    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_5

    return-void

    .line 568
    :cond_5
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentUsb()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->play(I)V

    goto/16 :goto_2

    .line 554
    :cond_6
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/BtMusicBusiness;->requestBtMusicAudioFocus()Z

    .line 555
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/BtMusicBusiness;->play()V

    .line 556
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->duringNaviActivity()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 557
    new-instance v1, Lcom/chery/common/PageManager;

    iget-object v0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v2, "com.chery.media"

    const-string v3, "com.chery.media.view.activity.MediaActivity"

    const-string v4, "com.chery.media.ACTION_OPEN"

    const-string v5, "MediaPageId"

    const-string v6, "PAGE_BT_MUSIC_PLAYER"

    invoke-virtual/range {v1 .. v6}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 564
    :cond_7
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->checkBtMusicPage()V

    goto :goto_2

    .line 541
    :cond_8
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/VrMediaBusiness;->getSourceUsbType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    .line 542
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->duringNaviActivity()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 543
    new-instance v1, Lcom/chery/common/PageManager;

    iget-object v0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v2, "com.chery.media"

    const-string v3, "com.chery.media.view.activity.MediaActivity"

    const-string v4, "com.chery.media.ACTION_OPEN"

    const-string v5, "MediaPageId"

    const-string v6, "PAGE_USB_MUSIC_PLAYER"

    invoke-virtual/range {v1 .. v6}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 550
    :cond_9
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->checkUsbMusicPage()V

    goto :goto_2

    .line 528
    :cond_a
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    .line 529
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->duringNaviActivity()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 530
    new-instance v1, Lcom/chery/common/PageManager;

    iget-object v0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v2, "com.chery.media"

    const-string v3, "com.chery.media.view.activity.MediaActivity"

    const-string v4, "com.chery.media.ACTION_OPEN"

    const-string v5, "MediaPageId"

    const-string v6, "PAGE_LOCAL_MUSIC_PLAYER"

    invoke-virtual/range {v1 .. v6}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 537
    :cond_b
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->checkLocalMusicPage()V

    .line 574
    :goto_2
    new-instance v0, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    const-string v1, "ALL"

    .line 575
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setUser(Ljava/lang/String;)V

    .line 577
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 578
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setType(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 582
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handlePlaySpecificMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 907
    const-class v0, Lcom/chery/libvr/bean/action/ActionMusicPLay;

    invoke-static {p2, v0}, Lcom/avn/tools/json/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/libvr/bean/action/ActionMusicPLay;

    .line 908
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePlaySpecificMusic actionMusicPLay -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicPLay;->getSemantic()Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->getName()Ljava/lang/String;

    move-result-object v0

    .line 910
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicPLay;->getSemantic()Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->getArtist()Ljava/lang/String;

    move-result-object v1

    .line 911
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicPLay;->getSemantic()Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->getAlbum()Ljava/lang/String;

    move-result-object p2

    .line 913
    iget v2, p0, Lcom/chery/media/model/business/VrMediaBusiness;->currentMediaSource:I

    invoke-static {v2}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "1"

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    .line 915
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 916
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-gtz v3, :cond_1

    if-eq v3, v2, :cond_0

    .line 919
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 922
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 923
    invoke-direct {p0, v3, v0, v1, p2}, Lcom/chery/media/model/business/VrMediaBusiness;->playSpecificMusicOfUsb(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 924
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->checkUsbMusicPage()V

    .line 925
    invoke-direct {p0, p1, p3, v4}, Lcom/chery/media/model/business/VrMediaBusiness;->responsePlaySpecificMusicResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 929
    :cond_3
    invoke-direct {p0, v0, v1, p2}, Lcom/chery/media/model/business/VrMediaBusiness;->playSpecificMusicOfLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 930
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->checkLocalMusicPage()V

    .line 931
    invoke-direct {p0, p1, p3, v4}, Lcom/chery/media/model/business/VrMediaBusiness;->responsePlaySpecificMusicResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 936
    :cond_4
    invoke-direct {p0, v0, v1, p2}, Lcom/chery/media/model/business/VrMediaBusiness;->playSpecificMusicOfLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 937
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->checkLocalMusicPage()V

    .line 938
    invoke-direct {p0, p1, p3, v4}, Lcom/chery/media/model/business/VrMediaBusiness;->responsePlaySpecificMusicResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    if-gtz v3, :cond_7

    .line 942
    invoke-direct {p0, v3, v0, v1, p2}, Lcom/chery/media/model/business/VrMediaBusiness;->playSpecificMusicOfUsb(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 943
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->checkUsbMusicPage()V

    .line 944
    invoke-direct {p0, p1, p3, v4}, Lcom/chery/media/model/business/VrMediaBusiness;->responsePlaySpecificMusicResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 949
    :cond_7
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->playOtherMusic()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "0"

    .line 950
    invoke-direct {p0, p1, p3, p2}, Lcom/chery/media/model/business/VrMediaBusiness;->responsePlaySpecificMusicResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string p2, "-1"

    .line 953
    invoke-direct {p0, p1, p3, p2}, Lcom/chery/media/model/business/VrMediaBusiness;->responsePlaySpecificMusicResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private handlePlayState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    .line 436
    const-class v1, Lcom/chery/libvr/bean/action/ActionMusicCommonn;

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lcom/avn/tools/json/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/libvr/bean/action/ActionMusicCommonn;

    .line 437
    sget-object v2, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePlayState actionMusicCommonn -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {v1}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-virtual {v1}, Lcom/chery/libvr/bean/action/ActionMusicCommonn;->getSematic()Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/libvr/bean/action/ActionMusicCommonn$SematicBean;->getType()Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x1d465509

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v3, v4, :cond_2

    const v4, 0x2482f3

    if-eq v3, v4, :cond_1

    const v4, 0x4862dd6

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "PAUSE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    goto :goto_1

    :cond_1
    const-string v3, "NEXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v7

    goto :goto_1

    :cond_2
    const-string v3, "PREVIOUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v8

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v5

    :goto_1
    const-string v4, "LOCAL"

    const-string v9, "USB0"

    const-string v10, "BT"

    const v11, 0x453e74b

    const v12, 0x27e34c

    const/16 v13, 0x852

    if-eqz v3, :cond_14

    if-eq v3, v8, :cond_c

    if-eq v3, v7, :cond_4

    return-void

    .line 479
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-eq v3, v13, :cond_7

    if-eq v3, v12, :cond_6

    if-eq v3, v11, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v5, v6

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v5, v8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v5, v7

    :cond_8
    :goto_2
    if-eqz v5, :cond_b

    if-eq v5, v8, :cond_a

    if-eq v5, v7, :cond_9

    goto/16 :goto_5

    .line 487
    :cond_9
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/BtMusicBusiness;->next()V

    goto/16 :goto_5

    .line 484
    :cond_a
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/chery/media/model/business/VrMediaBusiness;->getSourceUsbType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->playNext(I)V

    goto/16 :goto_5

    .line 481
    :cond_b
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->playNext()V

    goto/16 :goto_5

    .line 464
    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-eq v3, v13, :cond_f

    if-eq v3, v12, :cond_e

    if-eq v3, v11, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v5, v6

    goto :goto_3

    :cond_e
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v5, v8

    goto :goto_3

    :cond_f
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v5, v7

    :cond_10
    :goto_3
    if-eqz v5, :cond_13

    if-eq v5, v8, :cond_12

    if-eq v5, v7, :cond_11

    goto/16 :goto_5

    .line 472
    :cond_11
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/BtMusicBusiness;->previous()V

    goto/16 :goto_5

    .line 469
    :cond_12
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/chery/media/model/business/VrMediaBusiness;->getSourceUsbType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->playPrior(I)V

    goto/16 :goto_5

    .line 466
    :cond_13
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->playPrior()V

    goto/16 :goto_5

    .line 442
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v14, 0x3

    if-eq v3, v13, :cond_18

    if-eq v3, v12, :cond_17

    if-eq v3, v11, :cond_16

    const v4, 0x4de1c5b

    if-eq v3, v4, :cond_15

    goto :goto_4

    :cond_15
    const-string v3, "VIDEO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v5, v14

    goto :goto_4

    :cond_16
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v5, v6

    goto :goto_4

    :cond_17
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v5, v8

    goto :goto_4

    :cond_18
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v5, v7

    :cond_19
    :goto_4
    if-eqz v5, :cond_1d

    if-eq v5, v8, :cond_1c

    if-eq v5, v7, :cond_1b

    if-eq v5, v14, :cond_1a

    goto :goto_5

    .line 456
    :cond_1a
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v1

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentUsb()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/chery/media/model/business/VideoBusiness;->pause(I)V

    .line 457
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v1

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentUsb()I

    move-result v3

    invoke-virtual {v1, v3, v6}, Lcom/chery/media/model/business/VideoBusiness;->setPlayOnCanPlay(IZ)V

    goto :goto_5

    .line 452
    :cond_1b
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/BtMusicBusiness;->pause()V

    .line 453
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/chery/media/model/business/BtMusicBusiness;->setPlayOnCanPlay(Z)V

    goto :goto_5

    .line 448
    :cond_1c
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/chery/media/model/business/VrMediaBusiness;->getSourceUsbType(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/chery/media/model/business/UsbMusicBusiness;->pause(I)V

    .line 449
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/chery/media/model/business/VrMediaBusiness;->getSourceUsbType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1, v6}, Lcom/chery/media/model/business/UsbMusicBusiness;->setPlayOnCanPlay(IZ)V

    goto :goto_5

    .line 444
    :cond_1d
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->pause()V

    .line 445
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/chery/media/model/business/LocalMusicBusiness;->setPlayOnCanPlay(Z)V

    .line 497
    :goto_5
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    const-string v3, "ALL"

    .line 498
    invoke-virtual {v1, v3}, Lcom/chery/libvr/bean/action/ActionCommon;->setUser(Ljava/lang/String;)V

    .line 500
    new-instance v3, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v3}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 501
    invoke-virtual {v3, v2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v1, v3}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 504
    invoke-static {v1}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {p0, v2, v1, v3}, Lcom/chery/media/model/business/VrMediaBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleRemoveCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 851
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    const-string v1, "handleRemoveCollectResponse"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget v0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->currentMediaSource:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 855
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getCurrentPlaying()Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object v0

    goto :goto_0

    .line 858
    :cond_0
    invoke-static {v0}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 860
    sget-object p0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    const-string p1, "current media source not local or usb music"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 863
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v1

    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->checkLocalMusicInfo(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 866
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    const-string v1, "current local music null"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    new-instance v0, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    const-string v1, "ALL"

    .line 868
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setUser(Ljava/lang/String;)V

    .line 869
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 870
    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    const-string p2, "0"

    .line 871
    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 873
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 877
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v1

    new-instance v2, Lcom/chery/media/model/business/VrMediaBusiness$13;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/chery/media/model/business/VrMediaBusiness$13;-><init>(Lcom/chery/media/model/business/VrMediaBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->deleteLocal(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;)V

    return-void
.end method

.method private handleRequestMusicStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 636
    const-class v0, Lcom/chery/libvr/bean/action/ActionMusicCommonn;

    invoke-static {p2, v0}, Lcom/avn/tools/json/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/libvr/bean/action/ActionMusicCommonn;

    .line 637
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRequestMusicStatus actionMusicCommonn -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->uploadSourcePlayingInfo()V

    .line 641
    new-instance p2, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {p2}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    const-string v0, "ALL"

    .line 642
    invoke-virtual {p2, v0}, Lcom/chery/libvr/bean/action/ActionCommon;->setUser(Ljava/lang/String;)V

    .line 644
    new-instance v0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 645
    invoke-virtual {p2, v0}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 647
    invoke-static {p2}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onVrRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "requestMusicStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "controlPlayState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "controlPlayingList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "controlCollect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "controlPlayMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "PlaySpecificMusic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "playMusic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 283
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->handlePlaySpecificMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 279
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->handleControlCollect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 275
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->handleControlPlayList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 271
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->handleControlPlayMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 267
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->handleRequestMusicStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 263
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->handlePlayMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 259
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->handlePlayState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70e5acaf -> :sswitch_6
        -0x56f942e1 -> :sswitch_5
        -0x1dce648c -> :sswitch_4
        0xaba410d -> :sswitch_3
        0x3273644f -> :sswitch_2
        0x64589ce0 -> :sswitch_1
        0x6a309068 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private playOtherMusic()Z
    .locals 4

    .line 1039
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    const-string v1, "playOtherMusic"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget v0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->currentMediaSource:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xc

    if-ne v0, v3, :cond_1

    .line 1041
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getLocalMusics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1042
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getPlaylist()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->changePlaylist(I)V

    .line 1044
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->changeCurrentPlaying(I)V

    .line 1046
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    .line 1047
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->checkLocalMusicPage()V

    return v2

    .line 1052
    :cond_1
    iget v0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->currentMediaSource:I

    invoke-static {v0}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 1054
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlaylist(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1055
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    .line 1056
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->checkUsbMusicPage()V

    return v2

    .line 1061
    :cond_2
    iget v0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->currentMediaSource:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 1062
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/BtMusicBusiness;->getBtMusicState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1063
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/BtMusicBusiness;->requestBtMusicAudioFocus()Z

    .line 1064
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/BtMusicBusiness;->play()V

    .line 1065
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->checkBtMusicPage()V

    return v2

    .line 1070
    :cond_3
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getLocalMusics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1071
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getPlaylist()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1072
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->changePlaylist(I)V

    .line 1073
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->changeCurrentPlaying(I)V

    .line 1075
    :cond_4
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    .line 1076
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->checkLocalMusicPage()V

    return v2

    :cond_5
    move v0, v1

    :goto_0
    if-gtz v0, :cond_7

    .line 1081
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlaylist(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1082
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    .line 1083
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->checkUsbMusicPage()V

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1088
    :cond_7
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/BtMusicBusiness;->getBtMusicState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1089
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/BtMusicBusiness;->requestBtMusicAudioFocus()Z

    .line 1090
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/BtMusicBusiness;->play()V

    .line 1091
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->checkBtMusicPage()V

    return v2

    :cond_8
    return v1
.end method

.method private playSpecificMusicOfLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 973
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x2

    aput-object p3, v1, v4

    const-string v4, "playSpecificMusicOfLocal %s %s %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->queryLocalMusics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 975
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 976
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p1

    invoke-virtual {p1, v3, p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->changePlaylist(ILjava/util/List;)V

    .line 977
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->changeCurrentPlaying(I)V

    .line 978
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    .line 980
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    return p0
.end method

.method private playSpecificMusicOfUsb(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1006
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v3, 0x1

    aput-object p3, v1, v3

    const/4 v4, 0x2

    aput-object p4, v1, v4

    const-string v5, "playSpecificMusicOfUsb %s %s %s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chery/media/model/business/VrMediaBusiness;->queryUsbMusics(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1008
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1009
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, v4, p3, p0}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlaylist(IILjava/lang/String;Ljava/util/List;)V

    .line 1010
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/chery/media/model/business/UsbMusicBusiness;->changeCurrentPlaying(II)V

    .line 1011
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    .line 1013
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    return p0
.end method

.method private queryLocalMusics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;"
        }
    .end annotation

    .line 984
    sget-object p0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const-string v3, "queryLocalMusics %s %s %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 986
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getLocalMusics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 987
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v4, v4, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 991
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v4, v4, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 995
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v4, v4, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->album:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 999
    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1001
    :cond_3
    sget-object p1, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p0, p2, v1

    const-string p3, "queryLocalMusics result: %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private queryUsbMusics(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;"
        }
    .end annotation

    .line 1017
    sget-object p0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v2, 0x1

    aput-object p3, v0, v2

    const/4 v3, 0x2

    aput-object p4, v0, v3

    const-string v3, "queryUsbMusics %s %s %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getMusics(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    .line 1020
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1024
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 1028
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->album:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1032
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1034
    :cond_3
    sget-object p1, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p0, p2, v1

    const-string p3, "queryUsbMusics result: %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private responsePlayCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 782
    new-instance v0, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    const-string v1, "ALL"

    .line 783
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setUser(Ljava/lang/String;)V

    .line 785
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 786
    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    .line 788
    invoke-virtual {v1, p4}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 789
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 791
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private responsePlaySpecificMusicResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 961
    new-instance v0, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    const-string v1, "ALL"

    .line 962
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setUser(Ljava/lang/String;)V

    .line 964
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    const-string v2, ""

    .line 965
    invoke-virtual {v1, v2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v1, p3}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 967
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 969
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lcom/chery/media/model/business/VrMediaBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 302
    new-instance v0, Lcom/chery/libvr/bean/action/Response;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/Response;-><init>()V

    const/4 v1, 0x0

    .line 303
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/Response;->setResultCode(I)V

    .line 304
    invoke-virtual {v0, p2}, Lcom/chery/libvr/bean/action/Response;->setDetail(Ljava/lang/String;)V

    const-string p2, "com.chery.media"

    .line 305
    invoke-virtual {v0, p2}, Lcom/chery/libvr/bean/action/Response;->setPkgName(Ljava/lang/String;)V

    .line 307
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 308
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResponse value -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->vrMediaManager:Lcom/chery/libvr/manager/funtionmanager/VrMediaManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/chery/libvr/manager/funtionmanager/VrMediaManager;->onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendUploadResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 289
    new-instance v0, Lcom/chery/libvr/bean/action/Response;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/Response;-><init>()V

    const/4 v1, 0x4

    .line 290
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/Response;->setResultCode(I)V

    .line 291
    invoke-virtual {v0, p2}, Lcom/chery/libvr/bean/action/Response;->setDetail(Ljava/lang/String;)V

    const-string p2, "com.chery.media"

    .line 292
    invoke-virtual {v0, p2}, Lcom/chery/libvr/bean/action/Response;->setPkgName(Ljava/lang/String;)V

    .line 294
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 295
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUploadResponse value -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->vrMediaManager:Lcom/chery/libvr/manager/funtionmanager/VrMediaManager;

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/chery/libvr/manager/funtionmanager/VrMediaManager;->onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setCurrentMediaSource(I)V
    .locals 3

    .line 247
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentMediaSource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget v0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->currentMediaSource:I

    if-ne p1, v0, :cond_0

    return-void

    .line 251
    :cond_0
    iput p1, p0, Lcom/chery/media/model/business/VrMediaBusiness;->currentMediaSource:I

    .line 252
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->uploadSourcePlayingInfo()V

    return-void
.end method

.method private uploadMusicList(Ljava/lang/String;)V
    .locals 7

    .line 400
    new-instance v0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail;

    invoke-direct {v0}, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail;-><init>()V

    .line 401
    new-instance v1, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;

    invoke-direct {v1}, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;-><init>()V

    .line 402
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail;->setSemantic(Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;)V

    .line 403
    invoke-virtual {v1, p1}, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;->setSource(Ljava/lang/String;)V

    .line 404
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 405
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x27e34c

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const v4, 0x453e74b

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "LOCAL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const-string v3, "USB0"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-string v4, "notifyMusicList"

    const-string v6, "ALL"

    if-eqz v3, :cond_5

    if-eq v3, v5, :cond_3

    goto/16 :goto_4

    .line 419
    :cond_3
    invoke-virtual {v0, v6}, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail;->setUser(Ljava/lang/String;)V

    .line 420
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->getSourceUsbType(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getMusics(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    .line 421
    new-instance v5, Lcom/chery/libvr/bean/responsedetail/MusicInfo;

    invoke-direct {v5}, Lcom/chery/libvr/bean/responsedetail/MusicInfo;-><init>()V

    .line 422
    iget-object v6, v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/chery/libvr/bean/responsedetail/MusicInfo;->setName(Ljava/lang/String;)V

    .line 423
    iget-object v6, v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/chery/libvr/bean/responsedetail/MusicInfo;->setArtist(Ljava/lang/String;)V

    .line 424
    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->album:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/chery/libvr/bean/responsedetail/MusicInfo;->setAlbum(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 427
    :cond_4
    invoke-virtual {v1, v2}, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;->setMusicInfos(Ljava/util/ArrayList;)V

    .line 428
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->sendUploadResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 407
    :cond_5
    invoke-virtual {v0, v6}, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail;->setUser(Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->getLocalMusics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 409
    new-instance v5, Lcom/chery/libvr/bean/responsedetail/MusicInfo;

    invoke-direct {v5}, Lcom/chery/libvr/bean/responsedetail/MusicInfo;-><init>()V

    .line 410
    iget-object v6, v3, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v6, v6, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/chery/libvr/bean/responsedetail/MusicInfo;->setName(Ljava/lang/String;)V

    .line 411
    iget-object v6, v3, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v6, v6, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/chery/libvr/bean/responsedetail/MusicInfo;->setArtist(Ljava/lang/String;)V

    .line 412
    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->album:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/chery/libvr/bean/responsedetail/MusicInfo;->setAlbum(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 415
    :cond_6
    invoke-virtual {v1, v2}, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;->setMusicInfos(Ljava/util/ArrayList;)V

    .line 416
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->sendUploadResponse(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private uploadSourceAvailable(Ljava/lang/String;Z)V
    .locals 1

    .line 314
    new-instance v0, Lcom/chery/libvr/bean/responsedetail/MediaSourceStateResDetail;

    invoke-direct {v0}, Lcom/chery/libvr/bean/responsedetail/MediaSourceStateResDetail;-><init>()V

    .line 315
    invoke-virtual {v0, p1}, Lcom/chery/libvr/bean/responsedetail/MediaSourceStateResDetail;->setSource(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0, p2}, Lcom/chery/libvr/bean/responsedetail/MediaSourceStateResDetail;->setAvailable(Z)V

    .line 318
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "notifySourceStatus"

    .line 319
    invoke-direct {p0, p2, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->sendUploadResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private uploadSourcePlayingInfo()V
    .locals 8

    .line 323
    sget-object v0, Lcom/chery/media/model/business/VrMediaBusiness;->TAG:Ljava/lang/String;

    const-string v1, "uploadSourcePlayingInfo"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;

    invoke-direct {v0}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;-><init>()V

    .line 325
    iget v1, p0, Lcom/chery/media/model/business/VrMediaBusiness;->currentMediaSource:I

    const/4 v2, 0x5

    const-string v3, "playing"

    const-string v4, "stop"

    const-string v5, "background"

    const-string v6, "notifyMusicStatus"

    const-string v7, ""

    if-eq v1, v2, :cond_6

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 388
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setSource(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setName(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setActiveStatus(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setAlbum(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setArtist(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setSceneStatus(Ljava/lang/String;)V

    .line 394
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/chery/media/model/business/VrMediaBusiness;->sendUploadResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_0
    const-string v1, "LOCAL"

    .line 327
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setSource(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->getCurrentPlaying()Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 330
    iget-object v2, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setName(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, v5}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setActiveStatus(Ljava/lang/String;)V

    .line 332
    iget-object v2, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->album:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setAlbum(Ljava/lang/String;)V

    .line 333
    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setArtist(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setSceneStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 338
    :cond_2
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setName(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setActiveStatus(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setAlbum(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setArtist(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setSceneStatus(Ljava/lang/String;)V

    .line 344
    :goto_1
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/chery/media/model/business/VrMediaBusiness;->sendUploadResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 347
    :cond_3
    invoke-static {v1}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result v1

    const-string v2, "USB0"

    .line 348
    invoke-virtual {v0, v2}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setSource(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 351
    iget-object v7, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setName(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, v5}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setActiveStatus(Ljava/lang/String;)V

    .line 353
    iget-object v5, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->album:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setAlbum(Ljava/lang/String;)V

    .line 354
    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setArtist(Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->isPlaying(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setSceneStatus(Ljava/lang/String;)V

    goto :goto_3

    .line 359
    :cond_5
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setName(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setActiveStatus(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setAlbum(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setArtist(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setSceneStatus(Ljava/lang/String;)V

    .line 365
    :goto_3
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/chery/media/model/business/VrMediaBusiness;->sendUploadResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    const-string v1, "BT"

    .line 368
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setSource(Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/BtMusicBusiness;->getBtMusicInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 370
    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 371
    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setName(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, v5}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setActiveStatus(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->album:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setAlbum(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setArtist(Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/BtMusicBusiness;->getPlaybackState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v4

    :goto_4
    invoke-virtual {v0, v3}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setSceneStatus(Ljava/lang/String;)V

    goto :goto_5

    .line 379
    :cond_8
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setName(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setActiveStatus(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setAlbum(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setArtist(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, v7}, Lcom/chery/libvr/bean/responsedetail/MediaStatusResDetail;->setSceneStatus(Ljava/lang/String;)V

    .line 385
    :goto_5
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/chery/media/model/business/VrMediaBusiness;->sendUploadResponse(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3

    .line 72
    iget-boolean v0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->isInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness;->context:Landroid/content/Context;

    .line 77
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness;->handler:Landroid/os/Handler;

    .line 79
    invoke-static {}, Lcom/chery/libvr/manager/funtionmanager/VrMediaManager;->getInstance()Lcom/chery/libvr/manager/funtionmanager/VrMediaManager;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness;->vrMediaManager:Lcom/chery/libvr/manager/funtionmanager/VrMediaManager;

    .line 81
    new-instance v0, Lcom/chery/media/model/business/VrMediaBusiness$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/VrMediaBusiness$1;-><init>(Lcom/chery/media/model/business/VrMediaBusiness;)V

    invoke-virtual {p1, v0}, Lcom/chery/libvr/manager/funtionmanager/VrMediaManager;->setMediaTool(Lcom/chery/libvr/manager/funtionmanager/VrMediaManager$MediaTool;)V

    .line 93
    iget-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness;->vrMediaManager:Lcom/chery/libvr/manager/funtionmanager/VrMediaManager;

    invoke-virtual {p1}, Lcom/chery/libvr/manager/funtionmanager/VrMediaManager;->init()V

    .line 95
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/MediaBusiness;->getCurrentAudioSource()I

    move-result p1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 99
    :cond_1
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->setCurrentMediaSource(I)V

    .line 101
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->getLocalMusics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const-string v1, "LOCAL"

    invoke-direct {p0, v1, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->uploadSourceAvailable(Ljava/lang/String;Z)V

    .line 102
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/VrMediaBusiness;->uploadMusicList(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p1

    new-instance v1, Lcom/chery/media/model/business/VrMediaBusiness$2;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VrMediaBusiness$2;-><init>(Lcom/chery/media/model/business/VrMediaBusiness;)V

    invoke-virtual {p1, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->addMusicsListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;)V

    .line 110
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p1

    new-instance v1, Lcom/chery/media/model/business/VrMediaBusiness$3;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VrMediaBusiness$3;-><init>(Lcom/chery/media/model/business/VrMediaBusiness;)V

    invoke-virtual {p1, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->addCurrentPlayingListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;)V

    .line 123
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p1

    new-instance v1, Lcom/chery/media/model/business/VrMediaBusiness$4;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VrMediaBusiness$4;-><init>(Lcom/chery/media/model/business/VrMediaBusiness;)V

    invoke-virtual {p1, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->addPlayingInfoListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;)V

    const/4 p1, 0x0

    :goto_0
    if-gtz p1, :cond_3

    .line 148
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->getUsbTypeSource(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getMusics(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/chery/media/model/business/VrMediaBusiness;->uploadSourceAvailable(Ljava/lang/String;Z)V

    .line 150
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/VrMediaBusiness;->uploadMusicList(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 152
    :cond_3
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object p1

    new-instance v1, Lcom/chery/media/model/business/VrMediaBusiness$5;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VrMediaBusiness$5;-><init>(Lcom/chery/media/model/business/VrMediaBusiness;)V

    invoke-virtual {p1, v1}, Lcom/chery/media/model/business/UsbScannerBusiness;->addUsbDeviceInfoListener(Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;)V

    .line 170
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    new-instance v1, Lcom/chery/media/model/business/VrMediaBusiness$6;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VrMediaBusiness$6;-><init>(Lcom/chery/media/model/business/VrMediaBusiness;)V

    invoke-virtual {p1, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->addPlaylistInfoListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;)V

    .line 183
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    new-instance v1, Lcom/chery/media/model/business/VrMediaBusiness$7;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VrMediaBusiness$7;-><init>(Lcom/chery/media/model/business/VrMediaBusiness;)V

    invoke-virtual {p1, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->addPlayingInfoListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;)V

    .line 207
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/BtMusicBusiness;->getBtMusicState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "BT"

    invoke-direct {p0, v1, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->uploadSourceAvailable(Ljava/lang/String;Z)V

    .line 208
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/BtMusicBusiness;->getBtMusicState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v1, p0, Lcom/chery/media/model/business/VrMediaBusiness;->context:Landroid/content/Context;

    check-cast v1, Landroidx/lifecycle/LifecycleService;

    new-instance v2, Lcom/chery/media/model/business/VrMediaBusiness$8;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/VrMediaBusiness$8;-><init>(Lcom/chery/media/model/business/VrMediaBusiness;)V

    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 214
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/BtMusicBusiness;->getBtMusicInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v1, p0, Lcom/chery/media/model/business/VrMediaBusiness;->context:Landroid/content/Context;

    check-cast v1, Landroidx/lifecycle/LifecycleService;

    new-instance v2, Lcom/chery/media/model/business/VrMediaBusiness$9;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/VrMediaBusiness$9;-><init>(Lcom/chery/media/model/business/VrMediaBusiness;)V

    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 222
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/BtMusicBusiness;->getPlaybackState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v1, p0, Lcom/chery/media/model/business/VrMediaBusiness;->context:Landroid/content/Context;

    check-cast v1, Landroidx/lifecycle/LifecycleService;

    new-instance v2, Lcom/chery/media/model/business/VrMediaBusiness$10;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/VrMediaBusiness$10;-><init>(Lcom/chery/media/model/business/VrMediaBusiness;)V

    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 231
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p1

    new-instance v1, Lcom/chery/media/model/business/VrMediaBusiness$11;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VrMediaBusiness$11;-><init>(Lcom/chery/media/model/business/VrMediaBusiness;)V

    invoke-virtual {p1, v1}, Lcom/chery/media/model/business/MediaBusiness;->addAudioSourceChangeListener(Lcom/chery/media/model/business/MediaBusiness$OnAudioSourceChangeListener;)V

    .line 241
    invoke-direct {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->uploadSourcePlayingInfo()V

    .line 243
    iput-boolean v0, p0, Lcom/chery/media/model/business/VrMediaBusiness;->isInit:Z

    return-void
.end method
