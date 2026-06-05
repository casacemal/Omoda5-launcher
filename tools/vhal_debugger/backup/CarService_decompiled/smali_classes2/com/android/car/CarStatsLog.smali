.class public Lcom/android/car/CarStatsLog;
.super Ljava/lang/Object;
.source "CarStatsLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logGarageModeStart()V
    .locals 2

    .line 36
    const/16 v0, 0xcc

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(IZ)I

    .line 37
    return-void
.end method

.method public static logGarageModeStop()V
    .locals 2

    .line 41
    const/16 v0, 0xcc

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(IZ)I

    .line 42
    return-void
.end method

.method public static logPowerState(I)V
    .locals 1
    .param p0, "state"    # I

    .line 31
    const/16 v0, 0xcb

    invoke-static {v0, p0}, Landroid/util/StatsLog;->write(II)I

    .line 32
    return-void
.end method
