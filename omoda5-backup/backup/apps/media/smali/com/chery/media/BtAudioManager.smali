.class public Lcom/chery/media/BtAudioManager;
.super Ljava/lang/Object;
.source "BtAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/BtAudioManager$MediaSessionListener;
    }
.end annotation


# static fields
.field private static final BT_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field private static final BT_SERVICE:Ljava/lang/String; = "com.android.bluetooth.avrcpcontroller.BluetoothMediaBrowserService"

.field private static final MSG_MEDIASESSION_INIT:I = 0x0

.field private static final MSG_METADATA_CHANGED:I = 0x1

.field private static final MSG_PLAYBACK_STATE_CHANGED:I = 0x2

.field private static TAG:Ljava/lang/String; = "BA.Mgr"

.field private static sBtAudioManager:Lcom/chery/media/BtAudioManager;


# instance fields
.field private final connectionCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

.field private mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMediaBrowser:Landroid/media/browse/MediaBrowser;

.field private final mMediaCallBack:Landroid/media/session/MediaController$Callback;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaSessionListener:Lcom/chery/media/BtAudioManager$MediaSessionListener;

.field private mTransport:Landroid/media/session/MediaController$TransportControls;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v0, Lcom/chery/media/BtAudioManager$3;

    invoke-direct {v0, p0}, Lcom/chery/media/BtAudioManager$3;-><init>(Lcom/chery/media/BtAudioManager;)V

    iput-object v0, p0, Lcom/chery/media/BtAudioManager;->connectionCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    .line 314
    new-instance v0, Lcom/chery/media/BtAudioManager$4;

    invoke-direct {v0, p0}, Lcom/chery/media/BtAudioManager$4;-><init>(Lcom/chery/media/BtAudioManager;)V

    iput-object v0, p0, Lcom/chery/media/BtAudioManager;->mMediaCallBack:Landroid/media/session/MediaController$Callback;

    .line 88
    sget-object v0, Lcom/chery/media/BtAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "SetUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p1, p0, Lcom/chery/media/BtAudioManager;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/chery/media/BtAudioManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/chery/media/BtAudioManager$1;

    invoke-direct {v1, p0}, Lcom/chery/media/BtAudioManager$1;-><init>(Lcom/chery/media/BtAudioManager;)V

    const/16 p0, 0xb

    invoke-virtual {p1, v0, v1, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/chery/media/BtAudioManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/chery/media/BtAudioManager;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/chery/media/BtAudioManager;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p1
.end method

.method static synthetic access$200(Lcom/chery/media/BtAudioManager;)Lcom/chery/media/BtAudioManager$MediaSessionListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/chery/media/BtAudioManager;->mMediaSessionListener:Lcom/chery/media/BtAudioManager$MediaSessionListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/BtAudioManager;)Landroid/media/browse/MediaBrowser;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/chery/media/BtAudioManager;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/BtAudioManager;)Landroid/media/session/MediaController;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/chery/media/BtAudioManager;->mMediaController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method static synthetic access$402(Lcom/chery/media/BtAudioManager;Landroid/media/session/MediaController;)Landroid/media/session/MediaController;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/chery/media/BtAudioManager;->mMediaController:Landroid/media/session/MediaController;

    return-object p1
.end method

.method static synthetic access$500(Lcom/chery/media/BtAudioManager;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/chery/media/BtAudioManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$602(Lcom/chery/media/BtAudioManager;Landroid/media/session/MediaController$TransportControls;)Landroid/media/session/MediaController$TransportControls;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/chery/media/BtAudioManager;->mTransport:Landroid/media/session/MediaController$TransportControls;

    return-object p1
.end method

.method static synthetic access$700(Lcom/chery/media/BtAudioManager;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/chery/media/BtAudioManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/chery/media/BtAudioManager;)Landroid/media/session/MediaController$Callback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/chery/media/BtAudioManager;->mMediaCallBack:Landroid/media/session/MediaController$Callback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/chery/media/BtAudioManager;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/chery/media/BtAudioManager;->disconnectMediaBrowser()V

    return-void
.end method

.method private connectMediaBrowser()V
    .locals 5

    .line 211
    sget-object v0, Lcom/chery/media/BtAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "connectMediaBrowser"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/chery/media/BtAudioManager;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/chery/media/BtAudioManager;->disconnectMediaBrowser()V

    .line 216
    :cond_0
    new-instance v0, Landroid/media/browse/MediaBrowser;

    iget-object v1, p0, Lcom/chery/media/BtAudioManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.bluetooth"

    const-string v4, "com.android.bluetooth.avrcpcontroller.BluetoothMediaBrowserService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/chery/media/BtAudioManager;->connectionCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/chery/media/BtAudioManager;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    .line 222
    :try_start_0
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->connect()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 224
    sget-object v0, Lcom/chery/media/BtAudioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private disconnectMediaBrowser()V
    .locals 2

    .line 229
    sget-object v0, Lcom/chery/media/BtAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "disconnectMediaBrowser"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/chery/media/BtAudioManager;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/chery/media/BtAudioManager;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    :cond_0
    return-void
.end method

.method public static get()Lcom/chery/media/BtAudioManager;
    .locals 2

    .line 73
    sget-object v0, Lcom/chery/media/BtAudioManager;->sBtAudioManager:Lcom/chery/media/BtAudioManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call BtAudioManager.init(Context) before calling this function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/content/Context;)Lcom/chery/media/BtAudioManager;
    .locals 1

    .line 59
    sget-object v0, Lcom/chery/media/BtAudioManager;->sBtAudioManager:Lcom/chery/media/BtAudioManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/chery/media/BtAudioManager;

    invoke-direct {v0, p0}, Lcom/chery/media/BtAudioManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/chery/media/BtAudioManager;->sBtAudioManager:Lcom/chery/media/BtAudioManager;

    return-object v0

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "UiCallManager has been initialized."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static set(Lcom/chery/media/BtAudioManager;)V
    .locals 0

    .line 84
    sput-object p0, Lcom/chery/media/BtAudioManager;->sBtAudioManager:Lcom/chery/media/BtAudioManager;

    return-void
.end method


# virtual methods
.method public getA2dpDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 126
    iget-object p0, p0, Lcom/chery/media/BtAudioManager;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 128
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 129
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    move-object v0, p0

    goto :goto_0

    .line 133
    :cond_0
    sget-object p0, Lcom/chery/media/BtAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "getA2dpDevice is null"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getMediaMetadata()Landroid/media/MediaMetadata;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/chery/media/BtAudioManager;->mMediaController:Landroid/media/session/MediaController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/chery/media/BtAudioManager;->mMediaController:Landroid/media/session/MediaController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public initMediaSession(Lcom/chery/media/BtAudioManager$MediaSessionListener;)V
    .locals 1

    .line 183
    iput-object p1, p0, Lcom/chery/media/BtAudioManager;->mMediaSessionListener:Lcom/chery/media/BtAudioManager$MediaSessionListener;

    .line 184
    new-instance p1, Lcom/chery/media/BtAudioManager$2;

    iget-object v0, p0, Lcom/chery/media/BtAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/chery/media/BtAudioManager$2;-><init>(Lcom/chery/media/BtAudioManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/chery/media/BtAudioManager;->mHandler:Landroid/os/Handler;

    .line 207
    invoke-direct {p0}, Lcom/chery/media/BtAudioManager;->connectMediaBrowser()V

    return-void
.end method

.method public isCanController()Z
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/chery/media/BtAudioManager;->mTransport:Landroid/media/session/MediaController$TransportControls;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()V
    .locals 1

    .line 254
    iget-object p0, p0, Lcom/chery/media/BtAudioManager;->mTransport:Landroid/media/session/MediaController$TransportControls;

    if-eqz p0, :cond_0

    .line 255
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    goto :goto_0

    .line 258
    :cond_0
    sget-object p0, Lcom/chery/media/BtAudioManager;->TAG:Ljava/lang/String;

    const-string v0, "mTransport is null when skipToNext"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 272
    iget-object p0, p0, Lcom/chery/media/BtAudioManager;->mTransport:Landroid/media/session/MediaController$TransportControls;

    if-eqz p0, :cond_0

    .line 273
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto :goto_0

    .line 276
    :cond_0
    sget-object p0, Lcom/chery/media/BtAudioManager;->TAG:Ljava/lang/String;

    const-string v0, "mTransport is null when pause"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 263
    iget-object p0, p0, Lcom/chery/media/BtAudioManager;->mTransport:Landroid/media/session/MediaController$TransportControls;

    if-eqz p0, :cond_0

    .line 264
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    goto :goto_0

    .line 267
    :cond_0
    sget-object p0, Lcom/chery/media/BtAudioManager;->TAG:Ljava/lang/String;

    const-string v0, "mTransport is null when play"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public previous()V
    .locals 1

    .line 245
    iget-object p0, p0, Lcom/chery/media/BtAudioManager;->mTransport:Landroid/media/session/MediaController$TransportControls;

    if-eqz p0, :cond_0

    .line 246
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    goto :goto_0

    .line 249
    :cond_0
    sget-object p0, Lcom/chery/media/BtAudioManager;->TAG:Ljava/lang/String;

    const-string v0, "mTransport is null when skipToPrevious"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startA2dpRender()V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/chery/media/BtAudioManager;->getA2dpDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 140
    iget-object p0, p0, Lcom/chery/media/BtAudioManager;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothA2dpSink;->startA2dpRender(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 144
    :cond_0
    sget-object p0, Lcom/chery/media/BtAudioManager;->TAG:Ljava/lang/String;

    const-string v0, "startA2dpRender is failed"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public stopA2dpRender()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/chery/media/BtAudioManager;->getA2dpDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 150
    iget-object p0, p0, Lcom/chery/media/BtAudioManager;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothA2dpSink;->stopA2dpRender(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 154
    :cond_0
    sget-object p0, Lcom/chery/media/BtAudioManager;->TAG:Ljava/lang/String;

    const-string v0, "stopA2dpRender is failed"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public tearDown()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/chery/media/BtAudioManager;->mContext:Landroid/content/Context;

    .line 121
    sput-object v0, Lcom/chery/media/BtAudioManager;->sBtAudioManager:Lcom/chery/media/BtAudioManager;

    return-void
.end method
