.class public final Landroid/car/projection/ProjectionStatus$MobileDevice;
.super Ljava/lang/Object;
.source "ProjectionStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/projection/ProjectionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileDevice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/projection/ProjectionStatus$MobileDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAvailableTransports:[I

.field private final mExtras:Landroid/os/Bundle;

.field private final mId:I

.field private final mName:Ljava/lang/String;

.field private final mProjecting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 270
    new-instance v0, Landroid/car/projection/ProjectionStatus$MobileDevice$1;

    invoke-direct {v0}, Landroid/car/projection/ProjectionStatus$MobileDevice$1;-><init>()V

    sput-object v0, Landroid/car/projection/ProjectionStatus$MobileDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)V
    .locals 1

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->access$1000(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)I

    move-result v0

    iput v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mId:I

    .line 284
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->access$1100(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mName:Ljava/lang/String;

    .line 285
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->access$1200(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mAvailableTransports:[I

    .line 286
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->access$1300(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mProjecting:Z

    .line 287
    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->access$1400(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;->access$1400(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;Landroid/car/projection/ProjectionStatus$1;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Landroid/car/projection/ProjectionStatus$MobileDevice;-><init>(Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mId:I

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mName:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mAvailableTransports:[I

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mProjecting:Z

    .line 295
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/car/projection/ProjectionStatus$1;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Landroid/car/projection/ProjectionStatus$MobileDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static builder(ILjava/lang/String;)Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;
    .locals 2

    .line 351
    new-instance v0, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/car/projection/ProjectionStatus$MobileDevice$Builder;-><init>(ILjava/lang/String;Landroid/car/projection/ProjectionStatus$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAvailableTransports()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mAvailableTransports:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    iget-object p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mAvailableTransports:[I

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 322
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 334
    iget-object v0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 309
    iget p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mId:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 314
    iget-object p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public isProjecting()Z
    .locals 0

    .line 329
    iget-boolean p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mProjecting:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileDevice{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mAvailableTransports="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mAvailableTransports:[I

    .line 359
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mProjecting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mProjecting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 361
    iget-object p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mExtras:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string p0, ", (has extras)"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 300
    iget p2, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object p2, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object p2, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mAvailableTransports:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 303
    iget-boolean p2, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mProjecting:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 304
    iget-object p0, p0, Landroid/car/projection/ProjectionStatus$MobileDevice;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
