.class Lcom/android/car/procfsinspector/ProcessInfo$1;
.super Ljava/lang/Object;
.source "ProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/procfsinspector/ProcessInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/car/procfsinspector/ProcessInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/car/procfsinspector/ProcessInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 26
    new-instance v0, Lcom/android/car/procfsinspector/ProcessInfo;

    invoke-direct {v0, p1}, Lcom/android/car/procfsinspector/ProcessInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/car/procfsinspector/ProcessInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/car/procfsinspector/ProcessInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/car/procfsinspector/ProcessInfo;
    .locals 1
    .param p1, "size"    # I

    .line 30
    new-array v0, p1, [Lcom/android/car/procfsinspector/ProcessInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/car/procfsinspector/ProcessInfo$1;->newArray(I)[Lcom/android/car/procfsinspector/ProcessInfo;

    move-result-object p1

    return-object p1
.end method
