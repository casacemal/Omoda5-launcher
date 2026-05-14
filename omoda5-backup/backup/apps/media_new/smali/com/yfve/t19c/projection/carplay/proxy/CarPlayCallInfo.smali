.class public Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;
.super Ljava/lang/Object;
.source "CarPlayCallInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAddrBookID:Ljava/lang/String;

.field public mCallStatus:I

.field public mCallUUID:Ljava/lang/String;

.field public mCallerLabel:Ljava/lang/String;

.field public mCallerName:Ljava/lang/String;

.field public mDirection:I

.field public mDisconnectReason:I

.field public mIsConferenceGroup:Z

.field public mRemoteID:Ljava/lang/String;

.field public mService:I

.field public mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo$1;

    invoke-direct {v0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo$1;-><init>()V

    sput-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIJ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mRemoteID:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mCallerName:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mCallStatus:I

    .line 28
    iput p4, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mDirection:I

    .line 29
    iput-object p5, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mCallUUID:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mAddrBookID:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mCallerLabel:Ljava/lang/String;

    .line 32
    iput p8, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mService:I

    .line 33
    iput-boolean p9, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mIsConferenceGroup:Z

    .line 34
    iput p10, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mDisconnectReason:I

    .line 35
    iput-wide p11, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mStartTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mRemoteID:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mCallerName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mCallStatus:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mDirection:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mCallUUID:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mAddrBookID:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mCallerLabel:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mService:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mIsConferenceGroup:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mDisconnectReason:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mStartTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 52
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mRemoteID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mCallerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mCallStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mDirection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mCallUUID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mAddrBookID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mCallerLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mService:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-boolean p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mIsConferenceGroup:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 61
    iget p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mDisconnectReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-wide v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayCallInfo;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
