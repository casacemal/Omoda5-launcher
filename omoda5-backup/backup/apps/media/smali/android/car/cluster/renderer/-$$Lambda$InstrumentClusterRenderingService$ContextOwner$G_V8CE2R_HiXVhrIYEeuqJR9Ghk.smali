.class public final synthetic Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$ContextOwner$G_V8CE2R_HiXVhrIYEeuqJR9Ghk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

.field public final synthetic f$1:Landroid/content/pm/PackageManager;


# direct methods
.method public synthetic constructor <init>(Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$ContextOwner$G_V8CE2R_HiXVhrIYEeuqJR9Ghk;->f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    iput-object p2, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$ContextOwner$G_V8CE2R_HiXVhrIYEeuqJR9Ghk;->f$1:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$ContextOwner$G_V8CE2R_HiXVhrIYEeuqJR9Ghk;->f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    iget-object p0, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$ContextOwner$G_V8CE2R_HiXVhrIYEeuqJR9Ghk;->f$1:Landroid/content/pm/PackageManager;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;->lambda$new$0$InstrumentClusterRenderingService$ContextOwner(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
