.class public final Landroid/car/trust/TrustedDeviceInfo;
.super Ljava/lang/Object;
.source "TrustedDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final DEFAULT_NAME:Ljava/lang/String; = "Default"

.field private static final DEVICE_INFO_DELIMITER:Ljava/lang/String; = ","


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mHandle:J

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Landroid/car/trust/TrustedDeviceInfo$1;

    invoke-direct {v0}, Landroid/car/trust/TrustedDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/car/trust/TrustedDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Landroid/car/trust/TrustedDeviceInfo;->mHandle:J

    .line 44
    iput-object p3, p0, Landroid/car/trust/TrustedDeviceInfo;->mAddress:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Landroid/car/trust/TrustedDeviceInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/trust/TrustedDeviceInfo;->mHandle:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/trust/TrustedDeviceInfo;->mName:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/trust/TrustedDeviceInfo;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Landroid/car/trust/TrustedDeviceInfo;
    .locals 5

    const-string v0, ","

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 135
    new-instance v0, Landroid/car/trust/TrustedDeviceInfo;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    aget-object v3, p0, v3

    const/4 v4, 0x2

    aget-object p0, p0, v4

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/car/trust/TrustedDeviceInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 104
    instance-of v0, p1, Landroid/car/trust/TrustedDeviceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 108
    :cond_0
    check-cast p1, Landroid/car/trust/TrustedDeviceInfo;

    .line 109
    iget-wide v2, p0, Landroid/car/trust/TrustedDeviceInfo;->mHandle:J

    invoke-virtual {p1}, Landroid/car/trust/TrustedDeviceInfo;->getHandle()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Landroid/car/trust/TrustedDeviceInfo;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getHandle()J
    .locals 2

    .line 54
    iget-wide v0, p0, Landroid/car/trust/TrustedDeviceInfo;->mHandle:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Landroid/car/trust/TrustedDeviceInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    iget-wide v1, p0, Landroid/car/trust/TrustedDeviceInfo;->mHandle:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public serialize()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 123
    iget-wide v1, p0, Landroid/car/trust/TrustedDeviceInfo;->mHandle:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/car/trust/TrustedDeviceInfo;->mAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/car/trust/TrustedDeviceInfo;->mName:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, ","

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 98
    iget-wide v1, p0, Landroid/car/trust/TrustedDeviceInfo;->mHandle:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/car/trust/TrustedDeviceInfo;->mAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/car/trust/TrustedDeviceInfo;->mName:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "TrustedDevice{ handle=%d. address=%s, name=%s }"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 90
    iget-wide v0, p0, Landroid/car/trust/TrustedDeviceInfo;->mHandle:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    iget-object p2, p0, Landroid/car/trust/TrustedDeviceInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p0, p0, Landroid/car/trust/TrustedDeviceInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
