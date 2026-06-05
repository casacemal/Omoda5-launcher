.class Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;
.super Ljava/lang/Object;
.source "DiagnosticEventBuilder.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/vehiclehal/DiagnosticEventBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultedArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mElements:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mSize:I

.field final synthetic this$0:Lcom/android/car/vehiclehal/DiagnosticEventBuilder;


# direct methods
.method constructor <init>(Lcom/android/car/vehiclehal/DiagnosticEventBuilder;ILjava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/car/vehiclehal/DiagnosticEventBuilder;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;, "Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray<TT;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->this$0:Lcom/android/car/vehiclehal/DiagnosticEventBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->mElements:Landroid/util/SparseArray;

    .line 45
    iput p2, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->mSize:I

    .line 46
    iput-object p3, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->mDefaultValue:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;

    .line 39
    iget v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->mSize:I

    return v0
.end method

.method private checkIndex(I)I
    .locals 4
    .param p1, "index"    # I

    .line 50
    .local p0, "this":Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;, "Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray<TT;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->mSize:I

    if-ge p1, v0, :cond_0

    .line 53
    return p1

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->mSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Index: %d, Size: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 72
    .local p0, "this":Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;, "Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray<TT;>;"
    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->mElements:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 73
    return-void
.end method

.method get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;, "Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->checkIndex(I)I

    .line 64
    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->mElements:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;, "Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray<TT;>;"
    new-instance v0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray$1;

    invoke-direct {v0, p0}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray$1;-><init>(Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;)V

    return-object v0
.end method

.method set(ILjava/lang/Object;)Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray<",
            "TT;>;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;, "Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray<TT;>;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->checkIndex(I)I

    .line 58
    iget-object v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->mElements:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    return-object p0
.end method

.method size()I
    .locals 1

    .line 68
    .local p0, "this":Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;, "Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray<TT;>;"
    iget v0, p0, Lcom/android/car/vehiclehal/DiagnosticEventBuilder$DefaultedArray;->mSize:I

    return v0
.end method
