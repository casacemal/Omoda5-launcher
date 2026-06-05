.class public final synthetic Lcom/android/car/-$$Lambda$CarServiceThreadPool$3eBhHjaYL4dR5c5740A_iQNnz30;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarServiceThreadPool$3eBhHjaYL4dR5c5740A_iQNnz30;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarServiceThreadPool$3eBhHjaYL4dR5c5740A_iQNnz30;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/car/CarServiceThreadPool;->lambda$submit$0(Ljava/lang/Runnable;)V

    return-void
.end method
