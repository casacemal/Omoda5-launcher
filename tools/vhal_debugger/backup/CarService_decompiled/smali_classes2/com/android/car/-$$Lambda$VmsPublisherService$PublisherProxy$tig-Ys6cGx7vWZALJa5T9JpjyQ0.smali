.class public final synthetic Lcom/android/car/-$$Lambda$VmsPublisherService$PublisherProxy$tig-Ys6cGx7vWZALJa5T9JpjyQ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/android/car/VmsPublisherService$PublisherProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/VmsPublisherService$PublisherProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$VmsPublisherService$PublisherProxy$tig-Ys6cGx7vWZALJa5T9JpjyQ0;->f$0:Lcom/android/car/VmsPublisherService$PublisherProxy;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$VmsPublisherService$PublisherProxy$tig-Ys6cGx7vWZALJa5T9JpjyQ0;->f$0:Lcom/android/car/VmsPublisherService$PublisherProxy;

    check-cast p1, Landroid/car/vms/VmsLayer;

    invoke-virtual {v0, p1}, Lcom/android/car/VmsPublisherService$PublisherProxy;->lambda$incrementPacketCount$0$VmsPublisherService$PublisherProxy(Landroid/car/vms/VmsLayer;)Lcom/android/car/VmsPublisherService$PacketCountAndSize;

    move-result-object p1

    return-object p1
.end method
