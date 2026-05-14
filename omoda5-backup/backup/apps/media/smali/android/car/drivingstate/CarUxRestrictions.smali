.class public final Landroid/car/drivingstate/CarUxRestrictions;
.super Ljava/lang/Object;
.source "CarUxRestrictions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/drivingstate/CarUxRestrictions$Builder;,
        Landroid/car/drivingstate/CarUxRestrictions$CarUxRestrictionsInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/drivingstate/CarUxRestrictions;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_MAX_CONTENT_DEPTH:I = 0x3

.field private static final DEFAULT_MAX_CUMULATIVE_ITEMS:I = 0x15

.field private static final DEFAULT_MAX_LENGTH:I = 0x78

.field public static final UX_RESTRICTIONS_BASELINE:I = 0x0

.field public static final UX_RESTRICTIONS_FULLY_RESTRICTED:I = 0x1ff

.field public static final UX_RESTRICTIONS_LIMIT_CONTENT:I = 0x20

.field public static final UX_RESTRICTIONS_LIMIT_STRING_LENGTH:I = 0x4

.field public static final UX_RESTRICTIONS_NO_DIALPAD:I = 0x1

.field public static final UX_RESTRICTIONS_NO_FILTERING:I = 0x2

.field public static final UX_RESTRICTIONS_NO_KEYBOARD:I = 0x8

.field public static final UX_RESTRICTIONS_NO_SETUP:I = 0x40

.field public static final UX_RESTRICTIONS_NO_TEXT_MESSAGE:I = 0x80

.field public static final UX_RESTRICTIONS_NO_VIDEO:I = 0x10

.field public static final UX_RESTRICTIONS_NO_VOICE_TRANSCRIPTION:I = 0x100


# instance fields
.field private final mActiveRestrictions:I

.field private final mMaxContentDepth:I

.field private final mMaxCumulativeContentItems:I

.field private final mMaxStringLength:I

.field private final mRequiresDistractionOptimization:Z

.field private final mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 336
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictions$1;

    invoke-direct {v0}, Landroid/car/drivingstate/CarUxRestrictions$1;-><init>()V

    sput-object v0, Landroid/car/drivingstate/CarUxRestrictions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/car/drivingstate/CarUxRestrictions$Builder;)V
    .locals 2

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->access$200(Landroid/car/drivingstate/CarUxRestrictions$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mTimeStamp:J

    .line 360
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->access$300(Landroid/car/drivingstate/CarUxRestrictions$Builder;)I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mActiveRestrictions:I

    .line 361
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->access$400(Landroid/car/drivingstate/CarUxRestrictions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mRequiresDistractionOptimization:Z

    .line 362
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->access$500(Landroid/car/drivingstate/CarUxRestrictions$Builder;)I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mMaxStringLength:I

    .line 363
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->access$600(Landroid/car/drivingstate/CarUxRestrictions$Builder;)I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mMaxCumulativeContentItems:I

    .line 364
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->access$700(Landroid/car/drivingstate/CarUxRestrictions$Builder;)I

    move-result p1

    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictions;->mMaxContentDepth:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/drivingstate/CarUxRestrictions$Builder;Landroid/car/drivingstate/CarUxRestrictions$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Landroid/car/drivingstate/CarUxRestrictions;-><init>(Landroid/car/drivingstate/CarUxRestrictions$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 2

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getTimeStamp()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mTimeStamp:J

    .line 351
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->isRequiresDistractionOptimization()Z

    move-result v0

    iput-boolean v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mRequiresDistractionOptimization:Z

    .line 352
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mActiveRestrictions:I

    .line 353
    iget v0, p1, Landroid/car/drivingstate/CarUxRestrictions;->mMaxStringLength:I

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mMaxStringLength:I

    .line 354
    iget v0, p1, Landroid/car/drivingstate/CarUxRestrictions;->mMaxCumulativeContentItems:I

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mMaxCumulativeContentItems:I

    .line 355
    iget p1, p1, Landroid/car/drivingstate/CarUxRestrictions;->mMaxContentDepth:I

    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictions;->mMaxContentDepth:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mActiveRestrictions:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mTimeStamp:J

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mRequiresDistractionOptimization:Z

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mMaxStringLength:I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mMaxCumulativeContentItems:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictions;->mMaxContentDepth:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/car/drivingstate/CarUxRestrictions$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Landroid/car/drivingstate/CarUxRestrictions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getActiveRestrictions()I
    .locals 0

    .line 255
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mActiveRestrictions:I

    return p0
.end method

.method public getMaxContentDepth()I
    .locals 0

    .line 318
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mMaxContentDepth:I

    return p0
.end method

.method public getMaxCumulativeContentItems()I
    .locals 0

    .line 294
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mMaxCumulativeContentItems:I

    return p0
.end method

.method public getMaxRestrictedStringLength()I
    .locals 0

    .line 265
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mMaxStringLength:I

    return p0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 230
    iget-wide v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mTimeStamp:J

    return-wide v0
.end method

.method public isRequiresDistractionOptimization()Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mRequiresDistractionOptimization:Z

    return p0
.end method

.method public isSameRestrictions(Landroid/car/drivingstate/CarUxRestrictions;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 395
    :cond_1
    iget-boolean v2, p1, Landroid/car/drivingstate/CarUxRestrictions;->mRequiresDistractionOptimization:Z

    iget-boolean v3, p0, Landroid/car/drivingstate/CarUxRestrictions;->mRequiresDistractionOptimization:Z

    if-ne v2, v3, :cond_2

    iget p1, p1, Landroid/car/drivingstate/CarUxRestrictions;->mActiveRestrictions:I

    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mActiveRestrictions:I

    if-ne p1, p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/car/drivingstate/CarUxRestrictions;->mRequiresDistractionOptimization:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " UxR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictions;->mActiveRestrictions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/car/drivingstate/CarUxRestrictions;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 328
    iget p2, p0, Landroid/car/drivingstate/CarUxRestrictions;->mActiveRestrictions:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget-wide v0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 330
    iget-boolean p2, p0, Landroid/car/drivingstate/CarUxRestrictions;->mRequiresDistractionOptimization:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget p2, p0, Landroid/car/drivingstate/CarUxRestrictions;->mMaxStringLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget p2, p0, Landroid/car/drivingstate/CarUxRestrictions;->mMaxCumulativeContentItems:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictions;->mMaxContentDepth:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
