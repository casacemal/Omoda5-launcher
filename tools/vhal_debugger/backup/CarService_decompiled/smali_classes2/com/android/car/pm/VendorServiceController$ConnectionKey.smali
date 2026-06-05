.class Lcom/android/car/pm/VendorServiceController$ConnectionKey;
.super Ljava/lang/Object;
.source "VendorServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/pm/VendorServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionKey"
.end annotation


# instance fields
.field private final mUserHandle:Landroid/os/UserHandle;

.field private final mVendorServiceInfo:Lcom/android/car/pm/VendorServiceInfo;


# direct methods
.method private constructor <init>(Lcom/android/car/pm/VendorServiceInfo;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "service"    # Lcom/android/car/pm/VendorServiceInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->mVendorServiceInfo:Lcom/android/car/pm/VendorServiceInfo;

    .line 403
    iput-object p2, p0, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->mUserHandle:Landroid/os/UserHandle;

    .line 404
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/pm/VendorServiceController$ConnectionKey;)Lcom/android/car/pm/VendorServiceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/VendorServiceController$ConnectionKey;

    .line 397
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->mVendorServiceInfo:Lcom/android/car/pm/VendorServiceInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/pm/VendorServiceController$ConnectionKey;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/VendorServiceController$ConnectionKey;

    .line 397
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static of(Lcom/android/car/pm/VendorServiceInfo;Landroid/os/UserHandle;)Lcom/android/car/pm/VendorServiceController$ConnectionKey;
    .locals 1
    .param p0, "service"    # Lcom/android/car/pm/VendorServiceInfo;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 407
    new-instance v0, Lcom/android/car/pm/VendorServiceController$ConnectionKey;

    invoke-direct {v0, p0, p1}, Lcom/android/car/pm/VendorServiceController$ConnectionKey;-><init>(Lcom/android/car/pm/VendorServiceInfo;Landroid/os/UserHandle;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 412
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 413
    return v0

    .line 415
    :cond_0
    instance-of v1, p1, Lcom/android/car/pm/VendorServiceController$ConnectionKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 416
    return v2

    .line 418
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/car/pm/VendorServiceController$ConnectionKey;

    .line 419
    .local v1, "that":Lcom/android/car/pm/VendorServiceController$ConnectionKey;
    iget-object v3, p0, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->mUserHandle:Landroid/os/UserHandle;

    iget-object v4, v1, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->mVendorServiceInfo:Lcom/android/car/pm/VendorServiceInfo;

    iget-object v4, v1, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->mVendorServiceInfo:Lcom/android/car/pm/VendorServiceInfo;

    .line 420
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 419
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 425
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->mUserHandle:Landroid/os/UserHandle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/car/pm/VendorServiceController$ConnectionKey;->mVendorServiceInfo:Lcom/android/car/pm/VendorServiceInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
