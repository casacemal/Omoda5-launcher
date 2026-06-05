.class public final synthetic Lcom/android/car/-$$Lambda$VmsRouting$rbORpligw5njaPtOOqyFrlyFdS0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$VmsRouting$rbORpligw5njaPtOOqyFrlyFdS0;->f$0:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$VmsRouting$rbORpligw5njaPtOOqyFrlyFdS0;->f$0:Ljava/util/Map$Entry;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/android/car/VmsRouting;->lambda$removeDeadSubscriber$6(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
