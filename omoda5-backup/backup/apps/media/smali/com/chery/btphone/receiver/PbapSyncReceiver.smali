.class public Lcom/chery/btphone/receiver/PbapSyncReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PbapSyncReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/btphone/receiver/PbapSyncReceiver$PbapSyncListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PbapSyncReceiver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mPbapSyncListener:Lcom/chery/btphone/receiver/PbapSyncReceiver$PbapSyncListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/chery/btphone/receiver/PbapSyncReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 25
    iput-object p1, p0, Lcom/chery/btphone/receiver/PbapSyncReceiver;->mContext:Landroid/content/Context;

    const-string p0, "android.bluetooth.pbap.profile.action.SYNC_STATE_CHANGED"

    .line 26
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private handleEvent(II)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/chery/btphone/receiver/PbapSyncReceiver;->mPbapSyncListener:Lcom/chery/btphone/receiver/PbapSyncReceiver$PbapSyncListener;

    if-eqz p0, :cond_0

    .line 49
    invoke-interface {p0, p1, p2}, Lcom/chery/btphone/receiver/PbapSyncReceiver$PbapSyncListener;->onSyncState(II)V

    goto :goto_0

    :cond_0
    const-string p0, "PbapSyncReceiver"

    const-string p1, "handleEvent: no listener"

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.bluetooth.pbap.extra.SYNC_TYPE"

    const/4 v0, -0x1

    .line 41
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.bluetooth.pbap.extra.SYNC_STATE"

    .line 42
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/chery/btphone/receiver/PbapSyncReceiver;->handleEvent(II)V

    return-void
.end method

.method public register(Lcom/chery/btphone/receiver/PbapSyncReceiver$PbapSyncListener;)V
    .locals 1

    .line 30
    iput-object p1, p0, Lcom/chery/btphone/receiver/PbapSyncReceiver;->mPbapSyncListener:Lcom/chery/btphone/receiver/PbapSyncReceiver$PbapSyncListener;

    .line 31
    iget-object p1, p0, Lcom/chery/btphone/receiver/PbapSyncReceiver;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/chery/btphone/receiver/PbapSyncReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/chery/btphone/receiver/PbapSyncReceiver;->mPbapSyncListener:Lcom/chery/btphone/receiver/PbapSyncReceiver$PbapSyncListener;

    .line 36
    iget-object v0, p0, Lcom/chery/btphone/receiver/PbapSyncReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
