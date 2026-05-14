.class public Lcom/chery/power/WakeLockTestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WakeLockTestReceiver.java"


# static fields
.field private static final ACTION_WAKE_EVENT_TEST:Ljava/lang/String; = "com.chery.power.test"

.field public static final EVENT_DIALOG_RELEASE:I = 0xc

.field public static final EVENT_DIALOG_WAKE:I = 0xb

.field public static final EVENT_INIT:I = 0x1

.field public static final EVENT_LOCK_2_3:I = 0x8

.field public static final EVENT_REALSE:I = 0x3

.field public static final EVENT_RELEASE_2:I = 0x9

.field public static final EVENT_RELEASE_3:I = 0xa

.field public static final EVENT_SCREEN_LOCK:I = 0x4

.field public static final EVENT_SCREEN_OFF:I = 0x6

.field public static final EVENT_SCREEN_ON:I = 0x7

.field public static final EVENT_SCREEN_UNLOCK:I = 0x5

.field public static final EVENT_UNINIT:I = 0x64

.field public static final EVENT_WAKE:I = 0x2

.field private static final EXTRA_WAKE_EVENT_ID:Ljava/lang/String; = "EVENT_ID"

.field private static final TAG:Ljava/lang/String; = "WakeLockTestReceiver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mWakeLockTest:Lcom/chery/power/WakeLockTest;

.field private final mWakeLockTest2:Lcom/chery/power/WakeLockTest;

.field private final mWakeLockTest3:Lcom/chery/power/WakeLockTest;

.field private final mWakeLockTest4:Lcom/chery/power/WakeLockTest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/chery/power/WakeLockTestReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 48
    iput-object p1, p0, Lcom/chery/power/WakeLockTestReceiver;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/chery/power/WakeLockTest;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/chery/power/WakeLockTest;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest:Lcom/chery/power/WakeLockTest;

    .line 50
    new-instance v0, Lcom/chery/power/WakeLockTest;

    invoke-direct {v0, p1, v1}, Lcom/chery/power/WakeLockTest;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest2:Lcom/chery/power/WakeLockTest;

    .line 51
    new-instance v0, Lcom/chery/power/WakeLockTest;

    invoke-direct {v0, p1, v1}, Lcom/chery/power/WakeLockTest;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest3:Lcom/chery/power/WakeLockTest;

    .line 53
    new-instance v0, Lcom/chery/power/WakeLockTest;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/chery/power/WakeLockTest;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest4:Lcom/chery/power/WakeLockTest;

    .line 54
    iget-object p0, p0, Lcom/chery/power/WakeLockTestReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "com.chery.power.test"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private handleEvent(I)V
    .locals 1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 118
    :pswitch_0
    iget-object p0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest4:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p0}, Lcom/chery/power/WakeLockTest;->releaseLock()V

    goto/16 :goto_0

    .line 113
    :pswitch_1
    iget-object p1, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest4:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p1}, Lcom/chery/power/WakeLockTest;->screenOn()V

    .line 114
    iget-object p0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest4:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p0}, Lcom/chery/power/WakeLockTest;->wakeLock()V

    goto :goto_0

    .line 109
    :pswitch_2
    iget-object p0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest3:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p0}, Lcom/chery/power/WakeLockTest;->releaseLock()V

    goto :goto_0

    .line 106
    :pswitch_3
    iget-object p0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest2:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p0}, Lcom/chery/power/WakeLockTest;->releaseLock()V

    goto :goto_0

    .line 102
    :pswitch_4
    iget-object p1, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest2:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p1}, Lcom/chery/power/WakeLockTest;->wakeLock()V

    .line 103
    iget-object p0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest3:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p0}, Lcom/chery/power/WakeLockTest;->wakeLock()V

    goto :goto_0

    .line 98
    :pswitch_5
    iget-object p0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p0}, Lcom/chery/power/WakeLockTest;->screenOn()V

    goto :goto_0

    .line 95
    :pswitch_6
    iget-object p0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p0}, Lcom/chery/power/WakeLockTest;->screenOff()V

    goto :goto_0

    .line 92
    :pswitch_7
    iget-object p0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p0}, Lcom/chery/power/WakeLockTest;->screenUnlock()V

    goto :goto_0

    .line 89
    :pswitch_8
    iget-object p0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p0}, Lcom/chery/power/WakeLockTest;->screenLock()V

    goto :goto_0

    .line 85
    :pswitch_9
    iget-object p0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p0}, Lcom/chery/power/WakeLockTest;->releaseLock()V

    goto :goto_0

    .line 82
    :pswitch_a
    iget-object p0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p0}, Lcom/chery/power/WakeLockTest;->wakeLock()V

    goto :goto_0

    .line 75
    :pswitch_b
    iget-object p1, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p1}, Lcom/chery/power/WakeLockTest;->init()V

    .line 76
    iget-object p1, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest2:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p1}, Lcom/chery/power/WakeLockTest;->init()V

    .line 77
    iget-object p1, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest3:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p1}, Lcom/chery/power/WakeLockTest;->init()V

    .line 78
    iget-object p0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest4:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p0}, Lcom/chery/power/WakeLockTest;->init()V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p1}, Lcom/chery/power/WakeLockTest;->uninit()V

    .line 122
    iget-object p1, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest2:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p1}, Lcom/chery/power/WakeLockTest;->uninit()V

    .line 123
    iget-object p1, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest3:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p1}, Lcom/chery/power/WakeLockTest;->uninit()V

    .line 124
    iget-object p0, p0, Lcom/chery/power/WakeLockTestReceiver;->mWakeLockTest4:Lcom/chery/power/WakeLockTest;

    invoke-virtual {p0}, Lcom/chery/power/WakeLockTest;->uninit()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "EVENT_ID"

    const/4 v0, -0x1

    .line 67
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 69
    invoke-direct {p0, p1}, Lcom/chery/power/WakeLockTestReceiver;->handleEvent(I)V

    return-void
.end method

.method public register()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/chery/power/WakeLockTestReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/chery/power/WakeLockTestReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/chery/power/WakeLockTestReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
