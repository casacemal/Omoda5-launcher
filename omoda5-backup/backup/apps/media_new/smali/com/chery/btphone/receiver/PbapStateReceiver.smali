.class public Lcom/chery/btphone/receiver/PbapStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PbapStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/btphone/receiver/PbapStateReceiver$PbapStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PbapStateReceiver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mPbapStateListener:Lcom/chery/btphone/receiver/PbapStateReceiver$PbapStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/chery/btphone/receiver/PbapStateReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 26
    iput-object p1, p0, Lcom/chery/btphone/receiver/PbapStateReceiver;->mContext:Landroid/content/Context;

    const-string p0, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    .line 27
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private handleEvent(II)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/chery/btphone/receiver/PbapStateReceiver;->mPbapStateListener:Lcom/chery/btphone/receiver/PbapStateReceiver$PbapStateListener;

    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p0, p1, p2}, Lcom/chery/btphone/receiver/PbapStateReceiver$PbapStateListener;->onPbapState(II)V

    goto :goto_0

    :cond_0
    const-string p0, "PbapStateReceiver"

    const-string p1, "handleEvent: no listener"

    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v0, -0x1

    .line 42
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.bluetooth.profile.extra.STATE"

    .line 43
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/chery/btphone/receiver/PbapStateReceiver;->handleEvent(II)V

    return-void
.end method

.method public register(Lcom/chery/btphone/receiver/PbapStateReceiver$PbapStateListener;)V
    .locals 1

    .line 31
    iput-object p1, p0, Lcom/chery/btphone/receiver/PbapStateReceiver;->mPbapStateListener:Lcom/chery/btphone/receiver/PbapStateReceiver$PbapStateListener;

    .line 32
    iget-object p1, p0, Lcom/chery/btphone/receiver/PbapStateReceiver;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/chery/btphone/receiver/PbapStateReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/chery/btphone/receiver/PbapStateReceiver;->mPbapStateListener:Lcom/chery/btphone/receiver/PbapStateReceiver$PbapStateListener;

    .line 37
    iget-object v0, p0, Lcom/chery/btphone/receiver/PbapStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
