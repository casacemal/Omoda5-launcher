.class public final synthetic Lcom/android/car/-$$Lambda$VmsRouting$Sf0Mf-MjsAvYT4ponMWGUs3bNEY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$VmsRouting$Sf0Mf-MjsAvYT4ponMWGUs3bNEY;->f$0:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$VmsRouting$Sf0Mf-MjsAvYT4ponMWGUs3bNEY;->f$0:Landroid/os/IBinder;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/android/car/VmsRouting;->lambda$removeDeadSubscriber$5(Landroid/os/IBinder;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
