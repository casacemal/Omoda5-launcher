.class public interface abstract Lcom/android/car/systeminterface/TimeInterface;
.super Ljava/lang/Object;
.source "TimeInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/systeminterface/TimeInterface$DefaultImpl;
    }
.end annotation


# static fields
.field public static final EXCLUDE_DEEP_SLEEP_TIME:Z = false

.field public static final INCLUDE_DEEP_SLEEP_TIME:Z = true


# virtual methods
.method public abstract cancelAllActions()V
.end method

.method public getUptime()J
    .locals 2

    .line 33
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/car/systeminterface/TimeInterface;->getUptime(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUptime(Z)J
    .locals 2
    .param p1, "includeDeepSleepTime"    # Z

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 36
    :goto_0
    return-wide v0
.end method

.method public abstract scheduleAction(Ljava/lang/Runnable;J)V
.end method
