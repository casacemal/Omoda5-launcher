.class final Lsw/com/dabdrmradio/DabEPGTime$1;
.super Ljava/lang/Object;
.source "DabEPGTime.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsw/com/dabdrmradio/DabEPGTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lsw/com/dabdrmradio/DabEPGTime;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/DabEPGTime$1;->createFromParcel(Landroid/os/Parcel;)Lsw/com/dabdrmradio/DabEPGTime;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lsw/com/dabdrmradio/DabEPGTime;
    .locals 0

    .line 110
    new-instance p0, Lsw/com/dabdrmradio/DabEPGTime;

    invoke-direct {p0, p1}, Lsw/com/dabdrmradio/DabEPGTime;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/DabEPGTime$1;->newArray(I)[Lsw/com/dabdrmradio/DabEPGTime;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lsw/com/dabdrmradio/DabEPGTime;
    .locals 0

    .line 115
    new-array p0, p1, [Lsw/com/dabdrmradio/DabEPGTime;

    return-object p0
.end method
