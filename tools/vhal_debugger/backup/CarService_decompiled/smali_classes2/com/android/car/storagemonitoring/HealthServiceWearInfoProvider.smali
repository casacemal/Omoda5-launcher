.class public Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider;
.super Ljava/lang/Object;
.source "HealthServiceWearInfoProvider.java"

# interfaces
.implements Lcom/android/car/storagemonitoring/WearInformationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$IHealthSupplier;
    }
.end annotation


# static fields
.field private static final INSTANCE_HEALTHD:Ljava/lang/String; = "backup"

.field private static final INSTANCE_VENDOR:Ljava/lang/String; = "default"

.field private static final sAllInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHealthSupplier:Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$IHealthSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-string v0, "default"

    const-string v1, "backup"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider;->sAllInstances:Ljava/util/List;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$1;

    invoke-direct {v0, p0}, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$1;-><init>(Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider;)V

    iput-object v0, p0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider;->mHealthSupplier:Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$IHealthSupplier;

    .line 49
    return-void
.end method

.method private getHealthService()Landroid/hardware/health/V2_0/IHealth;
    .locals 4

    .line 108
    sget-object v0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider;->sAllInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 111
    .local v2, "newService":Landroid/hardware/health/V2_0/IHealth;
    :try_start_0
    iget-object v3, p0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider;->mHealthSupplier:Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$IHealthSupplier;

    invoke-interface {v3, v1}, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$IHealthSupplier;->get(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 114
    goto :goto_1

    .line 112
    :catch_0
    move-exception v3

    .line 115
    :goto_1
    if-eqz v2, :cond_0

    .line 116
    return-object v2

    .line 118
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "newService":Landroid/hardware/health/V2_0/IHealth;
    :cond_0
    goto :goto_0

    .line 119
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public load()Lcom/android/car/storagemonitoring/WearInformation;
    .locals 14

    .line 54
    invoke-direct {p0}, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider;->getHealthService()Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    .line 55
    .local v0, "healthService":Landroid/hardware/health/V2_0/IHealth;
    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 56
    .local v1, "success":Landroid/util/MutableInt;
    new-instance v2, Landroid/util/MutableInt;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableInt;-><init>(I)V

    .line 57
    .local v2, "foundInternalStorageDeviceInfo":Landroid/util/MutableInt;
    new-instance v4, Landroid/util/MutableInt;

    invoke-direct {v4, v3}, Landroid/util/MutableInt;-><init>(I)V

    move-object v10, v4

    .line 58
    .local v10, "lifetimeA":Landroid/util/MutableInt;
    new-instance v4, Landroid/util/MutableInt;

    invoke-direct {v4, v3}, Landroid/util/MutableInt;-><init>(I)V

    move-object v11, v4

    .line 59
    .local v11, "lifetimeB":Landroid/util/MutableInt;
    new-instance v4, Landroid/util/MutableInt;

    invoke-direct {v4, v3}, Landroid/util/MutableInt;-><init>(I)V

    move-object v12, v4

    .line 61
    .local v12, "preEol":Landroid/util/MutableInt;
    new-instance v13, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$2;

    move-object v3, v13

    move-object v4, p0

    move-object v5, v1

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$2;-><init>(Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider;Landroid/util/MutableInt;Landroid/util/MutableInt;Landroid/util/MutableInt;Landroid/util/MutableInt;Landroid/util/MutableInt;)V

    .line 80
    .local v3, "getStorageInfoCallback":Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;
    const/4 v4, 0x0

    const-string v5, "CAR.STORAGE"

    if-nez v0, :cond_0

    .line 81
    const-string v6, "No health service is available to fetch wear information."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object v4

    .line 86
    :cond_0
    :try_start_0
    invoke-interface {v0, v3}, Landroid/hardware/health/V2_0/IHealth;->getStorageInfo(Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .line 93
    iget v6, v1, Landroid/util/MutableInt;->value:I

    if-eqz v6, :cond_1

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Health service returned result :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/util/MutableInt;->value:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-object v4

    .line 96
    :cond_1
    iget v6, v2, Landroid/util/MutableInt;->value:I

    if-nez v6, :cond_2

    .line 97
    const-string v6, "Failed to find storage information forinternal storage device"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-object v4

    .line 101
    :cond_2
    new-instance v4, Lcom/android/car/storagemonitoring/WearInformation;

    iget v5, v10, Landroid/util/MutableInt;->value:I

    iget v6, v11, Landroid/util/MutableInt;->value:I

    iget v7, v12, Landroid/util/MutableInt;->value:I

    invoke-direct {v4, v5, v6, v7}, Lcom/android/car/storagemonitoring/WearInformation;-><init>(III)V

    return-object v4

    .line 87
    :catch_0
    move-exception v6

    .line 88
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get storage information fromhealth service, exception :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-object v4
.end method

.method public setHealthSupplier(Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$IHealthSupplier;)V
    .locals 0
    .param p1, "healthSupplier"    # Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$IHealthSupplier;

    .line 124
    iput-object p1, p0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider;->mHealthSupplier:Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$IHealthSupplier;

    .line 125
    return-void
.end method
