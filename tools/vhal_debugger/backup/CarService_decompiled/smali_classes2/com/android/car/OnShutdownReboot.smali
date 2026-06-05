.class Lcom/android/car/OnShutdownReboot;
.super Ljava/lang/Object;
.source "OnShutdownReboot.java"


# instance fields
.field private final mActions:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/function/BiConsumer<",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/OnShutdownReboot;->mLock:Ljava/lang/Object;

    .line 41
    new-instance v0, Lcom/android/car/OnShutdownReboot$1;

    invoke-direct {v0, p0}, Lcom/android/car/OnShutdownReboot$1;-><init>(Lcom/android/car/OnShutdownReboot;)V

    iput-object v0, p0, Lcom/android/car/OnShutdownReboot;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/OnShutdownReboot;->mActions:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    iput-object p1, p0, Lcom/android/car/OnShutdownReboot;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "shutdownFilter":Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "rebootFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/car/OnShutdownReboot;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/car/OnShutdownReboot;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    iget-object v2, p0, Lcom/android/car/OnShutdownReboot;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/car/OnShutdownReboot;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/OnShutdownReboot;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/OnShutdownReboot;

    .line 36
    iget-object v0, p0, Lcom/android/car/OnShutdownReboot;->mActions:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method


# virtual methods
.method addAction(Ljava/util/function/BiConsumer;)Lcom/android/car/OnShutdownReboot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ">;)",
            "Lcom/android/car/OnShutdownReboot;"
        }
    .end annotation

    .line 62
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/content/Context;Landroid/content/Intent;>;"
    iget-object v0, p0, Lcom/android/car/OnShutdownReboot;->mActions:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-object p0
.end method

.method clearActions()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/car/OnShutdownReboot;->mActions:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 68
    return-void
.end method
