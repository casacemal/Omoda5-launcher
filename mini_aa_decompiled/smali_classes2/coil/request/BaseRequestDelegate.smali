.class public final Lcoil/request/BaseRequestDelegate;
.super Ljava/lang/Object;
.source "RequestDelegate.kt"

# interfaces
.implements Lcoil/request/RequestDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0008\u0010\u000b\u001a\u00020\tH\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcoil/request/BaseRequestDelegate;",
        "Lcoil/request/RequestDelegate;",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "<init>",
        "(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V",
        "start",
        "",
        "complete",
        "dispose",
        "onDestroy",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final job:Lkotlinx/coroutines/Job;

.field private final lifecycle:Landroidx/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcoil/request/BaseRequestDelegate;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 37
    iput-object p2, p0, Lcoil/request/BaseRequestDelegate;->job:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcoil/request/BaseRequestDelegate;->lifecycle:Landroidx/lifecycle/Lifecycle;

    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 49
    iget-object p0, p0, Lcoil/request/BaseRequestDelegate;->job:Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcoil/request/BaseRequestDelegate;->dispose()V

    return-void
.end method

.method public start()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcoil/request/BaseRequestDelegate;->lifecycle:Landroidx/lifecycle/Lifecycle;

    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
