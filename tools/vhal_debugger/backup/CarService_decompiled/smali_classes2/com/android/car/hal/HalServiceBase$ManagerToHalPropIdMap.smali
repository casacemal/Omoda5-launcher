.class Lcom/android/car/hal/HalServiceBase$ManagerToHalPropIdMap;
.super Ljava/lang/Object;
.source "HalServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/HalServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManagerToHalPropIdMap"
.end annotation


# instance fields
.field private final mMap:Lcom/android/car/hal/BidirectionalSparseIntArray;


# direct methods
.method private constructor <init>(Lcom/android/car/hal/BidirectionalSparseIntArray;)V
    .locals 0
    .param p1, "map"    # Lcom/android/car/hal/BidirectionalSparseIntArray;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/car/hal/HalServiceBase$ManagerToHalPropIdMap;->mMap:Lcom/android/car/hal/BidirectionalSparseIntArray;

    .line 92
    return-void
.end method

.method static varargs create([I)Lcom/android/car/hal/HalServiceBase$ManagerToHalPropIdMap;
    .locals 2
    .param p0, "mgrToHalPropIds"    # [I

    .line 87
    new-instance v0, Lcom/android/car/hal/HalServiceBase$ManagerToHalPropIdMap;

    invoke-static {p0}, Lcom/android/car/hal/BidirectionalSparseIntArray;->create([I)Lcom/android/car/hal/BidirectionalSparseIntArray;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/car/hal/HalServiceBase$ManagerToHalPropIdMap;-><init>(Lcom/android/car/hal/BidirectionalSparseIntArray;)V

    return-object v0
.end method


# virtual methods
.method getHalPropId(I)I
    .locals 2
    .param p1, "managerPropId"    # I

    .line 95
    iget-object v0, p0, Lcom/android/car/hal/HalServiceBase$ManagerToHalPropIdMap;->mMap:Lcom/android/car/hal/BidirectionalSparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/car/hal/BidirectionalSparseIntArray;->getValue(II)I

    move-result v0

    return v0
.end method

.method getManagerPropId(I)I
    .locals 2
    .param p1, "halPropId"    # I

    .line 99
    iget-object v0, p0, Lcom/android/car/hal/HalServiceBase$ManagerToHalPropIdMap;->mMap:Lcom/android/car/hal/BidirectionalSparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/car/hal/BidirectionalSparseIntArray;->getKey(II)I

    move-result v0

    return v0
.end method
