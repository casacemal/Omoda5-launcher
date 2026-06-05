.class public final synthetic Lcom/android/car/garagemode/-$$Lambda$GarageMode$EJDPPpU8PkORJG5W6FKZ0KO7wbQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/car/garagemode/GarageMode;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/garagemode/GarageMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/garagemode/-$$Lambda$GarageMode$EJDPPpU8PkORJG5W6FKZ0KO7wbQ;->f$0:Lcom/android/car/garagemode/GarageMode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/garagemode/-$$Lambda$GarageMode$EJDPPpU8PkORJG5W6FKZ0KO7wbQ;->f$0:Lcom/android/car/garagemode/GarageMode;

    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/garagemode/GarageMode;->lambda$updateFuture$0$GarageMode(Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method
