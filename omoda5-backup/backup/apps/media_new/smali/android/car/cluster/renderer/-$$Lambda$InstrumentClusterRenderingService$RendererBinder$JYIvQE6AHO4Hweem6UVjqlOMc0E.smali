.class public final synthetic Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$RendererBinder$JYIvQE6AHO4Hweem6UVjqlOMc0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;

.field public final synthetic f$1:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$RendererBinder$JYIvQE6AHO4Hweem6UVjqlOMc0E;->f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;

    iput-object p2, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$RendererBinder$JYIvQE6AHO4Hweem6UVjqlOMc0E;->f$1:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$RendererBinder$JYIvQE6AHO4Hweem6UVjqlOMc0E;->f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;

    iget-object p0, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$RendererBinder$JYIvQE6AHO4Hweem6UVjqlOMc0E;->f$1:Landroid/view/KeyEvent;

    invoke-virtual {v0, p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;->lambda$onKeyEvent$1$InstrumentClusterRenderingService$RendererBinder(Landroid/view/KeyEvent;)V

    return-void
.end method
