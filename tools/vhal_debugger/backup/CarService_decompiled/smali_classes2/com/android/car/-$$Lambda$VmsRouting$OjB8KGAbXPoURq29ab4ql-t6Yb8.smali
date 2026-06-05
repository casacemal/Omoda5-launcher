.class public final synthetic Lcom/android/car/-$$Lambda$VmsRouting$OjB8KGAbXPoURq29ab4ql-t6Yb8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/car/VmsRouting;

.field private final synthetic f$1:Landroid/car/vms/IVmsSubscriberClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/VmsRouting;Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$VmsRouting$OjB8KGAbXPoURq29ab4ql-t6Yb8;->f$0:Lcom/android/car/VmsRouting;

    iput-object p2, p0, Lcom/android/car/-$$Lambda$VmsRouting$OjB8KGAbXPoURq29ab4ql-t6Yb8;->f$1:Landroid/car/vms/IVmsSubscriberClient;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/car/-$$Lambda$VmsRouting$OjB8KGAbXPoURq29ab4ql-t6Yb8;->f$0:Lcom/android/car/VmsRouting;

    iget-object v1, p0, Lcom/android/car/-$$Lambda$VmsRouting$OjB8KGAbXPoURq29ab4ql-t6Yb8;->f$1:Landroid/car/vms/IVmsSubscriberClient;

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {v0, v1, p1}, Lcom/android/car/VmsRouting;->lambda$removeDeadSubscriber$8$VmsRouting(Landroid/car/vms/IVmsSubscriberClient;Landroid/util/Pair;)V

    return-void
.end method
