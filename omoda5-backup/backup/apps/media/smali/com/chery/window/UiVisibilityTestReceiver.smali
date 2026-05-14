.class public Lcom/chery/window/UiVisibilityTestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UiVisibilityTestReceiver.java"


# static fields
.field private static final ACTION_WINDOW_EVENT_TEST:Ljava/lang/String; = "com.chery.window.test"

.field public static final EVENT_FULLSCREEN:I = 0x2

.field public static final EVENT_FULLSCREEN_EXIT:I = 0x3

.field public static final EVENT_INIT:I = 0x1

.field public static final EVENT_QUICK_SETINGS_HIDE:I = 0x8

.field public static final EVENT_QUICK_SETINGS_SHOW_FULL:I = 0x6

.field public static final EVENT_QUICK_SETINGS_SHOW_MINI:I = 0x7

.field public static final EVENT_STATUS_BAR_HIDE:I = 0x5

.field public static final EVENT_STATUS_BAR_SHOW:I = 0x4

.field public static final EVENT_UNINIT:I = 0x64

.field private static final EXTRA_WINDOW_EVENT_ID:Ljava/lang/String; = "EVENT_ID"

.field private static final TAG:Ljava/lang/String; = "UiVisibilityTestReceiver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mUiVisibilityTes2:Lcom/chery/window/UiVisibilityTest;

.field private final mUiVisibilityTes3:Lcom/chery/window/UiVisibilityTest;

.field private final mUiVisibilityTest:Lcom/chery/window/UiVisibilityTest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 38
    iput-object p1, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/chery/window/UiVisibilityTest;

    const/4 v1, 0x3

    const-string v2, "TEST1"

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/chery/window/UiVisibilityTest;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mUiVisibilityTest:Lcom/chery/window/UiVisibilityTest;

    .line 41
    new-instance v0, Lcom/chery/window/UiVisibilityTest;

    const/4 v1, 0x2

    const-string v2, "TEST2"

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/chery/window/UiVisibilityTest;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mUiVisibilityTes2:Lcom/chery/window/UiVisibilityTest;

    .line 42
    new-instance v0, Lcom/chery/window/UiVisibilityTest;

    const/4 v1, 0x4

    const-string v2, "TEST3"

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/chery/window/UiVisibilityTest;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mUiVisibilityTes3:Lcom/chery/window/UiVisibilityTest;

    .line 43
    iget-object p0, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "com.chery.window.test"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private handleEvent(I)V
    .locals 4

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    iget-object p0, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mUiVisibilityTes3:Lcom/chery/window/UiVisibilityTest;

    invoke-virtual {p0, v1, v2}, Lcom/chery/window/UiVisibilityTest;->setUiVisibility(II)V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object p0, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mUiVisibilityTes3:Lcom/chery/window/UiVisibilityTest;

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/chery/window/UiVisibilityTest;->setUiVisibility(II)V

    goto :goto_0

    .line 90
    :pswitch_2
    iget-object p0, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mUiVisibilityTes3:Lcom/chery/window/UiVisibilityTest;

    invoke-virtual {p0, v1, v3}, Lcom/chery/window/UiVisibilityTest;->setUiVisibility(II)V

    goto :goto_0

    .line 85
    :pswitch_3
    iget-object p0, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mUiVisibilityTes2:Lcom/chery/window/UiVisibilityTest;

    invoke-virtual {p0, v3, v2}, Lcom/chery/window/UiVisibilityTest;->setUiVisibility(II)V

    goto :goto_0

    .line 82
    :pswitch_4
    iget-object p0, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mUiVisibilityTes2:Lcom/chery/window/UiVisibilityTest;

    invoke-virtual {p0, v3, v3}, Lcom/chery/window/UiVisibilityTest;->setUiVisibility(II)V

    goto :goto_0

    .line 77
    :pswitch_5
    iget-object p0, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mUiVisibilityTest:Lcom/chery/window/UiVisibilityTest;

    invoke-virtual {p0, v0, v3}, Lcom/chery/window/UiVisibilityTest;->setUiVisibility(II)V

    goto :goto_0

    .line 72
    :pswitch_6
    iget-object p0, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mUiVisibilityTest:Lcom/chery/window/UiVisibilityTest;

    invoke-virtual {p0, v0, v2}, Lcom/chery/window/UiVisibilityTest;->setUiVisibility(II)V

    goto :goto_0

    .line 65
    :pswitch_7
    iget-object p1, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mUiVisibilityTest:Lcom/chery/window/UiVisibilityTest;

    invoke-virtual {p1}, Lcom/chery/window/UiVisibilityTest;->init()V

    .line 66
    iget-object p1, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mUiVisibilityTes2:Lcom/chery/window/UiVisibilityTest;

    invoke-virtual {p1}, Lcom/chery/window/UiVisibilityTest;->init()V

    .line 67
    iget-object p0, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mUiVisibilityTes3:Lcom/chery/window/UiVisibilityTest;

    invoke-virtual {p0}, Lcom/chery/window/UiVisibilityTest;->init()V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mUiVisibilityTest:Lcom/chery/window/UiVisibilityTest;

    invoke-virtual {p1}, Lcom/chery/window/UiVisibilityTest;->uninit()V

    .line 104
    iget-object p1, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mUiVisibilityTes2:Lcom/chery/window/UiVisibilityTest;

    invoke-virtual {p1}, Lcom/chery/window/UiVisibilityTest;->uninit()V

    .line 105
    iget-object p0, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mUiVisibilityTes3:Lcom/chery/window/UiVisibilityTest;

    invoke-virtual {p0}, Lcom/chery/window/UiVisibilityTest;->uninit()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 56
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 58
    invoke-direct {p0, p1}, Lcom/chery/window/UiVisibilityTestReceiver;->handleEvent(I)V

    return-void
.end method

.method public register()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/chery/window/UiVisibilityTestReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
