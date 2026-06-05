.class Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;
.super Landroid/car/drivingstate/ICarUxRestrictionsChangeListener$Stub;
.source "CarPackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/pm/CarPackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UxRestrictionsListener"
.end annotation


# instance fields
.field private mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/car/pm/CarPackageManagerService;

.field private final uxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/car/pm/CarPackageManagerService;Lcom/android/car/CarUxRestrictionsManagerService;)V
    .locals 0
    .param p2, "service"    # Lcom/android/car/CarUxRestrictionsManagerService;

    .line 1368
    iput-object p1, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    invoke-direct {p0}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener$Stub;-><init>()V

    .line 1369
    iput-object p2, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->uxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    .line 1370
    return-void
.end method

.method static synthetic access$2000(Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;

    .line 1362
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->isRestricted()Z

    move-result v0

    return v0
.end method

.method private checkIfTopActivityNeedsBlocking()V
    .locals 2

    .line 1393
    const/4 v0, 0x0

    .line 1394
    .local v0, "shouldCheck":Z
    monitor-enter p0

    .line 1395
    :try_start_0
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    .line 1396
    invoke-virtual {v1}, Landroid/car/drivingstate/CarUxRestrictions;->isRequiresDistractionOptimization()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1397
    const/4 v0, 0x1

    .line 1399
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1403
    if-eqz v0, :cond_1

    .line 1405
    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    invoke-static {v1}, Lcom/android/car/pm/CarPackageManagerService;->access$2800(Lcom/android/car/pm/CarPackageManagerService;)V

    .line 1407
    :cond_1
    return-void

    .line 1399
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized isRestricted()Z
    .locals 1

    monitor-enter p0

    .line 1411
    :try_start_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    if-nez v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->uxRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-virtual {v0}, Lcom/android/car/CarUxRestrictionsManagerService;->getCurrentUxRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    .line 1414
    .end local p0    # "this":Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;
    :cond_0
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    if-eqz v0, :cond_1

    .line 1415
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictions;->isRequiresDistractionOptimization()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1420
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 1
    .param p1, "restrictions"    # Landroid/car/drivingstate/CarUxRestrictions;

    .line 1382
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    invoke-static {v0}, Lcom/android/car/pm/CarPackageManagerService;->access$2700(Lcom/android/car/pm/CarPackageManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1383
    return-void

    .line 1386
    :cond_0
    monitor-enter p0

    .line 1387
    :try_start_0
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictions;

    invoke-direct {v0, p1}, Landroid/car/drivingstate/CarUxRestrictions;-><init>(Landroid/car/drivingstate/CarUxRestrictions;)V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    .line 1388
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService$UxRestrictionsListener;->checkIfTopActivityNeedsBlocking()V

    .line 1390
    return-void

    .line 1388
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
