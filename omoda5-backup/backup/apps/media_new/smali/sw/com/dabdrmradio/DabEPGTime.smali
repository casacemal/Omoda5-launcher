.class public Lsw/com/dabdrmradio/DabEPGTime;
.super Ljava/lang/Object;
.source "DabEPGTime.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsw/com/dabdrmradio/DabEPGTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private day:B

.field private hour:B

.field private minute:B

.field private month:B

.field private second:B

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lsw/com/dabdrmradio/DabEPGTime$1;

    invoke-direct {v0}, Lsw/com/dabdrmradio/DabEPGTime$1;-><init>()V

    sput-object v0, Lsw/com/dabdrmradio/DabEPGTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7e6

    .line 7
    iput v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->year:I

    const/4 v0, 0x4

    .line 8
    iput-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->month:B

    const/16 v0, 0x1d

    .line 9
    iput-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->day:B

    const/16 v0, 0xe

    .line 10
    iput-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->hour:B

    const/16 v0, 0x35

    .line 11
    iput-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->minute:B

    const/4 v0, 0x0

    .line 12
    iput-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->second:B

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7e6

    .line 7
    iput v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->year:I

    const/4 v0, 0x4

    .line 8
    iput-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->month:B

    const/16 v0, 0x1d

    .line 9
    iput-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->day:B

    const/16 v0, 0xe

    .line 10
    iput-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->hour:B

    const/16 v0, 0x35

    .line 11
    iput-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->minute:B

    const/4 v0, 0x0

    .line 12
    iput-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->second:B

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->year:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->month:B

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->day:B

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->hour:B

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->minute:B

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lsw/com/dabdrmradio/DabEPGTime;->second:B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 81
    instance-of v0, p1, Lsw/com/dabdrmradio/DabEPGTime;

    if-eqz v0, :cond_1

    .line 83
    check-cast p1, Lsw/com/dabdrmradio/DabEPGTime;

    .line 84
    iget v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->year:I

    iget v1, p1, Lsw/com/dabdrmradio/DabEPGTime;->year:I

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->month:B

    iget-byte v1, p1, Lsw/com/dabdrmradio/DabEPGTime;->month:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->day:B

    iget-byte v1, p1, Lsw/com/dabdrmradio/DabEPGTime;->day:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->hour:B

    iget-byte v1, p1, Lsw/com/dabdrmradio/DabEPGTime;->hour:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lsw/com/dabdrmradio/DabEPGTime;->minute:B

    iget-byte v1, p1, Lsw/com/dabdrmradio/DabEPGTime;->minute:B

    if-ne v0, v1, :cond_0

    iget-byte p0, p0, Lsw/com/dabdrmradio/DabEPGTime;->second:B

    iget-byte p1, p1, Lsw/com/dabdrmradio/DabEPGTime;->second:B

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 92
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getEPGTimeDay()B
    .locals 0

    .line 31
    iget-byte p0, p0, Lsw/com/dabdrmradio/DabEPGTime;->day:B

    return p0
.end method

.method public getEPGTimeHour()B
    .locals 0

    .line 39
    iget-byte p0, p0, Lsw/com/dabdrmradio/DabEPGTime;->hour:B

    return p0
.end method

.method public getEPGTimeMinute()B
    .locals 0

    .line 47
    iget-byte p0, p0, Lsw/com/dabdrmradio/DabEPGTime;->minute:B

    return p0
.end method

.method public getEPGTimeMonth()B
    .locals 0

    .line 23
    iget-byte p0, p0, Lsw/com/dabdrmradio/DabEPGTime;->month:B

    return p0
.end method

.method public getEPGTimeSecond()B
    .locals 0

    .line 55
    iget-byte p0, p0, Lsw/com/dabdrmradio/DabEPGTime;->second:B

    return p0
.end method

.method public getEPGTimeYear()I
    .locals 0

    .line 15
    iget p0, p0, Lsw/com/dabdrmradio/DabEPGTime;->year:I

    return p0
.end method

.method public setEPGTimeDay(B)V
    .locals 0

    .line 35
    iput-byte p1, p0, Lsw/com/dabdrmradio/DabEPGTime;->day:B

    return-void
.end method

.method public setEPGTimeHour(B)V
    .locals 0

    .line 43
    iput-byte p1, p0, Lsw/com/dabdrmradio/DabEPGTime;->hour:B

    return-void
.end method

.method public setEPGTimeMinute(B)V
    .locals 0

    .line 51
    iput-byte p1, p0, Lsw/com/dabdrmradio/DabEPGTime;->minute:B

    return-void
.end method

.method public setEPGTimeMonth(B)V
    .locals 0

    .line 27
    iput-byte p1, p0, Lsw/com/dabdrmradio/DabEPGTime;->month:B

    return-void
.end method

.method public setEPGTimeSecond(B)V
    .locals 0

    .line 59
    iput-byte p1, p0, Lsw/com/dabdrmradio/DabEPGTime;->second:B

    return-void
.end method

.method public setEPGTimeYear(I)V
    .locals 0

    .line 19
    iput p1, p0, Lsw/com/dabdrmradio/DabEPGTime;->year:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 69
    iget p2, p0, Lsw/com/dabdrmradio/DabEPGTime;->year:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-byte p2, p0, Lsw/com/dabdrmradio/DabEPGTime;->month:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 71
    iget-byte p2, p0, Lsw/com/dabdrmradio/DabEPGTime;->day:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 72
    iget-byte p2, p0, Lsw/com/dabdrmradio/DabEPGTime;->hour:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 73
    iget-byte p2, p0, Lsw/com/dabdrmradio/DabEPGTime;->minute:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    iget-byte p0, p0, Lsw/com/dabdrmradio/DabEPGTime;->second:B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
