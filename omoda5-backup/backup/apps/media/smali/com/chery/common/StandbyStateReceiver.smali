.class public Lcom/chery/common/StandbyStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StandbyStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/common/StandbyStateReceiver$StandbyStateListener;
    }
.end annotation


# static fields
.field public static final ACTION_POWER_EVENT:Ljava/lang/String; = "com.chery.power.standby"

.field public static final EXTRA_POWER_EVENT_ID:Ljava/lang/String; = "EVENT_ID"

.field private static final TAG:Ljava/lang/String; = "StandbyStateReceiver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mStandbyStateListener:Lcom/chery/common/StandbyStateReceiver$StandbyStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/chery/common/StandbyStateReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 29
    iput-object p1, p0, Lcom/chery/common/StandbyStateReceiver;->mContext:Landroid/content/Context;

    const-string p0, "com.chery.power.standby"

    .line 30
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private handleEvent(I)V
    .locals 1

    .line 50
    iget-object p0, p0, Lcom/chery/common/StandbyStateReceiver;->mStandbyStateListener:Lcom/chery/common/StandbyStateReceiver$StandbyStateListener;

    if-eqz p0, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 52
    :goto_0
    invoke-interface {p0, p1}, Lcom/chery/common/StandbyStateReceiver$StandbyStateListener;->onStandbyState(Z)V

    goto :goto_1

    :cond_1
    const-string p0, "StandbyStateReceiver"

    const-string p1, "handleEvent: no listener"

    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "EVENT_ID"

    const/4 v0, -0x1

    .line 45
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 46
    invoke-direct {p0, p1}, Lcom/chery/common/StandbyStateReceiver;->handleEvent(I)V

    return-void
.end method

.method public register(Lcom/chery/common/StandbyStateReceiver$StandbyStateListener;)V
    .locals 1

    .line 34
    iput-object p1, p0, Lcom/chery/common/StandbyStateReceiver;->mStandbyStateListener:Lcom/chery/common/StandbyStateReceiver$StandbyStateListener;

    .line 35
    iget-object p1, p0, Lcom/chery/common/StandbyStateReceiver;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/chery/common/StandbyStateReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/chery/common/StandbyStateReceiver;->mStandbyStateListener:Lcom/chery/common/StandbyStateReceiver$StandbyStateListener;

    .line 40
    iget-object v0, p0, Lcom/chery/common/StandbyStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
