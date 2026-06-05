.class Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
.super Ljava/lang/Object;
.source "CarPackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/pm/CarPackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppBlockingPackageInfoWrapper"
.end annotation


# instance fields
.field private final info:Landroid/car/content/pm/AppBlockingPackageInfo;

.field private isMatching:Z


# direct methods
.method private constructor <init>(Landroid/car/content/pm/AppBlockingPackageInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/car/content/pm/AppBlockingPackageInfo;
    .param p2, "isMatching"    # Z

    .line 1269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1270
    iput-object p1, p0, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->info:Landroid/car/content/pm/AppBlockingPackageInfo;

    .line 1271
    iput-boolean p2, p0, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->isMatching:Z

    .line 1272
    return-void
.end method

.method synthetic constructor <init>(Landroid/car/content/pm/AppBlockingPackageInfo;ZLcom/android/car/pm/CarPackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/car/content/pm/AppBlockingPackageInfo;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/android/car/pm/CarPackageManagerService$1;

    .line 1261
    invoke-direct {p0, p1, p2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;-><init>(Landroid/car/content/pm/AppBlockingPackageInfo;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1261
    iget-boolean v0, p0, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->isMatching:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1261
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->info:Landroid/car/content/pm/AppBlockingPackageInfo;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppBlockingPackageInfoWrapper [info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->info:Landroid/car/content/pm/AppBlockingPackageInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMatching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->isMatching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
