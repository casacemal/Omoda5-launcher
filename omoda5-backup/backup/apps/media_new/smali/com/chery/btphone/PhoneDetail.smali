.class public Lcom/chery/btphone/PhoneDetail;
.super Ljava/lang/Object;
.source "PhoneDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/chery/btphone/PhoneDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callduration:J

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lcom/chery/btphone/PhoneDetail$1;

    invoke-direct {v0}, Lcom/chery/btphone/PhoneDetail$1;-><init>()V

    sput-object v0, Lcom/chery/btphone/PhoneDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/btphone/PhoneDetail;->name:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/btphone/PhoneDetail;->number:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/chery/btphone/PhoneDetail;->state:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chery/btphone/PhoneDetail;->callduration:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/chery/btphone/PhoneDetail;->name:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/chery/btphone/PhoneDetail;->number:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/chery/btphone/PhoneDetail;->state:I

    .line 40
    iput-wide p4, p0, Lcom/chery/btphone/PhoneDetail;->callduration:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCallduration()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/chery/btphone/PhoneDetail;->callduration:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/chery/btphone/PhoneDetail;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/chery/btphone/PhoneDetail;->number:Ljava/lang/String;

    return-object p0
.end method

.method public getState()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/chery/btphone/PhoneDetail;->state:I

    return p0
.end method

.method public setCallduration(J)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/chery/btphone/PhoneDetail;->callduration:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/chery/btphone/PhoneDetail;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/chery/btphone/PhoneDetail;->number:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/chery/btphone/PhoneDetail;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneDetail{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/btphone/PhoneDetail;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/btphone/PhoneDetail;->number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/btphone/PhoneDetail;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callduration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/chery/btphone/PhoneDetail;->callduration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 111
    iget-object p2, p0, Lcom/chery/btphone/PhoneDetail;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lcom/chery/btphone/PhoneDetail;->number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget p2, p0, Lcom/chery/btphone/PhoneDetail;->state:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-wide v0, p0, Lcom/chery/btphone/PhoneDetail;->callduration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
