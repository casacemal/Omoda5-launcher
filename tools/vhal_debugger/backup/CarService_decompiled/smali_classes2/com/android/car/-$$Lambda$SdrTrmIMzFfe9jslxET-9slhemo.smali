.class public final synthetic Lcom/android/car/-$$Lambda$SdrTrmIMzFfe9jslxET-9slhemo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/car/SlidingWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/SlidingWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$SdrTrmIMzFfe9jslxET-9slhemo;->f$0:Lcom/android/car/SlidingWindow;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$SdrTrmIMzFfe9jslxET-9slhemo;->f$0:Lcom/android/car/SlidingWindow;

    invoke-virtual {v0, p1}, Lcom/android/car/SlidingWindow;->add(Ljava/lang/Object;)V

    return-void
.end method
