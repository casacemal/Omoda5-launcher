.class public Lcom/chery/input/HardKeyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HardKeyReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/input/HardKeyReceiver$InputFilter;,
        Lcom/chery/input/HardKeyReceiver$KeyEventListener;
    }
.end annotation


# static fields
.field private static final ACTION_ENTER_HARD_KEY_TEST:Ljava/lang/String; = "com.yfve.engineeringmode.enter.hardkey_test"

.field private static final ACTION_HARDKEY_EVENT_TEST:Ljava/lang/String; = "com.saic.keyevent.hardkey.test"

.field private static final TAG:Ljava/lang/String; = "Input.HardKeyReceiver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEngTest:Z

.field private final mHandledKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/chery/input/HardKeyReceiver$InputFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mKeyEventListener:Lcom/chery/input/HardKeyReceiver$KeyEventListener;

.field private mLongPress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/chery/input/HardKeyReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/input/HardKeyReceiver;->mHandledKeys:Ljava/util/Map;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/chery/input/HardKeyReceiver;->mEngTest:Z

    .line 46
    iput-boolean v0, p0, Lcom/chery/input/HardKeyReceiver;->mLongPress:Z

    .line 50
    iput-object p1, p0, Lcom/chery/input/HardKeyReceiver;->mContext:Landroid/content/Context;

    .line 51
    iget-object p1, p0, Lcom/chery/input/HardKeyReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.yfve.engineeringmode.enter.hardkey_test"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/chery/input/HardKeyReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.saic.keyevent.hardkey.test"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object p0, p0, Lcom/chery/input/HardKeyReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "com.saic.keyevent.hardkey.report"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private handleCustomKey(Landroid/view/KeyEvent;)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/chery/input/HardKeyReceiver;->mKeyEventListener:Lcom/chery/input/HardKeyReceiver$KeyEventListener;

    if-eqz p0, :cond_0

    .line 113
    invoke-interface {p0, p1}, Lcom/chery/input/HardKeyReceiver$KeyEventListener;->onKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_0
    const-string p0, "Input.HardKeyReceiver"

    const-string p1, "handleCustomKey: no listener"

    .line 115
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isCustomEventHandler(I)Z
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/chery/input/HardKeyReceiver;->mHandledKeys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private setHandledKeys([Lcom/chery/input/HardKeyReceiver$InputFilter;)V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/chery/input/HardKeyReceiver;->mHandledKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 122
    iget-object v3, p0, Lcom/chery/input/HardKeyReceiver;->mHandledKeys:Ljava/util/Map;

    iget v4, v2, Lcom/chery/input/HardKeyReceiver$InputFilter;->mKeyCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.yfve.engineeringmode.enter.hardkey_test"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "Input.HardKeyReceiver"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p1, "is_hard_key_test"

    .line 72
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/chery/input/HardKeyReceiver;->mEngTest:Z

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ENTER_HARD_KEY_TEST:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/chery/input/HardKeyReceiver;->mEngTest:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_0
    iget-boolean p1, p0, Lcom/chery/input/HardKeyReceiver;->mEngTest:Z

    if-eqz p1, :cond_1

    const-string p0, "it is in ENTER_HARD_KEY_TEST"

    .line 78
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p1, -0x1

    const-string v2, "android.intent.extra.hardkey.keycode"

    .line 82
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 83
    invoke-direct {p0, p1}, Lcom/chery/input/HardKeyReceiver;->isCustomEventHandler(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "android.intent.extra.hardkey.down"

    .line 84
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "android.intent.extra.hardkey.longpress"

    .line 85
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 86
    new-instance v3, Landroid/view/KeyEvent;

    xor-int/lit8 v4, v2, 0x1

    invoke-direct {v3, v4, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "down:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",longPress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",keyCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x80

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 89
    iput-boolean p2, p0, Lcom/chery/input/HardKeyReceiver;->mLongPress:Z

    .line 90
    invoke-virtual {v3, p1}, Landroid/view/KeyEvent;->setFlags(I)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 92
    iput-boolean v1, p0, Lcom/chery/input/HardKeyReceiver;->mLongPress:Z

    goto :goto_0

    .line 94
    :cond_3
    iget-boolean p2, p0, Lcom/chery/input/HardKeyReceiver;->mLongPress:Z

    if-eqz p2, :cond_4

    .line 95
    invoke-virtual {v3, p1}, Landroid/view/KeyEvent;->setFlags(I)V

    .line 99
    :cond_4
    :goto_0
    invoke-direct {p0, v3}, Lcom/chery/input/HardKeyReceiver;->handleCustomKey(Landroid/view/KeyEvent;)V

    goto :goto_1

    :cond_5
    const-string p0, "no filter key"

    .line 102
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public register([Lcom/chery/input/HardKeyReceiver$InputFilter;Lcom/chery/input/HardKeyReceiver$KeyEventListener;)V
    .locals 0

    .line 57
    iput-object p2, p0, Lcom/chery/input/HardKeyReceiver;->mKeyEventListener:Lcom/chery/input/HardKeyReceiver$KeyEventListener;

    .line 58
    invoke-direct {p0, p1}, Lcom/chery/input/HardKeyReceiver;->setHandledKeys([Lcom/chery/input/HardKeyReceiver$InputFilter;)V

    .line 59
    iget-object p1, p0, Lcom/chery/input/HardKeyReceiver;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/chery/input/HardKeyReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/chery/input/HardKeyReceiver;->mKeyEventListener:Lcom/chery/input/HardKeyReceiver$KeyEventListener;

    .line 64
    iget-object v0, p0, Lcom/chery/input/HardKeyReceiver;->mHandledKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 65
    iget-object v0, p0, Lcom/chery/input/HardKeyReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
