.class public final synthetic Lcom/android/car/vms/-$$Lambda$VmsClientManager$1$LO6_pLE4NSD5x7nZxbzivvyBhao;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/car/vms/-$$Lambda$VmsClientManager$1$LO6_pLE4NSD5x7nZxbzivvyBhao;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/car/vms/-$$Lambda$VmsClientManager$1$LO6_pLE4NSD5x7nZxbzivvyBhao;->f$0:I

    check-cast p1, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;

    invoke-static {v0, p1}, Lcom/android/car/vms/VmsClientManager$1;->lambda$onReceive$0(ILcom/android/car/vms/VmsClientManager$SubscriberConnection;)Z

    move-result p1

    return p1
.end method
