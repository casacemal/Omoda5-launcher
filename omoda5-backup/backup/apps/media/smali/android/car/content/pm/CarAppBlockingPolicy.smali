.class public final Landroid/car/content/pm/CarAppBlockingPolicy;
.super Ljava/lang/Object;
.source "CarAppBlockingPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/content/pm/CarAppBlockingPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final sReadBlobMethod:Ljava/lang/reflect/Method;

.field private static final sWriteBlobMethod:Ljava/lang/reflect/Method;


# instance fields
.field public final blacklists:[Landroid/car/content/pm/AppBlockingPackageInfo;

.field public final whitelists:[Landroid/car/content/pm/AppBlockingPackageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 32
    const-class v0, Landroid/car/content/pm/CarAppBlockingPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/car/content/pm/CarAppBlockingPolicy;->TAG:Ljava/lang/String;

    .line 41
    const-class v0, Landroid/os/Parcel;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "readBlob"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 45
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "writeBlob"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    .line 46
    const-class v6, [B

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v0, v1

    .line 52
    :goto_0
    sput-object v1, Landroid/car/content/pm/CarAppBlockingPolicy;->sReadBlobMethod:Ljava/lang/reflect/Method;

    .line 53
    sput-object v0, Landroid/car/content/pm/CarAppBlockingPolicy;->sWriteBlobMethod:Ljava/lang/reflect/Method;

    .line 88
    new-instance v0, Landroid/car/content/pm/CarAppBlockingPolicy$1;

    invoke-direct {v0}, Landroid/car/content/pm/CarAppBlockingPolicy$1;-><init>()V

    sput-object v0, Landroid/car/content/pm/CarAppBlockingPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object p1

    .line 64
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 65
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    sget-object p1, Landroid/car/content/pm/AppBlockingPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/car/content/pm/AppBlockingPackageInfo;

    iput-object p1, p0, Landroid/car/content/pm/CarAppBlockingPolicy;->whitelists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    .line 69
    sget-object p1, Landroid/car/content/pm/AppBlockingPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/car/content/pm/AppBlockingPackageInfo;

    iput-object p1, p0, Landroid/car/content/pm/CarAppBlockingPolicy;->blacklists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    .line 70
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public constructor <init>([Landroid/car/content/pm/AppBlockingPackageInfo;[Landroid/car/content/pm/AppBlockingPackageInfo;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/car/content/pm/CarAppBlockingPolicy;->whitelists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    .line 59
    iput-object p2, p0, Landroid/car/content/pm/CarAppBlockingPolicy;->blacklists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 116
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 119
    :cond_2
    check-cast p1, Landroid/car/content/pm/CarAppBlockingPolicy;

    .line 120
    iget-object v2, p0, Landroid/car/content/pm/CarAppBlockingPolicy;->blacklists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    iget-object v3, p1, Landroid/car/content/pm/CarAppBlockingPolicy;->blacklists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 123
    :cond_3
    iget-object p0, p0, Landroid/car/content/pm/CarAppBlockingPolicy;->whitelists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    iget-object p1, p1, Landroid/car/content/pm/CarAppBlockingPolicy;->whitelists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 103
    iget-object v0, p0, Landroid/car/content/pm/CarAppBlockingPolicy;->blacklists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 104
    iget-object p0, p0, Landroid/car/content/pm/CarAppBlockingPolicy;->whitelists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarAppBlockingPolicy [whitelists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/content/pm/CarAppBlockingPolicy;->whitelists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", blacklists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/car/content/pm/CarAppBlockingPolicy;->blacklists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    .line 132
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 80
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    .line 81
    iget-object v0, p0, Landroid/car/content/pm/CarAppBlockingPolicy;->whitelists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 82
    iget-object p0, p0, Landroid/car/content/pm/CarAppBlockingPolicy;->blacklists:[Landroid/car/content/pm/AppBlockingPackageInfo;

    invoke-virtual {p2, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 84
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return-void
.end method
