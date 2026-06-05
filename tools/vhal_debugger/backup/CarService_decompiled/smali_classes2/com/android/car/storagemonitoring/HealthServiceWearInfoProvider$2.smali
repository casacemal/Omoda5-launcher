.class Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$2;
.super Ljava/lang/Object;
.source "HealthServiceWearInfoProvider.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider;->load()Lcom/android/car/storagemonitoring/WearInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider;

.field final synthetic val$foundInternalStorageDeviceInfo:Landroid/util/MutableInt;

.field final synthetic val$lifetimeA:Landroid/util/MutableInt;

.field final synthetic val$lifetimeB:Landroid/util/MutableInt;

.field final synthetic val$preEol:Landroid/util/MutableInt;

.field final synthetic val$success:Landroid/util/MutableInt;


# direct methods
.method constructor <init>(Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider;Landroid/util/MutableInt;Landroid/util/MutableInt;Landroid/util/MutableInt;Landroid/util/MutableInt;Landroid/util/MutableInt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider;

    .line 62
    iput-object p1, p0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$2;->this$0:Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider;

    iput-object p2, p0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$2;->val$success:Landroid/util/MutableInt;

    iput-object p3, p0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$2;->val$lifetimeA:Landroid/util/MutableInt;

    iput-object p4, p0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$2;->val$lifetimeB:Landroid/util/MutableInt;

    iput-object p5, p0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$2;->val$preEol:Landroid/util/MutableInt;

    iput-object p6, p0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$2;->val$foundInternalStorageDeviceInfo:Landroid/util/MutableInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/health/V2_0/StorageInfo;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/health/V2_0/StorageInfo;>;"
    iget-object v0, p0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$2;->val$success:Landroid/util/MutableInt;

    iput p1, v0, Landroid/util/MutableInt;->value:I

    .line 66
    if-nez p1, :cond_1

    .line 67
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 68
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 69
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/health/V2_0/StorageInfo;

    .line 70
    .local v2, "value2":Landroid/hardware/health/V2_0/StorageInfo;
    iget-object v3, v2, Landroid/hardware/health/V2_0/StorageInfo;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    iget-boolean v3, v3, Landroid/hardware/health/V2_0/StorageAttribute;->isInternal:Z

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$2;->val$lifetimeA:Landroid/util/MutableInt;

    iget-short v4, v2, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    iput v4, v3, Landroid/util/MutableInt;->value:I

    .line 72
    iget-object v3, p0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$2;->val$lifetimeB:Landroid/util/MutableInt;

    iget-short v4, v2, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    iput v4, v3, Landroid/util/MutableInt;->value:I

    .line 73
    iget-object v3, p0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$2;->val$preEol:Landroid/util/MutableInt;

    iget-short v4, v2, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    iput v4, v3, Landroid/util/MutableInt;->value:I

    .line 74
    iget-object v3, p0, Lcom/android/car/storagemonitoring/HealthServiceWearInfoProvider$2;->val$foundInternalStorageDeviceInfo:Landroid/util/MutableInt;

    const/4 v4, 0x1

    iput v4, v3, Landroid/util/MutableInt;->value:I

    .line 68
    .end local v2    # "value2":Landroid/hardware/health/V2_0/StorageInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "len":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
