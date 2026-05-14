.class public Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;
.super Ljava/lang/Object;
.source "ICallStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private status:Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus$1;

    invoke-direct {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus$1;-><init>()V

    sput-object v0, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;

    invoke-direct {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;-><init>()V

    iput-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;->status:Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;

    invoke-direct {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;-><init>()V

    iput-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;->status:Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;

    .line 24
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCallStatus()Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;->status:Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;->status:Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;->num_calls:I

    .line 67
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;->status:Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;->signal_strength:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    new-instance v1, Lcom/yfve/t19c/projection/androidauto/proxy/Call;

    invoke-direct {v1}, Lcom/yfve/t19c/projection/androidauto/proxy/Call;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->status:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->call_duration_seconds:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->caller_number:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->caller_id:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->caller_number_type:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->caller_thumbnail:Ljava/lang/String;

    .line 77
    iget-object v3, p0, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;->status:Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;

    iget-object v3, v3, Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;->mCallData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCallStatus(Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;->status:Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 46
    iget-object p2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;->status:Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;

    iget p2, p2, Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;->num_calls:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object p2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;->status:Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;

    iget p2, p2, Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;->signal_strength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object p2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;->status:Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;

    iget-object p2, p2, Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;->mCallData:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 50
    iget-object p2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;->status:Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;

    iget-object p2, p2, Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;->mCallData:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 52
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;->status:Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;

    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;->mCallData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 54
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yfve/t19c/projection/androidauto/proxy/Call;

    .line 56
    iget v0, p2, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p2, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->call_duration_seconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p2, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->caller_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p2, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->caller_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p2, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->caller_number_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p2, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->caller_thumbnail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method
