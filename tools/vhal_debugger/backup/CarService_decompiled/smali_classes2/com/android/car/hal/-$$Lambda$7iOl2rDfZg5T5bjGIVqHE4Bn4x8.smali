.class public final synthetic Lcom/android/car/hal/-$$Lambda$7iOl2rDfZg5T5bjGIVqHE4Bn4x8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/hal/-$$Lambda$7iOl2rDfZg5T5bjGIVqHE4Bn4x8;->f$0:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/hal/-$$Lambda$7iOl2rDfZg5T5bjGIVqHE4Bn4x8;->f$0:Landroid/os/Handler;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
