.class final Lcom/android/car/audio/CarVolumePoint;
.super Ljava/lang/Object;
.source "CarVolumeTable.java"


# instance fields
.field public mIndex:I

.field public mStep:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "step"    # I
    .param p2, "index"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/android/car/audio/CarVolumePoint;->mStep:I

    .line 79
    iput p2, p0, Lcom/android/car/audio/CarVolumePoint;->mIndex:I

    .line 80
    return-void
.end method
