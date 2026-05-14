.class final Lsw/com/dabdrmradio/DabImage$1;
.super Ljava/lang/Object;
.source "DabImage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsw/com/dabdrmradio/DabImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lsw/com/dabdrmradio/DabImage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/DabImage$1;->createFromParcel(Landroid/os/Parcel;)Lsw/com/dabdrmradio/DabImage;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lsw/com/dabdrmradio/DabImage;
    .locals 0

    .line 48
    new-instance p0, Lsw/com/dabdrmradio/DabImage;

    invoke-direct {p0, p1}, Lsw/com/dabdrmradio/DabImage;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/DabImage$1;->newArray(I)[Lsw/com/dabdrmradio/DabImage;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lsw/com/dabdrmradio/DabImage;
    .locals 0

    .line 53
    new-array p0, p1, [Lsw/com/dabdrmradio/DabImage;

    return-object p0
.end method
