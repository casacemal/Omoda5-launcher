.class public final synthetic Lcom/android/car/-$$Lambda$VmsPublisherService$PublisherProxy$rrKPCrgOjZO7Ry3Ya-V8LFGVtmM;
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

    iput-object p1, p0, Lcom/android/car/-$$Lambda$VmsPublisherService$PublisherProxy$rrKPCrgOjZO7Ry3Ya-V8LFGVtmM;->f$0:Lcom/android/car/VmsPublisherService$PublisherProxy;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$VmsPublisherService$PublisherProxy$rrKPCrgOjZO7Ry3Ya-V8LFGVtmM;->f$0:Lcom/android/car/VmsPublisherService$PublisherProxy;

    check-cast p1, Lcom/android/car/VmsPublisherService$PacketFailureKey;

    invoke-virtual {v0, p1}, Lcom/android/car/VmsPublisherService$PublisherProxy;->lambda$incrementPacketFailure$1$VmsPublisherService$PublisherProxy(Lcom/android/car/VmsPublisherService$PacketFailureKey;)Lcom/android/car/VmsPublisherService$PacketCountAndSize;

    move-result-object p1

    return-object p1
.end method
