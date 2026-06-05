.class public final synthetic Lcom/android/car/-$$Lambda$CarLocationService$LTyswo2Q2YA9ZwNV60FLqVhM8VE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/CarLocationService;

.field private final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/CarLocationService;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarLocationService$LTyswo2Q2YA9ZwNV60FLqVhM8VE;->f$0:Lcom/android/car/CarLocationService;

    iput-object p2, p0, Lcom/android/car/-$$Lambda$CarLocationService$LTyswo2Q2YA9ZwNV60FLqVhM8VE;->f$1:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarLocationService$LTyswo2Q2YA9ZwNV60FLqVhM8VE;->f$0:Lcom/android/car/CarLocationService;

    iget-object v1, p0, Lcom/android/car/-$$Lambda$CarLocationService$LTyswo2Q2YA9ZwNV60FLqVhM8VE;->f$1:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, v1}, Lcom/android/car/CarLocationService;->lambda$onStateChanged$0$CarLocationService(Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method
