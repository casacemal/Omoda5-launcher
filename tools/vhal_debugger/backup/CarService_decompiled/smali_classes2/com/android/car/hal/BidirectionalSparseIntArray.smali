.class Lcom/android/car/hal/BidirectionalSparseIntArray;
.super Ljava/lang/Object;
.source "BidirectionalSparseIntArray.java"


# instance fields
.field private final mInverseMap:Landroid/util/SparseIntArray;

.field private final mMap:Landroid/util/SparseIntArray;


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/car/hal/BidirectionalSparseIntArray;->mMap:Landroid/util/SparseIntArray;

    .line 49
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/car/hal/BidirectionalSparseIntArray;->mInverseMap:Landroid/util/SparseIntArray;

    .line 50
    return-void
.end method

.method static create([I)Lcom/android/car/hal/BidirectionalSparseIntArray;
    .locals 5
    .param p0, "keyValuePairs"    # [I

    .line 35
    array-length v0, p0

    .line 36
    .local v0, "inputLength":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    .line 40
    new-instance v1, Lcom/android/car/hal/BidirectionalSparseIntArray;

    div-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Lcom/android/car/hal/BidirectionalSparseIntArray;-><init>(I)V

    .line 41
    .local v1, "biMap":Lcom/android/car/hal/BidirectionalSparseIntArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 42
    aget v3, p0, v2

    add-int/lit8 v4, v2, 0x1

    aget v4, p0, v4

    invoke-direct {v1, v3, v4}, Lcom/android/car/hal/BidirectionalSparseIntArray;->put(II)V

    .line 41
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 44
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 37
    .end local v1    # "biMap":Lcom/android/car/hal/BidirectionalSparseIntArray;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Odd number of key-value elements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private put(II)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # I

    .line 53
    iget-object v0, p0, Lcom/android/car/hal/BidirectionalSparseIntArray;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    iget-object v0, p0, Lcom/android/car/hal/BidirectionalSparseIntArray;->mInverseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    return-void
.end method


# virtual methods
.method getKey(II)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "defaultKey"    # I

    .line 62
    iget-object v0, p0, Lcom/android/car/hal/BidirectionalSparseIntArray;->mInverseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method getValue(II)I
    .locals 1
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I

    .line 58
    iget-object v0, p0, Lcom/android/car/hal/BidirectionalSparseIntArray;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method
