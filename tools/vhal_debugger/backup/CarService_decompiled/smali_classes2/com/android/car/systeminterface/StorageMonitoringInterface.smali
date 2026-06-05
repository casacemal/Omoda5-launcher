.class public interface abstract Lcom/android/car/systeminterface/StorageMonitoringInterface;
.super Ljava/lang/Object;
.source "StorageMonitoringInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/systeminterface/StorageMonitoringInterface$DefaultImpl;
    }
.end annotation


# virtual methods
.method public getFlashWearInformationProviders()[Lcom/android/car/storagemonitoring/WearInformationProvider;
    .locals 3

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/car/storagemonitoring/WearInformationProvider;

    new-instance v1, Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;

    invoke-direct {v1}, Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;

    invoke-direct {v1}, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider;

    invoke-direct {v1}, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getLifetimeWriteInfoProvider()Lcom/android/car/storagemonitoring/LifetimeWriteInfoProvider;
    .locals 1

    .line 45
    new-instance v0, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;

    invoke-direct {v0}, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;-><init>()V

    return-object v0
.end method

.method public getUidIoStatsProvider()Lcom/android/car/storagemonitoring/UidIoStatsProvider;
    .locals 1

    .line 41
    new-instance v0, Lcom/android/car/storagemonitoring/ProcfsUidIoStatsProvider;

    invoke-direct {v0}, Lcom/android/car/storagemonitoring/ProcfsUidIoStatsProvider;-><init>()V

    return-object v0
.end method
