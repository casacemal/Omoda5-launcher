.class public final synthetic Lcom/android/car/-$$Lambda$q72-uw-mQt7s7qER6SYQZJ9GG9o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field private final synthetic f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$q72-uw-mQt7s7qER6SYQZJ9GG9o;->f$0:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$q72-uw-mQt7s7qER6SYQZJ9GG9o;->f$0:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1
.end method
