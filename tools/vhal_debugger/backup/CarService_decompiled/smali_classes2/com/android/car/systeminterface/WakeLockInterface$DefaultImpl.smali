.class public Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;
.super Ljava/lang/Object;
.source "WakeLockInterface.java"

# interfaces
.implements Lcom/android/car/systeminterface/WakeLockInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/systeminterface/WakeLockInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImpl"
.end annotation


# instance fields
.field private final mFullWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPartialWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    nop

    .line 38
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 39
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string v1, "CAR.POWER"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 41
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 43
    return-void
.end method


# virtual methods
.method public releaseAllWakeLocks()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 73
    :cond_1
    return-void
.end method

.method public switchToFullWakeLock()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 63
    :cond_1
    return-void
.end method

.method public switchToPartialWakeLock()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 53
    :cond_1
    return-void
.end method
