.class public Landroid/car/hardware/CarPropertyConfig$Builder;
.super Ljava/lang/Object;
.source "CarPropertyConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/CarPropertyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAccess:I

.field private final mAreaType:I

.field private mChangeMode:I

.field private final mConfigArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigString:Ljava/lang/String;

.field private mMaxSampleRate:F

.field private mMinSampleRate:F

.field private final mPropertyId:I

.field private final mSupportedAreas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/car/hardware/CarPropertyConfig$AreaConfig<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IIILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput p2, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mAreaType:I

    .line 513
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mConfigArray:Ljava/util/ArrayList;

    .line 514
    iput p3, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mPropertyId:I

    if-eqz p1, :cond_0

    .line 516
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p2, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mSupportedAreas:Landroid/util/SparseArray;

    goto :goto_0

    .line 518
    :cond_0
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mSupportedAreas:Landroid/util/SparseArray;

    .line 520
    :goto_0
    iput-object p4, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mType:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(IIILjava/lang/Class;Landroid/car/hardware/CarPropertyConfig$1;)V
    .locals 0

    .line 499
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarPropertyConfig$Builder;-><init>(IIILjava/lang/Class;)V

    return-void
.end method

.method private isRangeAvailable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    iget p0, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mPropertyId:I

    const/high16 v1, 0xff0000

    and-int/2addr p0, v1

    const/high16 v1, 0x400000

    const/4 v2, 0x1

    if-eq p0, v1, :cond_7

    const/high16 v1, 0x500000

    if-eq p0, v1, :cond_4

    const/high16 v1, 0x600000

    if-eq p0, v1, :cond_1

    return v0

    .line 636
    :cond_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0

    .line 634
    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v3, 0x0

    cmp-long p0, p0, v3

    if-nez p0, :cond_5

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long p0, p0, v3

    if-eqz p0, :cond_6

    :cond_5
    move v0, v2

    :cond_6
    return v0

    .line 632
    :cond_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_8

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    move v0, v2

    :cond_9
    :goto_0
    return v0
.end method


# virtual methods
.method public addArea(I)Landroid/car/hardware/CarPropertyConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 541
    invoke-virtual {p0, p1, v0, v0}, Landroid/car/hardware/CarPropertyConfig$Builder;->addAreaConfig(ILjava/lang/Object;Ljava/lang/Object;)Landroid/car/hardware/CarPropertyConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addAreaConfig(ILjava/lang/Object;Ljava/lang/Object;)Landroid/car/hardware/CarPropertyConfig$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;TT;)",
            "Landroid/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 550
    invoke-direct {p0, p2, p3}, Landroid/car/hardware/CarPropertyConfig$Builder;->isRangeAvailable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 551
    iget-object p2, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 553
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mSupportedAreas:Landroid/util/SparseArray;

    new-instance v2, Landroid/car/hardware/CarPropertyConfig$AreaConfig;

    invoke-direct {v2, p2, p3, v1}, Landroid/car/hardware/CarPropertyConfig$AreaConfig;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/car/hardware/CarPropertyConfig$1;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public addAreas([I)Landroid/car/hardware/CarPropertyConfig$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Landroid/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 529
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 530
    iget-object v3, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mSupportedAreas:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Landroid/car/hardware/CarPropertyConfig;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/car/hardware/CarPropertyConfig<",
            "TT;>;"
        }
    .end annotation

    .line 620
    new-instance v12, Landroid/car/hardware/CarPropertyConfig;

    iget v1, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mAccess:I

    iget v2, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mAreaType:I

    iget v3, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mChangeMode:I

    iget-object v4, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mConfigArray:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mConfigString:Ljava/lang/String;

    iget v6, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mMaxSampleRate:F

    iget v7, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mMinSampleRate:F

    iget v8, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mPropertyId:I

    iget-object v9, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mSupportedAreas:Landroid/util/SparseArray;

    iget-object v10, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mType:Ljava/lang/Class;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/car/hardware/CarPropertyConfig;-><init>(IIILjava/util/ArrayList;Ljava/lang/String;FFILandroid/util/SparseArray;Ljava/lang/Class;Landroid/car/hardware/CarPropertyConfig$1;)V

    return-object v12
.end method

.method public setAccess(I)Landroid/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 564
    iput p1, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mAccess:I

    return-object p0
.end method

.method public setChangeMode(I)Landroid/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 574
    iput p1, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mChangeMode:I

    return-object p0
.end method

.method public setConfigArray(Ljava/util/ArrayList;)Landroid/car/hardware/CarPropertyConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 584
    iget-object v0, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mConfigArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 585
    iget-object v0, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mConfigArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setConfigString(Ljava/lang/String;)Landroid/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 595
    iput-object p1, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mConfigString:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxSampleRate(F)Landroid/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 605
    iput p1, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mMaxSampleRate:F

    return-object p0
.end method

.method public setMinSampleRate(F)Landroid/car/hardware/CarPropertyConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 615
    iput p1, p0, Landroid/car/hardware/CarPropertyConfig$Builder;->mMinSampleRate:F

    return-object p0
.end method
