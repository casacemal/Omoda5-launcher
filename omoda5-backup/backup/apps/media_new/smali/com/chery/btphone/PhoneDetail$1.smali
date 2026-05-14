.class final Lcom/chery/btphone/PhoneDetail$1;
.super Ljava/lang/Object;
.source "PhoneDetail.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/btphone/PhoneDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/chery/btphone/PhoneDetail;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/chery/btphone/PhoneDetail;
    .locals 0

    .line 95
    new-instance p0, Lcom/chery/btphone/PhoneDetail;

    invoke-direct {p0, p1}, Lcom/chery/btphone/PhoneDetail;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/chery/btphone/PhoneDetail$1;->createFromParcel(Landroid/os/Parcel;)Lcom/chery/btphone/PhoneDetail;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/chery/btphone/PhoneDetail;
    .locals 0

    .line 100
    new-array p0, p1, [Lcom/chery/btphone/PhoneDetail;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/chery/btphone/PhoneDetail$1;->newArray(I)[Lcom/chery/btphone/PhoneDetail;

    move-result-object p0

    return-object p0
.end method
