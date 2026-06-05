.class public Lcom/android/car/CarMediaService;
.super Landroid/car/media/ICarMedia$Stub;
.source "CarMediaService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarMediaService$MediaSessionUpdater;,
        Lcom/android/car/CarMediaService$MediaControllerCallback;,
        Lcom/android/car/CarMediaService$SessionChangedListener;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:Ljava/lang/String; = ","

.field private static final MEDIA_CONNECTION_ACTION:Ljava/lang/String; = "com.android.car.media.MEDIA_CONNECTION"

.field private static final PLAYBACK_STATE_KEY:Ljava/lang/String; = "playback_state"

.field private static final SHARED_PREF:Ljava/lang/String; = "com.android.car.media.car_media_service"

.field private static final SOURCE_KEY:Ljava/lang/String; = "media_source_component"


# instance fields
.field private mActiveUserMediaController:Landroid/media/session/MediaController;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIsPackageUpdateReceiverRegistered:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

.field private final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private final mMediaSessionUpdater:Lcom/android/car/CarMediaService$MediaSessionUpdater;

.field private final mMediaSourceListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/car/media/ICarMediaSourceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageUpdateFilter:Landroid/content/IntentFilter;

.field private final mPackageUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingInit:Z

.field private mPlayOnMediaSourceChanged:Z

.field private mPreviousMediaComponent:Landroid/content/ComponentName;

.field private mPrimaryMediaComponent:Landroid/content/ComponentName;

.field private mRemovedMediaSourcePackage:Ljava/lang/String;

.field private mSessionsListener:Lcom/android/car/CarMediaService$SessionChangedListener;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mStartPlayback:Z

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserSwitchReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    invoke-direct {p0}, Landroid/car/media/ICarMedia$Stub;-><init>()V

    .line 84
    new-instance v0, Lcom/android/car/CarMediaService$MediaSessionUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/CarMediaService$MediaSessionUpdater;-><init>(Lcom/android/car/CarMediaService;Lcom/android/car/CarMediaService$1;)V

    iput-object v0, p0, Lcom/android/car/CarMediaService;->mMediaSessionUpdater:Lcom/android/car/CarMediaService$MediaSessionUpdater;

    .line 98
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarMediaService;->mMediaSourceListeners:Landroid/os/RemoteCallbackList;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/CarMediaService;->mMainHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/android/car/CarMediaService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarMediaService$1;-><init>(Lcom/android/car/CarMediaService;)V

    iput-object v0, p0, Lcom/android/car/CarMediaService;->mPackageUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    new-instance v0, Lcom/android/car/CarMediaService$2;

    invoke-direct {v0, p0}, Lcom/android/car/CarMediaService$2;-><init>(Lcom/android/car/CarMediaService;)V

    iput-object v0, p0, Lcom/android/car/CarMediaService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 509
    new-instance v0, Lcom/android/car/CarMediaService$4;

    invoke-direct {v0, p0}, Lcom/android/car/CarMediaService$4;-><init>(Lcom/android/car/CarMediaService;)V

    iput-object v0, p0, Lcom/android/car/CarMediaService;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    .line 160
    iput-object p1, p0, Lcom/android/car/CarMediaService;->mContext:Landroid/content/Context;

    .line 161
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/car/CarMediaService;->mUserManager:Landroid/os/UserManager;

    .line 162
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/car/CarMediaService;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 164
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAR.MEDIA"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/CarMediaService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 165
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 166
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/CarMediaService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/CarMediaService;->mHandler:Landroid/os/Handler;

    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarMediaService;->mPackageUpdateFilter:Landroid/content/IntentFilter;

    .line 169
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mPackageUpdateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mPackageUpdateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mPackageUpdateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mPackageUpdateFilter:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v0, "userSwitchFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/android/car/CarMediaService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/CarMediaService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/android/car/CarMediaService;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/car/CarMediaService;->mPlayOnMediaSourceChanged:Z

    .line 180
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/car/CarMediaService;->mCurrentUser:I

    .line 181
    invoke-direct {p0}, Lcom/android/car/CarMediaService;->updateMediaSessionCallbackForCurrentUser()V

    .line 182
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/CarMediaService;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarMediaService;

    .line 73
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mPrimaryMediaComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/car/CarMediaService;)Lcom/android/car/CarMediaService$MediaSessionUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarMediaService;

    .line 73
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mMediaSessionUpdater:Lcom/android/car/CarMediaService$MediaSessionUpdater;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/session/MediaController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaController;

    .line 73
    invoke-static {p0}, Lcom/android/car/CarMediaService;->getClassName(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/car/CarMediaService;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarMediaService;
    .param p1, "x1"    # Ljava/util/List;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/car/CarMediaService;->updatePrimaryMediaSourceWithCurrentlyPlaying(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/car/CarMediaService;)Landroid/media/session/MediaController;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarMediaService;

    .line 73
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/car/CarMediaService;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarMediaService;
    .param p1, "x1"    # Ljava/util/List;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/car/CarMediaService;->updateActiveMediaController(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/car/CarMediaService;Landroid/media/session/PlaybackState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarMediaService;
    .param p1, "x1"    # Landroid/media/session/PlaybackState;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/car/CarMediaService;->savePlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/CarMediaService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarMediaService;

    .line 73
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mRemovedMediaSourcePackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/car/CarMediaService;Landroid/media/session/PlaybackState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarMediaService;
    .param p1, "x1"    # Landroid/media/session/PlaybackState;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/car/CarMediaService;->maybeRestartPlayback(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/car/CarMediaService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarMediaService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/android/car/CarMediaService;->mRemovedMediaSourcePackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/car/CarMediaService;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarMediaService;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/car/CarMediaService;->setPrimaryMediaSource(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/car/CarMediaService;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarMediaService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarMediaService;->getMediaSource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/car/CarMediaService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarMediaService;

    .line 73
    iget v0, p0, Lcom/android/car/CarMediaService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/car/CarMediaService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarMediaService;
    .param p1, "x1"    # I

    .line 73
    iput p1, p0, Lcom/android/car/CarMediaService;->mCurrentUser:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/car/CarMediaService;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarMediaService;

    .line 73
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/car/CarMediaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarMediaService;

    .line 73
    invoke-direct {p0}, Lcom/android/car/CarMediaService;->initUser()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/car/CarMediaService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarMediaService;

    .line 73
    iget-boolean v0, p0, Lcom/android/car/CarMediaService;->mPendingInit:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/car/CarMediaService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarMediaService;
    .param p1, "x1"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/android/car/CarMediaService;->mPendingInit:Z

    return p1
.end method

.method private static getClassName(Landroid/media/session/MediaController;)Ljava/lang/String;
    .locals 3
    .param p0, "controller"    # Landroid/media/session/MediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 709
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 711
    .local v0, "sessionExtras":Landroid/os/Bundle;
    const-string v1, ""

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const-string v2, "android.media.session.BROWSE_SERVICE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 713
    .local v2, "value":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    return-object v1
.end method

.method private getComponentNameList(Ljava/lang/String;)Ljava/util/Deque;
    .locals 3
    .param p1, "serialized"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 654
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "componentNames":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private getLastMediaSource()Landroid/content/ComponentName;
    .locals 7

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media_source_component"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarMediaService;->mCurrentUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/car/CarMediaService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, "serialized":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 633
    invoke-direct {p0, v1}, Lcom/android/car/CarMediaService;->getComponentNameList(Ljava/lang/String;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 634
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 635
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-direct {p0, v5}, Lcom/android/car/CarMediaService;->isMediaService(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 636
    return-object v5

    .line 638
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    :cond_0
    goto :goto_0

    .line 641
    :cond_1
    iget-object v3, p0, Lcom/android/car/CarMediaService;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0135

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 642
    .local v3, "defaultMediaSource":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 643
    .local v4, "defaultComponent":Landroid/content/ComponentName;
    invoke-direct {p0, v4}, Lcom/android/car/CarMediaService;->isMediaService(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 644
    return-object v4

    .line 646
    :cond_2
    return-object v2
.end method

.method private getMediaService(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 576
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "className":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/car/CarMediaService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 580
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 581
    .local v3, "mediaIntent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v4, "android.media.browse.MediaBrowserService"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    nop

    .line 584
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 583
    const/16 v5, 0x40

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 586
    .local v4, "mediaServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 587
    .local v6, "service":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 588
    .local v7, "serviceName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 594
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 595
    :cond_0
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v0, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 597
    .end local v6    # "service":Landroid/content/pm/ResolveInfo;
    .end local v7    # "serviceName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 599
    :cond_2
    const/4 v5, 0x3

    const-string v6, "CAR.MEDIA"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 600
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No MediaBrowseService with ComponentName: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 600
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_3
    const/4 v5, 0x0

    return-object v5
.end method

.method private getMediaSource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "className"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 611
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/car/CarMediaService;->getMediaService(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private initUser()V
    .locals 9

    .line 192
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mContext:Landroid/content/Context;

    const-string v2, "com.android.car.media.car_media_service"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarMediaService;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/android/car/CarMediaService;->mIsPackageUpdateReceiverRegistered:Z

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/CarMediaService;->mPackageUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    :cond_1
    new-instance v0, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/car/CarMediaService;->mCurrentUser:I

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 199
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/car/CarMediaService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/CarMediaService;->mPackageUpdateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/car/CarMediaService;->mPackageUpdateFilter:Landroid/content/IntentFilter;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 201
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/car/CarMediaService;->mIsPackageUpdateReceiverRegistered:Z

    .line 203
    invoke-direct {p0}, Lcom/android/car/CarMediaService;->getLastMediaSource()Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/car/CarMediaService;->mPrimaryMediaComponent:Landroid/content/ComponentName;

    .line 204
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playback_state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/car/CarMediaService;->mCurrentUser:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/car/CarMediaService;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 207
    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/android/car/CarMediaService;->mStartPlayback:Z

    .line 208
    invoke-direct {p0}, Lcom/android/car/CarMediaService;->updateMediaSessionCallbackForCurrentUser()V

    .line 209
    invoke-direct {p0}, Lcom/android/car/CarMediaService;->notifyListeners()V

    .line 214
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.car.media.MEDIA_CONNECTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, "serviceStart":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/car/CarMediaService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f01ea

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v2, p0, Lcom/android/car/CarMediaService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 217
    return-void
.end method

.method private isMediaService(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 569
    invoke-direct {p0, p1}, Lcom/android/car/CarMediaService;->getMediaService(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private matchPrimaryMediaSource(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "newPackageName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newClassName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 554
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mPrimaryMediaComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const/4 v0, 0x1

    return v0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mPrimaryMediaComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 564
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private maybeRestartPlayback(Landroid/media/session/PlaybackState;)V
    .locals 4
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 672
    iget-boolean v0, p0, Lcom/android/car/CarMediaService;->mStartPlayback:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 673
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 674
    invoke-direct {p0}, Lcom/android/car/CarMediaService;->play()V

    .line 675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarMediaService;->mStartPlayback:Z

    .line 677
    :cond_0
    return-void
.end method

.method private notifyListeners()V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mMediaSourceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 498
    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-lez v0, :cond_0

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mMediaSourceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/car/media/ICarMediaSourceListener;

    .line 501
    .local v0, "callback":Landroid/car/media/ICarMediaSourceListener;
    iget-object v2, p0, Lcom/android/car/CarMediaService;->mPrimaryMediaComponent:Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Landroid/car/media/ICarMediaSourceListener;->onMediaSourceChanged(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "callback":Landroid/car/media/ICarMediaSourceListener;
    goto :goto_1

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling onMediaSourceChanged failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAR.MEDIA"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    nop

    .line 498
    move v0, v1

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mMediaSourceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 507
    return-void
.end method

.method private play()V
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    .line 330
    const/4 v0, 0x3

    const-string v1, "CAR.MEDIA"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    .line 334
    .local v0, "controls":Landroid/media/session/MediaController$TransportControls;
    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    goto :goto_0

    .line 337
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t start playback, transport controls unavailable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    .line 338
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v0    # "controls":Landroid/media/session/MediaController$TransportControls;
    :cond_2
    :goto_0
    return-void
.end method

.method private saveLastMediaSource(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 615
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "componentName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media_source_component"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/CarMediaService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/car/CarMediaService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "serialized":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 619
    iget-object v3, p0, Lcom/android/car/CarMediaService;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 621
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/car/CarMediaService;->getComponentNameList(Ljava/lang/String;)Ljava/util/Deque;

    move-result-object v3

    .line 622
    .local v3, "componentNames":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 623
    invoke-interface {v3, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 624
    iget-object v4, p0, Lcom/android/car/CarMediaService;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/car/CarMediaService;->serializeComponentNameList(Ljava/util/Deque;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 625
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 627
    .end local v3    # "componentNames":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/String;>;"
    :goto_0
    return-void
.end method

.method private savePlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 3
    .param p1, "playbackState"    # Landroid/media/session/PlaybackState;

    .line 659
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 660
    .local v1, "state":I
    :goto_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 663
    iput-boolean v0, p0, Lcom/android/car/CarMediaService;->mStartPlayback:Z

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mSharedPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playback_state"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/CarMediaService;->mCurrentUser:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/car/CarMediaService;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 669
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private serializeComponentNameList(Ljava/util/Deque;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 650
    .local p1, "componentNames":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Deque;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized setPrimaryMediaSource(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mPrimaryMediaComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/CarMediaService;->mPrimaryMediaComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 472
    monitor-exit p0

    return-void

    .line 475
    .end local p0    # "this":Lcom/android/car/CarMediaService;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/car/CarMediaService;->stop()V

    .line 477
    iget-boolean v0, p0, Lcom/android/car/CarMediaService;->mPlayOnMediaSourceChanged:Z

    iput-boolean v0, p0, Lcom/android/car/CarMediaService;->mStartPlayback:Z

    .line 478
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mPrimaryMediaComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/car/CarMediaService;->mPreviousMediaComponent:Landroid/content/ComponentName;

    .line 479
    iput-object p1, p0, Lcom/android/car/CarMediaService;->mPrimaryMediaComponent:Landroid/content/ComponentName;

    .line 480
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 481
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    .line 480
    invoke-direct {p0, v0}, Lcom/android/car/CarMediaService;->updateActiveMediaController(Ljava/util/List;)V

    .line 483
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mSharedPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mPrimaryMediaComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/car/CarMediaService;->mPrimaryMediaComponent:Landroid/content/ComponentName;

    .line 485
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mPrimaryMediaComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/car/CarMediaService;->saveLastMediaSource(Landroid/content/ComponentName;)V

    .line 487
    iput-object v2, p0, Lcom/android/car/CarMediaService;->mRemovedMediaSourcePackage:Ljava/lang/String;

    goto :goto_0

    .line 491
    :cond_1
    const-string v0, "CAR.MEDIA"

    const-string v1, "Error trying to save last media source, prefs uninitialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/car/CarMediaService;->notifyListeners()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    monitor-exit p0

    return-void

    .line 470
    .end local p1    # "componentName":Landroid/content/ComponentName;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private stop()V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    .line 348
    const/4 v0, 0x3

    const-string v1, "CAR.MEDIA"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopping "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    .line 352
    .local v0, "controls":Landroid/media/session/MediaController$TransportControls;
    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->stop()V

    goto :goto_0

    .line 355
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t stop playback, transport controls unavailable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    .line 356
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v0    # "controls":Landroid/media/session/MediaController$TransportControls;
    :cond_2
    :goto_0
    return-void
.end method

.method private updateActiveMediaController(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 684
    .local p1, "mediaControllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mPrimaryMediaComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 685
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 688
    iget-object v1, p0, Lcom/android/car/CarMediaService;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    .line 691
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    .line 692
    .local v1, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/car/CarMediaService;->getClassName(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/car/CarMediaService;->matchPrimaryMediaSource(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 693
    iput-object v1, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    .line 698
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 699
    .local v0, "state":Landroid/media/session/PlaybackState;
    invoke-direct {p0, v0}, Lcom/android/car/CarMediaService;->savePlaybackState(Landroid/media/session/PlaybackState;)V

    .line 700
    iget-object v2, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/android/car/CarMediaService;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    iget-object v4, p0, Lcom/android/car/CarMediaService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 701
    invoke-direct {p0, v0}, Lcom/android/car/CarMediaService;->maybeRestartPlayback(Landroid/media/session/PlaybackState;)V

    .line 702
    return-void

    .line 704
    .end local v0    # "state":Landroid/media/session/PlaybackState;
    .end local v1    # "controller":Landroid/media/session/MediaController;
    :cond_2
    goto :goto_0

    .line 705
    :cond_3
    return-void
.end method

.method private updateMediaSessionCallbackForCurrentUser()V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mSessionsListener:Lcom/android/car/CarMediaService$SessionChangedListener;

    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/car/CarMediaService;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 318
    :cond_0
    new-instance v0, Lcom/android/car/CarMediaService$SessionChangedListener;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/car/CarMediaService$SessionChangedListener;-><init>(Lcom/android/car/CarMediaService;I)V

    iput-object v0, p0, Lcom/android/car/CarMediaService;->mSessionsListener:Lcom/android/car/CarMediaService$SessionChangedListener;

    .line 319
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/car/CarMediaService;->mSessionsListener:Lcom/android/car/CarMediaService$SessionChangedListener;

    .line 320
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 319
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    .line 321
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mMediaSessionUpdater:Lcom/android/car/CarMediaService$MediaSessionUpdater;

    iget-object v1, p0, Lcom/android/car/CarMediaService;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 322
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 321
    invoke-virtual {v1, v3, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/CarMediaService$MediaSessionUpdater;->access$1000(Lcom/android/car/CarMediaService$MediaSessionUpdater;Ljava/util/List;)V

    .line 323
    return-void
.end method

.method private declared-synchronized updatePrimaryMediaSourceWithCurrentlyPlaying(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    monitor-enter p0

    .line 524
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    .line 525
    .local v1, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 526
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 527
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "newPackageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/car/CarMediaService;->getClassName(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, "newClassName":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/android/car/CarMediaService;->matchPrimaryMediaSource(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 530
    invoke-direct {p0, v0, v2}, Lcom/android/car/CarMediaService;->getMediaSource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 531
    .local v3, "mediaSource":Landroid/content/ComponentName;
    const-string v4, "CAR.MEDIA"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 532
    if-eqz v3, :cond_0

    .line 533
    const-string v4, "CAR.MEDIA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaController changed, updating media source to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 533
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 540
    .end local p0    # "this":Lcom/android/car/CarMediaService;
    :cond_0
    const-string v4, "CAR.MEDIA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaController changed, but no media browse service found in package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_1
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/car/CarMediaService;->setPrimaryMediaSource(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    .end local v3    # "mediaSource":Landroid/content/ComponentName;
    :cond_2
    monitor-exit p0

    return-void

    .line 549
    .end local v0    # "newPackageName":Ljava/lang/String;
    .end local v1    # "controller":Landroid/media/session/MediaController;
    .end local v2    # "newClassName":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 550
    :cond_4
    monitor-exit p0

    return-void

    .line 523
    .end local p1    # "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 226
    const-string v0, "*CarMediaService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tCurrent media component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarMediaService;->mPrimaryMediaComponent:Landroid/content/ComponentName;

    const-string v2, "-"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tPrevious media component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarMediaService;->mPreviousMediaComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_1

    goto :goto_1

    .line 230
    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tCurrent media controller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    .line 233
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tCurrent browse service extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarMediaService;->mActiveUserMediaController:Landroid/media/session/MediaController;

    .line 235
    invoke-static {v1}, Lcom/android/car/CarMediaService;->getClassName(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tNumber of active media sessions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarMediaService;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v2, 0x0

    .line 239
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 238
    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v1

    .line 239
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public declared-synchronized getMediaSource()Landroid/content/ComponentName;
    .locals 2

    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mPrimaryMediaComponent:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 258
    .end local p0    # "this":Lcom/android/car/CarMediaService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init()V
    .locals 0

    .line 189
    return-void
.end method

.method public declared-synchronized registerMediaSourceListener(Landroid/car/media/ICarMediaSourceListener;)V
    .locals 2
    .param p1, "callback"    # Landroid/car/media/ICarMediaSourceListener;

    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mMediaSourceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 267
    .end local p0    # "this":Lcom/android/car/CarMediaService;
    .end local p1    # "callback":Landroid/car/media/ICarMediaSourceListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public release()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mMediaSessionUpdater:Lcom/android/car/CarMediaService$MediaSessionUpdater;

    invoke-static {v0}, Lcom/android/car/CarMediaService$MediaSessionUpdater;->access$900(Lcom/android/car/CarMediaService$MediaSessionUpdater;)V

    .line 222
    return-void
.end method

.method public declared-synchronized setMediaSource(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 248
    const-string v0, "CAR.MEDIA"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "CAR.MEDIA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing media source to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local p0    # "this":Lcom/android/car/CarMediaService;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/CarMediaService;->setPrimaryMediaSource(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    .line 246
    .end local p1    # "componentName":Landroid/content/ComponentName;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setUserLockStatus(IZ)V
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "unlocked"    # Z

    .line 289
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/CarMediaService$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/car/CarMediaService$3;-><init>(Lcom/android/car/CarMediaService;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    return-void
.end method

.method public declared-synchronized unregisterMediaSourceListener(Landroid/car/media/ICarMediaSourceListener;)V
    .locals 2
    .param p1, "callback"    # Landroid/car/media/ICarMediaSourceListener;

    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/car/CarMediaService;->mMediaSourceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 276
    .end local p0    # "this":Lcom/android/car/CarMediaService;
    .end local p1    # "callback":Landroid/car/media/ICarMediaSourceListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
