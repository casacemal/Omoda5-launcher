.class public final synthetic Lcom/android/car/-$$Lambda$CarProjectionService$0Y_gaNrLudUElLWvh51qbk6sLUI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lcom/android/car/CarProjectionService;

.field private final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/CarProjectionService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarProjectionService$0Y_gaNrLudUElLWvh51qbk6sLUI;->f$0:Lcom/android/car/CarProjectionService;

    iput-object p2, p0, Lcom/android/car/-$$Lambda$CarProjectionService$0Y_gaNrLudUElLWvh51qbk6sLUI;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarProjectionService$0Y_gaNrLudUElLWvh51qbk6sLUI;->f$0:Lcom/android/car/CarProjectionService;

    iget-object v1, p0, Lcom/android/car/-$$Lambda$CarProjectionService$0Y_gaNrLudUElLWvh51qbk6sLUI;->f$1:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/car/CarProjectionService;->lambda$getOrCreateProjectionReceiverClientLocked$0$CarProjectionService(Landroid/os/IBinder;)V

    return-void
.end method
