.class public final Landroid/car/hardware/CarPropertyConfig;
.super Ljava/lang/Object;
.source "CarPropertyConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/CarPropertyConfig$Builder;,
        Landroid/car/hardware/CarPropertyConfig$AreaConfig;,
        Landroid/car/hardware/CarPropertyConfig$VehiclePropertyChangeModeType;,
        Landroid/car/hardware/CarPropertyConfig$VehiclePropertyAccessType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final VEHICLE_PROPERTY_ACCESS_NONE:I = 0x0

.field public static final VEHICLE_PROPERTY_ACCESS_READ:I = 0x1

.field public static final VEHICLE_PROPERTY_ACCESS_READ_WRITE:I = 0x3

.field public static final VEHICLE_PROPERTY_ACCESS_WRITE:I = 0x2

.field public static final VEHICLE_PROPERTY_CHANGE_MODE_CONTINUOUS:I = 0x2

.field public static final VEHICLE_PROPERTY_CHANGE_MODE_ONCHANGE:I = 0x1

.field public static final VEHICLE_PROPERTY_CHANGE_MODE_STATIC:I


# instance fields
.field private final mAccess:I

.field private final mAreaType:I

.field private final mChangeMode:I

.field private final mConfigArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigString:Ljava/lang/String;

.field private final mMaxSampleRate:F

.field private final mMinSampleRate:F

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
.method static constructor <clinit>()V
    .locals 1

    .line 381
    new-instance v0, Landroid/car/hardware/CarPropertyConfig$1;

    invoke-direct {v0}, Landroid/car/hardware/CarPropertyConfig$1;-><init>()V

    sput-object v0, Landroid/car/hardware/CarPropertyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIILjava/util/ArrayList;Ljava/lang/String;FFILandroid/util/SparseArray;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "FFI",
            "Landroid/util/SparseArray<",
            "Landroid/car/hardware/CarPropertyConfig$AreaConfig<",
            "TT;>;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroid/car/hardware/CarPropertyConfig;->mAccess:I

    .line 64
    iput p2, p0, Landroid/car/hardware/CarPropertyConfig;->mAreaType:I

    .line 65
    iput p3, p0, Landroid/car/hardware/CarPropertyConfig;->mChangeMode:I

    .line 66
    iput-object p4, p0, Landroid/car/hardware/CarPropertyConfig;->mConfigArray:Ljava/util/ArrayList;

    .line 67
    iput-object p5, p0, Landroid/car/hardware/CarPropertyConfig;->mConfigString:Ljava/lang/String;

    .line 68
    iput p6, p0, Landroid/car/hardware/CarPropertyConfig;->mMaxSampleRate:F

    .line 69
    iput p7, p0, Landroid/car/hardware/CarPropertyConfig;->mMinSampleRate:F

    .line 70
    iput p8, p0, Landroid/car/hardware/CarPropertyConfig;->mPropertyId:I

    .line 71
    iput-object p9, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    .line 72
    iput-object p10, p0, Landroid/car/hardware/CarPropertyConfig;->mType:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(IIILjava/util/ArrayList;Ljava/lang/String;FFILandroid/util/SparseArray;Ljava/lang/Class;Landroid/car/hardware/CarPropertyConfig$1;)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p10}, Landroid/car/hardware/CarPropertyConfig;-><init>(IIILjava/util/ArrayList;Ljava/lang/String;FFILandroid/util/SparseArray;Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/hardware/CarPropertyConfig;->mAccess:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/hardware/CarPropertyConfig;->mAreaType:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/hardware/CarPropertyConfig;->mChangeMode:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/car/hardware/CarPropertyConfig;->mConfigArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 360
    iget-object v3, p0, Landroid/car/hardware/CarPropertyConfig;->mConfigArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/CarPropertyConfig;->mConfigString:Ljava/lang/String;

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/car/hardware/CarPropertyConfig;->mMaxSampleRate:F

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/car/hardware/CarPropertyConfig;->mMinSampleRate:F

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/hardware/CarPropertyConfig;->mPropertyId:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 367
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    :goto_1
    if-ge v1, v0, :cond_1

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 370
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/CarPropertyConfig$AreaConfig;

    .line 371
    iget-object v4, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 373
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 375
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/CarPropertyConfig;->mType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 377
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/car/hardware/CarPropertyConfig$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/car/hardware/CarPropertyConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static newBuilder(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyConfig$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;II)",
            "Landroid/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 490
    new-instance v6, Landroid/car/hardware/CarPropertyConfig$Builder;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p2

    move v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Landroid/car/hardware/CarPropertyConfig$Builder;-><init>(IIILjava/lang/Class;Landroid/car/hardware/CarPropertyConfig$1;)V

    return-object v6
.end method

.method public static newBuilder(Ljava/lang/Class;III)Landroid/car/hardware/CarPropertyConfig$Builder;
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;III)",
            "Landroid/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 479
    new-instance v6, Landroid/car/hardware/CarPropertyConfig$Builder;

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p3

    move v2, p2

    move v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Landroid/car/hardware/CarPropertyConfig$Builder;-><init>(IIILjava/lang/Class;Landroid/car/hardware/CarPropertyConfig$1;)V

    return-object v6
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAccess()I
    .locals 0

    .line 123
    iget p0, p0, Landroid/car/hardware/CarPropertyConfig;->mAccess:I

    return p0
.end method

.method public getAreaCount()I
    .locals 0

    .line 229
    iget-object p0, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public getAreaIds()[I
    .locals 4

    .line 253
    iget-object v0, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 255
    iget-object v3, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getAreaType()I
    .locals 0

    .line 141
    iget p0, p0, Landroid/car/hardware/CarPropertyConfig;->mAreaType:I

    return p0
.end method

.method public getChangeMode()I
    .locals 0

    .line 157
    iget p0, p0, Landroid/car/hardware/CarPropertyConfig;->mChangeMode:I

    return p0
.end method

.method public getConfigArray()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object p0, p0, Landroid/car/hardware/CarPropertyConfig;->mConfigArray:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConfigString()Ljava/lang/String;
    .locals 0

    .line 177
    iget-object p0, p0, Landroid/car/hardware/CarPropertyConfig;->mConfigString:Ljava/lang/String;

    return-object p0
.end method

.method public getFirstAndOnlyAreaId()I
    .locals 3

    .line 266
    iget-object v0, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 270
    iget-object p0, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one and only area in this property. Prop: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/car/hardware/CarPropertyConfig;->mPropertyId:I

    .line 268
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxSampleRate()F
    .locals 0

    .line 186
    iget p0, p0, Landroid/car/hardware/CarPropertyConfig;->mMaxSampleRate:F

    return p0
.end method

.method public getMaxValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 321
    iget-object p0, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/CarPropertyConfig$AreaConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyConfig$AreaConfig;->getMaxValue()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getMaxValue(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 301
    iget-object p0, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/CarPropertyConfig$AreaConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyConfig$AreaConfig;->getMaxValue()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getMinSampleRate()F
    .locals 0

    .line 195
    iget p0, p0, Landroid/car/hardware/CarPropertyConfig;->mMinSampleRate:F

    return p0
.end method

.method public getMinValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 311
    iget-object p0, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/CarPropertyConfig$AreaConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyConfig$AreaConfig;->getMinValue()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getMinValue(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 290
    iget-object p0, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/CarPropertyConfig$AreaConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyConfig$AreaConfig;->getMinValue()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getPropertyId()I
    .locals 0

    .line 202
    iget p0, p0, Landroid/car/hardware/CarPropertyConfig;->mPropertyId:I

    return p0
.end method

.method public getPropertyType()Ljava/lang/Class;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 212
    iget-object p0, p0, Landroid/car/hardware/CarPropertyConfig;->mType:Ljava/lang/Class;

    return-object p0
.end method

.method public hasArea(I)Z
    .locals 0

    .line 280
    iget-object p0, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGlobalProperty()Z
    .locals 0

    .line 220
    iget p0, p0, Landroid/car/hardware/CarPropertyConfig;->mAreaType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarPropertyConfig{mPropertyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/hardware/CarPropertyConfig;->mPropertyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/hardware/CarPropertyConfig;->mAccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAreaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/hardware/CarPropertyConfig;->mAreaType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChangeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/hardware/CarPropertyConfig;->mChangeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/hardware/CarPropertyConfig;->mConfigArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/hardware/CarPropertyConfig;->mConfigString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxSampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/hardware/CarPropertyConfig;->mMaxSampleRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinSampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/hardware/CarPropertyConfig;->mMinSampleRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportedAreas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/car/hardware/CarPropertyConfig;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 333
    iget v0, p0, Landroid/car/hardware/CarPropertyConfig;->mAccess:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget v0, p0, Landroid/car/hardware/CarPropertyConfig;->mAreaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget v0, p0, Landroid/car/hardware/CarPropertyConfig;->mChangeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-object v0, p0, Landroid/car/hardware/CarPropertyConfig;->mConfigArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 337
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/CarPropertyConfig;->mConfigArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 338
    iget-object v2, p0, Landroid/car/hardware/CarPropertyConfig;->mConfigArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :cond_0
    iget-object v1, p0, Landroid/car/hardware/CarPropertyConfig;->mConfigString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget v1, p0, Landroid/car/hardware/CarPropertyConfig;->mMaxSampleRate:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 342
    iget v1, p0, Landroid/car/hardware/CarPropertyConfig;->mMinSampleRate:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 343
    iget v1, p0, Landroid/car/hardware/CarPropertyConfig;->mPropertyId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-object v1, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    :goto_1
    iget-object v1, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 346
    iget-object v1, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-object v1, p0, Landroid/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 349
    :cond_1
    iget-object p0, p0, Landroid/car/hardware/CarPropertyConfig;->mType:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
