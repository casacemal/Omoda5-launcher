.class public final synthetic Lcom/android/car/-$$Lambda$CarLocationService$1$PJ26-jNRQe6t5bQwFKIA9ddCeVY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/CarLocationService$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/CarLocationService$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarLocationService$1$PJ26-jNRQe6t5bQwFKIA9ddCeVY;->f$0:Lcom/android/car/CarLocationService$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarLocationService$1$PJ26-jNRQe6t5bQwFKIA9ddCeVY;->f$0:Lcom/android/car/CarLocationService$1;

    invoke-virtual {v0}, Lcom/android/car/CarLocationService$1;->lambda$onServiceConnected$0$CarLocationService$1()V

    return-void
.end method
