.class public Lcom/yfve/t19c/projection/devicelist/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yfve/t19c/projection/devicelist/Device;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private available:Z

.field private mac:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private serial:Ljava/lang/String;

.field private type:I

.field private usbAA:Z

.field private usbCP:Z

.field private wirelessAA:Z

.field private wirelessCP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/yfve/t19c/projection/devicelist/Device$1;

    invoke-direct {v0}, Lcom/yfve/t19c/projection/devicelist/Device$1;-><init>()V

    sput-object v0, Lcom/yfve/t19c/projection/devicelist/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->type:I

    .line 33
    iput-object p2, p0, Lcom/yfve/t19c/projection/devicelist/Device;->name:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/yfve/t19c/projection/devicelist/Device;->serial:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/yfve/t19c/projection/devicelist/Device;->mac:Ljava/lang/String;

    .line 36
    iput-boolean p5, p0, Lcom/yfve/t19c/projection/devicelist/Device;->usbAA:Z

    .line 37
    iput-boolean p6, p0, Lcom/yfve/t19c/projection/devicelist/Device;->wirelessAA:Z

    .line 38
    iput-boolean p7, p0, Lcom/yfve/t19c/projection/devicelist/Device;->usbCP:Z

    .line 39
    iput-boolean p8, p0, Lcom/yfve/t19c/projection/devicelist/Device;->wirelessCP:Z

    .line 40
    iput-boolean p9, p0, Lcom/yfve/t19c/projection/devicelist/Device;->available:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->type:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->name:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->serial:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->mac:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->usbAA:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->wirelessAA:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->usbCP:Z

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->wirelessCP:Z

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->available:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMac()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->mac:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->serial:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->type:I

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->available:Z

    return p0
.end method

.method public isUsbAA()Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->usbAA:Z

    return p0
.end method

.method public isUsbCP()Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->usbCP:Z

    return p0
.end method

.method public isWirelessAA()Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->wirelessAA:Z

    return p0
.end method

.method public isWirelessCP()Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->wirelessCP:Z

    return p0
.end method

.method public setAvailable(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->available:Z

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->mac:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->name:Ljava/lang/String;

    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->serial:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->type:I

    return-void
.end method

.method public setUsbAA(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->usbAA:Z

    return-void
.end method

.method public setUsbCP(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->usbCP:Z

    return-void
.end method

.method public setWirelessAA(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->wirelessAA:Z

    return-void
.end method

.method public setWirelessCP(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->wirelessCP:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", serial=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yfve/t19c/projection/devicelist/Device;->serial:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mac=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yfve/t19c/projection/devicelist/Device;->mac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", usbAA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->usbAA:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wirelessAA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->wirelessAA:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", usbCP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->usbCP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wirelessCP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yfve/t19c/projection/devicelist/Device;->wirelessCP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->available:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 134
    iget p2, p0, Lcom/yfve/t19c/projection/devicelist/Device;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object p2, p0, Lcom/yfve/t19c/projection/devicelist/Device;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object p2, p0, Lcom/yfve/t19c/projection/devicelist/Device;->serial:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object p2, p0, Lcom/yfve/t19c/projection/devicelist/Device;->mac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-boolean p2, p0, Lcom/yfve/t19c/projection/devicelist/Device;->usbAA:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 139
    iget-boolean p2, p0, Lcom/yfve/t19c/projection/devicelist/Device;->wirelessAA:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 140
    iget-boolean p2, p0, Lcom/yfve/t19c/projection/devicelist/Device;->usbCP:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 141
    iget-boolean p2, p0, Lcom/yfve/t19c/projection/devicelist/Device;->wirelessCP:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 142
    iget-boolean p0, p0, Lcom/yfve/t19c/projection/devicelist/Device;->available:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
