.class public final synthetic Landroid/car/vms/-$$Lambda$VmsSubscriberManager$1$YFkXlCwCneVvMYfeu4olB3-8X0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/vms/VmsSubscriberManager$1;

.field public final synthetic f$1:Landroid/car/vms/VmsAvailableLayers;


# direct methods
.method public synthetic constructor <init>(Landroid/car/vms/VmsSubscriberManager$1;Landroid/car/vms/VmsAvailableLayers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/vms/-$$Lambda$VmsSubscriberManager$1$YFkXlCwCneVvMYfeu4olB3-8X0o;->f$0:Landroid/car/vms/VmsSubscriberManager$1;

    iput-object p2, p0, Landroid/car/vms/-$$Lambda$VmsSubscriberManager$1$YFkXlCwCneVvMYfeu4olB3-8X0o;->f$1:Landroid/car/vms/VmsAvailableLayers;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/car/vms/-$$Lambda$VmsSubscriberManager$1$YFkXlCwCneVvMYfeu4olB3-8X0o;->f$0:Landroid/car/vms/VmsSubscriberManager$1;

    iget-object p0, p0, Landroid/car/vms/-$$Lambda$VmsSubscriberManager$1$YFkXlCwCneVvMYfeu4olB3-8X0o;->f$1:Landroid/car/vms/VmsAvailableLayers;

    invoke-virtual {v0, p0}, Landroid/car/vms/VmsSubscriberManager$1;->lambda$onLayersAvailabilityChanged$1$VmsSubscriberManager$1(Landroid/car/vms/VmsAvailableLayers;)V

    return-void
.end method
