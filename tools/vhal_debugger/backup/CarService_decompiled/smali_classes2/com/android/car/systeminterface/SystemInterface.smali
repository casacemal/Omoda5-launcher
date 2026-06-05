.class public Lcom/android/car/systeminterface/SystemInterface;
.super Ljava/lang/Object;
.source "SystemInterface.java"

# interfaces
.implements Lcom/android/car/systeminterface/DisplayInterface;
.implements Lcom/android/car/systeminterface/IOInterface;
.implements Lcom/android/car/systeminterface/StorageMonitoringInterface;
.implements Lcom/android/car/systeminterface/SystemStateInterface;
.implements Lcom/android/car/systeminterface/TimeInterface;
.implements Lcom/android/car/systeminterface/WakeLockInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/systeminterface/SystemInterface$Builder;
    }
.end annotation


# instance fields
.field private final mDisplayInterface:Lcom/android/car/systeminterface/DisplayInterface;

.field private final mIOInterface:Lcom/android/car/systeminterface/IOInterface;

.field private final mStorageMonitoringInterface:Lcom/android/car/systeminterface/StorageMonitoringInterface;

.field private final mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

.field private final mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

.field private final mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;


# direct methods
.method constructor <init>(Lcom/android/car/systeminterface/DisplayInterface;Lcom/android/car/systeminterface/IOInterface;Lcom/android/car/systeminterface/StorageMonitoringInterface;Lcom/android/car/systeminterface/SystemStateInterface;Lcom/android/car/systeminterface/TimeInterface;Lcom/android/car/systeminterface/WakeLockInterface;)V
    .locals 0
    .param p1, "displayInterface"    # Lcom/android/car/systeminterface/DisplayInterface;
    .param p2, "ioInterface"    # Lcom/android/car/systeminterface/IOInterface;
    .param p3, "storageMonitoringInterface"    # Lcom/android/car/systeminterface/StorageMonitoringInterface;
    .param p4, "systemStateInterface"    # Lcom/android/car/systeminterface/SystemStateInterface;
    .param p5, "timeInterface"    # Lcom/android/car/systeminterface/TimeInterface;
    .param p6, "wakeLockInterface"    # Lcom/android/car/systeminterface/WakeLockInterface;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/car/systeminterface/SystemInterface;->mDisplayInterface:Lcom/android/car/systeminterface/DisplayInterface;

    .line 54
    iput-object p2, p0, Lcom/android/car/systeminterface/SystemInterface;->mIOInterface:Lcom/android/car/systeminterface/IOInterface;

    .line 55
    iput-object p3, p0, Lcom/android/car/systeminterface/SystemInterface;->mStorageMonitoringInterface:Lcom/android/car/systeminterface/StorageMonitoringInterface;

    .line 56
    iput-object p4, p0, Lcom/android/car/systeminterface/SystemInterface;->mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

    .line 57
    iput-object p5, p0, Lcom/android/car/systeminterface/SystemInterface;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    .line 58
    iput-object p6, p0, Lcom/android/car/systeminterface/SystemInterface;->mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;

    .line 59
    return-void
.end method


# virtual methods
.method public cancelAllActions()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/TimeInterface;->cancelAllActions()V

    .line 113
    return-void
.end method

.method public enterDeepSleep()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/SystemStateInterface;->enterDeepSleep()Z

    move-result v0

    return v0
.end method

.method public getDisplayInterface()Lcom/android/car/systeminterface/DisplayInterface;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mDisplayInterface:Lcom/android/car/systeminterface/DisplayInterface;

    return-object v0
.end method

.method public getFlashWearInformationProviders()[Lcom/android/car/storagemonitoring/WearInformationProvider;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mStorageMonitoringInterface:Lcom/android/car/systeminterface/StorageMonitoringInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/StorageMonitoringInterface;->getFlashWearInformationProviders()[Lcom/android/car/storagemonitoring/WearInformationProvider;

    move-result-object v0

    return-object v0
.end method

.method public getIOInterface()Lcom/android/car/systeminterface/IOInterface;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mIOInterface:Lcom/android/car/systeminterface/IOInterface;

    return-object v0
.end method

.method public getLifetimeWriteInfoProvider()Lcom/android/car/storagemonitoring/LifetimeWriteInfoProvider;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mStorageMonitoringInterface:Lcom/android/car/systeminterface/StorageMonitoringInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/StorageMonitoringInterface;->getLifetimeWriteInfoProvider()Lcom/android/car/storagemonitoring/LifetimeWriteInfoProvider;

    move-result-object v0

    return-object v0
.end method

.method public getRunningProcesses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/car/procfsinspector/ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/SystemStateInterface;->getRunningProcesses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSystemCarDir()Ljava/io/File;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mIOInterface:Lcom/android/car/systeminterface/IOInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/IOInterface;->getSystemCarDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSystemStateInterface()Lcom/android/car/systeminterface/SystemStateInterface;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

    return-object v0
.end method

.method public getTimeInterface()Lcom/android/car/systeminterface/TimeInterface;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    return-object v0
.end method

.method public getUidIoStatsProvider()Lcom/android/car/storagemonitoring/UidIoStatsProvider;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mStorageMonitoringInterface:Lcom/android/car/systeminterface/StorageMonitoringInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/StorageMonitoringInterface;->getUidIoStatsProvider()Lcom/android/car/storagemonitoring/UidIoStatsProvider;

    move-result-object v0

    return-object v0
.end method

.method public getUptime()J
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/TimeInterface;->getUptime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUptime(Z)J
    .locals 2
    .param p1, "includeDeepSleepTime"    # Z

    .line 97
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    invoke-interface {v0, p1}, Lcom/android/car/systeminterface/TimeInterface;->getUptime(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWakeLockInterface()Lcom/android/car/systeminterface/WakeLockInterface;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;

    return-object v0
.end method

.method public isSystemSupportingDeepSleep()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/SystemStateInterface;->isSystemSupportingDeepSleep()Z

    move-result v0

    return v0
.end method

.method public isWakeupCausedByTimer()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/SystemStateInterface;->isWakeupCausedByTimer()Z

    move-result v0

    return v0
.end method

.method public reconfigureSecondaryDisplays()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mDisplayInterface:Lcom/android/car/systeminterface/DisplayInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/DisplayInterface;->reconfigureSecondaryDisplays()V

    .line 128
    return-void
.end method

.method public refreshDisplayBrightness()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mDisplayInterface:Lcom/android/car/systeminterface/DisplayInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/DisplayInterface;->refreshDisplayBrightness()V

    .line 183
    return-void
.end method

.method public releaseAllWakeLocks()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/WakeLockInterface;->releaseAllWakeLocks()V

    .line 78
    return-void
.end method

.method public scheduleAction(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMs"    # J

    .line 102
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/car/systeminterface/TimeInterface;->scheduleAction(Ljava/lang/Runnable;J)V

    .line 103
    return-void
.end method

.method public scheduleActionForBootCompleted(Ljava/lang/Runnable;Ljava/time/Duration;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delay"    # Ljava/time/Duration;

    .line 167
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/car/systeminterface/SystemStateInterface;->scheduleActionForBootCompleted(Ljava/lang/Runnable;Ljava/time/Duration;)V

    .line 168
    return-void
.end method

.method public setCarServiceHelper(Lcom/android/internal/car/ICarServiceHelper;)V
    .locals 1
    .param p1, "helper"    # Lcom/android/internal/car/ICarServiceHelper;

    .line 67
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

    invoke-interface {v0, p1}, Lcom/android/car/systeminterface/SystemStateInterface;->setCarServiceHelper(Lcom/android/internal/car/ICarServiceHelper;)V

    .line 68
    return-void
.end method

.method public setDisplayBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .line 117
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mDisplayInterface:Lcom/android/car/systeminterface/DisplayInterface;

    invoke-interface {v0, p1}, Lcom/android/car/systeminterface/DisplayInterface;->setDisplayBrightness(I)V

    .line 118
    return-void
.end method

.method public setDisplayState(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 122
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mDisplayInterface:Lcom/android/car/systeminterface/DisplayInterface;

    invoke-interface {v0, p1}, Lcom/android/car/systeminterface/DisplayInterface;->setDisplayState(Z)V

    .line 123
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/SystemStateInterface;->shutdown()V

    .line 158
    return-void
.end method

.method public startDisplayStateMonitoring(Lcom/android/car/CarPowerManagementService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/car/CarPowerManagementService;

    .line 132
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mDisplayInterface:Lcom/android/car/systeminterface/DisplayInterface;

    invoke-interface {v0, p1}, Lcom/android/car/systeminterface/DisplayInterface;->startDisplayStateMonitoring(Lcom/android/car/CarPowerManagementService;)V

    .line 133
    return-void
.end method

.method public stopDisplayStateMonitoring()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mDisplayInterface:Lcom/android/car/systeminterface/DisplayInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/DisplayInterface;->stopDisplayStateMonitoring()V

    .line 138
    return-void
.end method

.method public switchToFullWakeLock()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/WakeLockInterface;->switchToFullWakeLock()V

    .line 88
    return-void
.end method

.method public switchToPartialWakeLock()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface;->mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;

    invoke-interface {v0}, Lcom/android/car/systeminterface/WakeLockInterface;->switchToPartialWakeLock()V

    .line 83
    return-void
.end method
