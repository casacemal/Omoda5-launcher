.class Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
.super Ljava/lang/Object;
.source "CarPackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/pm/CarPackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientPolicy"
.end annotation


# instance fields
.field private final blacklistsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final whitelistsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->whitelistsMap:Ljava/util/HashMap;

    .line 1288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->blacklistsMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/pm/CarPackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/pm/CarPackageManagerService$1;

    .line 1285
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    .param p1, "x1"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1285
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->addToBlacklists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    .param p1, "x1"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1285
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->addToWhitelists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    .param p1, "x1"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1285
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->removeBlacklists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    .param p1, "x1"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1285
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->removeWhitelists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    .param p1, "x1"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1285
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->replaceBlacklists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    .param p1, "x1"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1285
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->replaceWhitelists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    .line 1285
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->blacklistsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    .line 1285
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->whitelistsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private addToBlacklists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 5
    .param p1, "blacklists"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1324
    if-nez p1, :cond_0

    .line 1325
    return-void

    .line 1327
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1328
    .local v2, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v2, :cond_1

    .line 1329
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->blacklistsMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$800(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    .end local v2    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1332
    :cond_2
    return-void
.end method

.method private addToWhitelists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 5
    .param p1, "whitelists"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1297
    if-nez p1, :cond_0

    .line 1298
    return-void

    .line 1300
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1301
    .local v2, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v2, :cond_1

    .line 1302
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->whitelistsMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$800(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    .end local v2    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1305
    :cond_2
    return-void
.end method

.method private removeBlacklists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 5
    .param p1, "blacklists"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1335
    if-nez p1, :cond_0

    .line 1336
    return-void

    .line 1338
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1339
    .local v2, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v2, :cond_1

    .line 1340
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->blacklistsMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$800(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    .end local v2    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1343
    :cond_2
    return-void
.end method

.method private removeWhitelists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 5
    .param p1, "whitelists"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1308
    if-nez p1, :cond_0

    .line 1309
    return-void

    .line 1311
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1312
    .local v2, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v2, :cond_1

    .line 1313
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->whitelistsMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$800(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    .end local v2    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1316
    :cond_2
    return-void
.end method

.method private replaceBlacklists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 1
    .param p1, "blacklists"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1319
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->blacklistsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1320
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->addToBlacklists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    .line 1321
    return-void
.end method

.method private replaceWhitelists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 1
    .param p1, "whitelists"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1292
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->whitelistsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1293
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->addToWhitelists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    .line 1294
    return-void
.end method
