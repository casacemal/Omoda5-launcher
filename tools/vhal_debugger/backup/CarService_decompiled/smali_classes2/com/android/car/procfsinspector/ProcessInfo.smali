.class public Lcom/android/car/procfsinspector/ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/car/procfsinspector/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final pid:I

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/android/car/procfsinspector/ProcessInfo$1;

    invoke-direct {v0}, Lcom/android/car/procfsinspector/ProcessInfo$1;-><init>()V

    sput-object v0, Lcom/android/car/procfsinspector/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/android/car/procfsinspector/ProcessInfo;->pid:I

    .line 39
    iput p2, p0, Lcom/android/car/procfsinspector/ProcessInfo;->uid:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/car/procfsinspector/ProcessInfo;->pid:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/car/procfsinspector/ProcessInfo;->uid:I

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 60
    instance-of v0, p1, Lcom/android/car/procfsinspector/ProcessInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 61
    move-object v0, p1

    check-cast v0, Lcom/android/car/procfsinspector/ProcessInfo;

    .line 62
    .local v0, "processInfo":Lcom/android/car/procfsinspector/ProcessInfo;
    iget v2, v0, Lcom/android/car/procfsinspector/ProcessInfo;->pid:I

    iget v3, p0, Lcom/android/car/procfsinspector/ProcessInfo;->pid:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/car/procfsinspector/ProcessInfo;->uid:I

    iget v3, p0, Lcom/android/car/procfsinspector/ProcessInfo;->uid:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 65
    .end local v0    # "processInfo":Lcom/android/car/procfsinspector/ProcessInfo;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/car/procfsinspector/ProcessInfo;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/procfsinspector/ProcessInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/car/procfsinspector/ProcessInfo;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/procfsinspector/ProcessInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "pid = %d, uid = %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 54
    iget v0, p0, Lcom/android/car/procfsinspector/ProcessInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lcom/android/car/procfsinspector/ProcessInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void
.end method
