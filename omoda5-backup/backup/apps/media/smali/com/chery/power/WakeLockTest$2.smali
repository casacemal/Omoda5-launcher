.class Lcom/chery/power/WakeLockTest$2;
.super Ljava/lang/Object;
.source "WakeLockTest.java"

# interfaces
.implements Lcom/chery/power/PowerWakeLock$ProxyWakeLockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/power/WakeLockTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/power/WakeLockTest;


# direct methods
.method constructor <init>(Lcom/chery/power/WakeLockTest;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/chery/power/WakeLockTest$2;->this$0:Lcom/chery/power/WakeLockTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWakeLockRelease(I)V
    .locals 1

    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onWakeLockRelease:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WakeLockTest"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
