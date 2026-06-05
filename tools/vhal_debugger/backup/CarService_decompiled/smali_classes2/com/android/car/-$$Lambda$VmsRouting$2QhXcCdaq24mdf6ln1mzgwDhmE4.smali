.class public final synthetic Lcom/android/car/-$$Lambda$VmsRouting$2QhXcCdaq24mdf6ln1mzgwDhmE4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/android/car/VmsRouting;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/VmsRouting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$VmsRouting$2QhXcCdaq24mdf6ln1mzgwDhmE4;->f$0:Lcom/android/car/VmsRouting;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$VmsRouting$2QhXcCdaq24mdf6ln1mzgwDhmE4;->f$0:Lcom/android/car/VmsRouting;

    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Lcom/android/car/VmsRouting;->lambda$getSubscribersForLayerFromPublisher$9$VmsRouting(Landroid/os/IBinder;)Landroid/car/vms/IVmsSubscriberClient;

    move-result-object p1

    return-object p1
.end method
