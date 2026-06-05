.class Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SparseArrayEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final key:I

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/util/SparseArray;I)V
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "TU;>;I)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;, "Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry<TU;>;"
    .local p1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;->key:I

    .line 34
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;->value:Ljava/lang/Object;

    .line 35
    return-void
.end method
