.class Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/vehiclehal/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SparseArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry<",
        "TT;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final mArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mIndex:I


# direct methods
.method constructor <init>(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;, "Lcom/android/car/vehiclehal/Utils$SparseArrayIterator<TT;>;"
    .local p1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;->mIndex:I

    .line 42
    iput-object p1, p0, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;->mArray:Landroid/util/SparseArray;

    .line 43
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 52
    .local p0, "this":Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;, "Lcom/android/car/vehiclehal/Utils$SparseArrayIterator<TT;>;"
    iget v0, p0, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;->mIndex:I

    iget-object v1, p0, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry<",
            "TT;>;>;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;, "Lcom/android/car/vehiclehal/Utils$SparseArrayIterator<TT;>;"
    return-object p0
.end method

.method public next()Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry<",
            "TT;>;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;, "Lcom/android/car/vehiclehal/Utils$SparseArrayIterator<TT;>;"
    new-instance v0, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;

    iget-object v1, p0, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;->mArray:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;->mIndex:I

    invoke-direct {v0, v1, v2}, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;-><init>(Landroid/util/SparseArray;I)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 25
    .local p0, "this":Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;, "Lcom/android/car/vehiclehal/Utils$SparseArrayIterator<TT;>;"
    invoke-virtual {p0}, Lcom/android/car/vehiclehal/Utils$SparseArrayIterator;->next()Lcom/android/car/vehiclehal/Utils$SparseArrayIterator$SparseArrayEntry;

    move-result-object v0

    return-object v0
.end method
