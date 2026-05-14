.class public final synthetic Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$AouD2VCy5QEXfLjDn2L7OgfQzow;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$AouD2VCy5QEXfLjDn2L7OgfQzow;->f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;

    iput-object p2, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$AouD2VCy5QEXfLjDn2L7OgfQzow;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$AouD2VCy5QEXfLjDn2L7OgfQzow;->f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;

    iget-object p0, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$AouD2VCy5QEXfLjDn2L7OgfQzow;->f$1:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->lambda$onNavigationStateChanged$0$InstrumentClusterRenderingService$NavigationBinder(Landroid/os/Bundle;)V

    return-void
.end method
