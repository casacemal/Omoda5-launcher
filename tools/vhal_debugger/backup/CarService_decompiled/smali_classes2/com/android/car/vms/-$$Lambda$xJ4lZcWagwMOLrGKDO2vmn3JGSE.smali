.class public final synthetic Lcom/android/car/vms/-$$Lambda$xJ4lZcWagwMOLrGKDO2vmn3JGSE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/vms/VmsClientManager$PublisherConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/vms/VmsClientManager$PublisherConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/vms/-$$Lambda$xJ4lZcWagwMOLrGKDO2vmn3JGSE;->f$0:Lcom/android/car/vms/VmsClientManager$PublisherConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/car/vms/-$$Lambda$xJ4lZcWagwMOLrGKDO2vmn3JGSE;->f$0:Lcom/android/car/vms/VmsClientManager$PublisherConnection;

    invoke-virtual {v0}, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->doRebind()V

    return-void
.end method
