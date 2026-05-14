.class public Lsw/com/dabdrmradio/DabEPGProgramInfo;
.super Ljava/lang/Object;
.source "DabEPGProgramInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsw/com/dabdrmradio/DabEPGProgramInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private program_duaration:I

.field private program_name:Ljava/lang/String;

.field private program_start_time:Lsw/com/dabdrmradio/DabEPGTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lsw/com/dabdrmradio/DabEPGProgramInfo$1;

    invoke-direct {v0}, Lsw/com/dabdrmradio/DabEPGProgramInfo$1;-><init>()V

    sput-object v0, Lsw/com/dabdrmradio/DabEPGProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lsw/com/dabdrmradio/DabEPGProgramInfo;->program_name:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lsw/com/dabdrmradio/DabEPGProgramInfo;->program_name:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsw/com/dabdrmradio/DabEPGProgramInfo;->program_name:Ljava/lang/String;

    .line 52
    const-class v0, Lsw/com/dabdrmradio/DabEPGTime;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lsw/com/dabdrmradio/DabEPGTime;

    iput-object v0, p0, Lsw/com/dabdrmradio/DabEPGProgramInfo;->program_start_time:Lsw/com/dabdrmradio/DabEPGTime;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lsw/com/dabdrmradio/DabEPGProgramInfo;->program_duaration:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEPGProgramDuaration()I
    .locals 0

    .line 28
    iget p0, p0, Lsw/com/dabdrmradio/DabEPGProgramInfo;->program_duaration:I

    return p0
.end method

.method public getEPGProgramName()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lsw/com/dabdrmradio/DabEPGProgramInfo;->program_name:Ljava/lang/String;

    return-object p0
.end method

.method public getEPGProgramStartTime()Lsw/com/dabdrmradio/DabEPGTime;
    .locals 0

    .line 20
    iget-object p0, p0, Lsw/com/dabdrmradio/DabEPGProgramInfo;->program_start_time:Lsw/com/dabdrmradio/DabEPGTime;

    return-object p0
.end method

.method public setEPGProgramDuaration(I)V
    .locals 0

    .line 32
    iput p1, p0, Lsw/com/dabdrmradio/DabEPGProgramInfo;->program_duaration:I

    return-void
.end method

.method public setEPGProgramName(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lsw/com/dabdrmradio/DabEPGProgramInfo;->program_name:Ljava/lang/String;

    return-void
.end method

.method public setEPGProgramStartTime(Lsw/com/dabdrmradio/DabEPGTime;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lsw/com/dabdrmradio/DabEPGProgramInfo;->program_start_time:Lsw/com/dabdrmradio/DabEPGTime;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 42
    iget-object v0, p0, Lsw/com/dabdrmradio/DabEPGProgramInfo;->program_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lsw/com/dabdrmradio/DabEPGProgramInfo;->program_start_time:Lsw/com/dabdrmradio/DabEPGTime;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    iget p0, p0, Lsw/com/dabdrmradio/DabEPGProgramInfo;->program_duaration:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
