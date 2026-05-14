.class public Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;
.super Ljava/lang/Object;
.source "ICallInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final kCallStsActive:I = 0x4

.field static final kCallStsConnecting:I = 0x3

.field static final kCallStsDisconnected:I = 0x0

.field static final kCallStsDisconnecting:I = 0x6

.field static final kCallStsHeld:I = 0x5

.field static final kCallStsRinging:I = 0x2

.field static final kCallStsSending:I = 0x1


# instance fields
.field public mCallStatus:I

.field public mCallUUID:Ljava/lang/String;

.field public mCallerLabel:Ljava/lang/String;

.field public mCallerName:Ljava/lang/String;

.field public mRemoteID:Ljava/lang/String;

.field public mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo$1;

    invoke-direct {v0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo$1;-><init>()V

    sput-object v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mCallerLabel:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mCallerName:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mCallUUID:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mRemoteID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mCallStatus:I

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mStartTime:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->readFromParcel(Landroid/os/Parcel;)V

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

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mCallerLabel:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mCallerName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mCallUUID:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mRemoteID:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mCallStatus:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mStartTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 43
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mCallerLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mCallerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mCallUUID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mRemoteID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget p2, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mCallStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-wide v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ICallInfo;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
