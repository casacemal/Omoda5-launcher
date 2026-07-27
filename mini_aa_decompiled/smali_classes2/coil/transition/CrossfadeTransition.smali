.class public final Lcoil/transition/CrossfadeTransition;
.super Ljava/lang/Object;
.source "CrossfadeTransition.kt"

# interfaces
.implements Lcoil/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/transition/CrossfadeTransition$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrossfadeTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrossfadeTransition.kt\ncoil/transition/CrossfadeTransition\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B-\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcoil/transition/CrossfadeTransition;",
        "Lcoil/transition/Transition;",
        "target",
        "Lcoil/transition/TransitionTarget;",
        "result",
        "Lcoil/request/ImageResult;",
        "durationMillis",
        "",
        "preferExactIntrinsicSize",
        "",
        "<init>",
        "(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;IZ)V",
        "getDurationMillis",
        "()I",
        "getPreferExactIntrinsicSize",
        "()Z",
        "transition",
        "",
        "Factory",
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
.field private final durationMillis:I

.field private final preferExactIntrinsicSize:Z

.field private final result:Lcoil/request/ImageResult;

.field private final target:Lcoil/transition/TransitionTarget;


# direct methods
.method public constructor <init>(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;)V
    .locals 7

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcoil/transition/CrossfadeTransition;-><init>(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;I)V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcoil/transition/CrossfadeTransition;-><init>(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;IZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcoil/transition/CrossfadeTransition;->target:Lcoil/transition/TransitionTarget;

    .line 17
    iput-object p2, p0, Lcoil/transition/CrossfadeTransition;->result:Lcoil/request/ImageResult;

    .line 18
    iput p3, p0, Lcoil/transition/CrossfadeTransition;->durationMillis:I

    .line 19
    iput-boolean p4, p0, Lcoil/transition/CrossfadeTransition;->preferExactIntrinsicSize:Z

    if-lez p3, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "durationMillis must be > 0."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/16 p3, 0x64

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 15
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcoil/transition/CrossfadeTransition;-><init>(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;IZ)V

    return-void
.end method


# virtual methods
.method public final getDurationMillis()I
    .locals 0

    .line 18
    iget p0, p0, Lcoil/transition/CrossfadeTransition;->durationMillis:I

    return p0
.end method

.method public final getPreferExactIntrinsicSize()Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcoil/transition/CrossfadeTransition;->preferExactIntrinsicSize:Z

    return p0
.end method

.method public transition()V
    .locals 8

    .line 27
    new-instance v7, Lcoil/drawable/CrossfadeDrawable;

    .line 28
    iget-object v0, p0, Lcoil/transition/CrossfadeTransition;->target:Lcoil/transition/TransitionTarget;

    invoke-interface {v0}, Lcoil/transition/TransitionTarget;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 29
    iget-object v0, p0, Lcoil/transition/CrossfadeTransition;->result:Lcoil/request/ImageResult;

    invoke-virtual {v0}, Lcoil/request/ImageResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 30
    iget-object v0, p0, Lcoil/transition/CrossfadeTransition;->result:Lcoil/request/ImageResult;

    invoke-virtual {v0}, Lcoil/request/ImageResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getScale()Lcoil/size/Scale;

    move-result-object v3

    .line 31
    iget v4, p0, Lcoil/transition/CrossfadeTransition;->durationMillis:I

    .line 32
    iget-object v0, p0, Lcoil/transition/CrossfadeTransition;->result:Lcoil/request/ImageResult;

    instance-of v5, v0, Lcoil/request/SuccessResult;

    if-eqz v5, :cond_1

    check-cast v0, Lcoil/request/SuccessResult;

    invoke-virtual {v0}, Lcoil/request/SuccessResult;->isPlaceholderCached()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v5, v0

    .line 33
    iget-boolean v6, p0, Lcoil/transition/CrossfadeTransition;->preferExactIntrinsicSize:Z

    move-object v0, v7

    .line 27
    invoke-direct/range {v0 .. v6}, Lcoil/drawable/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;IZZ)V

    .line 35
    iget-object v0, p0, Lcoil/transition/CrossfadeTransition;->result:Lcoil/request/ImageResult;

    .line 36
    instance-of v1, v0, Lcoil/request/SuccessResult;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcoil/transition/CrossfadeTransition;->target:Lcoil/transition/TransitionTarget;

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-interface {p0, v7}, Lcoil/transition/TransitionTarget;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 37
    :cond_2
    instance-of v0, v0, Lcoil/request/ErrorResult;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcoil/transition/CrossfadeTransition;->target:Lcoil/transition/TransitionTarget;

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-interface {p0, v7}, Lcoil/transition/TransitionTarget;->onError(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void

    .line 35
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
