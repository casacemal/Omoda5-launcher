.class final Lcoil/compose/SubcomposeAsyncImageKt$contentOf$1;
.super Ljava/lang/Object;
.source "SubcomposeAsyncImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/SubcomposeAsyncImageKt;->contentOf(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;)Lkotlin/jvm/functions/Function3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcoil/compose/SubcomposeAsyncImageScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubcomposeAsyncImage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubcomposeAsyncImage.kt\ncoil/compose/SubcomposeAsyncImageKt$contentOf$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,406:1\n1#2:407\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $error:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "Lcoil/compose/AsyncImagePainter$State$Error;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $loading:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "Lcoil/compose/AsyncImagePainter$State$Loading;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $success:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "Lcoil/compose/AsyncImagePainter$State$Success;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Loading;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Success;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Error;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcoil/compose/SubcomposeAsyncImageKt$contentOf$1;->$loading:Lkotlin/jvm/functions/Function4;

    iput-object p2, p0, Lcoil/compose/SubcomposeAsyncImageKt$contentOf$1;->$success:Lkotlin/jvm/functions/Function4;

    iput-object p3, p0, Lcoil/compose/SubcomposeAsyncImageKt$contentOf$1;->$error:Lkotlin/jvm/functions/Function4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 381
    check-cast p1, Lcoil/compose/SubcomposeAsyncImageScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcoil/compose/SubcomposeAsyncImageKt$contentOf$1;->invoke(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v9, p2

    and-int/lit8 v2, p3, 0xe

    if-nez v2, :cond_1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p3, v2

    goto :goto_1

    :cond_1
    move/from16 v2, p3

    :goto_1
    and-int/lit8 v3, v2, 0x5b

    const/16 v4, 0x12

    if-ne v3, v4, :cond_3

    .line 382
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 389
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_8

    .line 383
    :cond_3
    :goto_2
    invoke-interface {p1}, Lcoil/compose/SubcomposeAsyncImageScope;->getPainter()Lcoil/compose/AsyncImagePainter;

    move-result-object v3

    invoke-virtual {v3}, Lcoil/compose/AsyncImagePainter;->getState()Lcoil/compose/AsyncImagePainter$State;

    move-result-object v3

    .line 384
    instance-of v4, v3, Lcoil/compose/AsyncImagePainter$State$Loading;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    const v4, 0x67aed995

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    iget-object v0, v0, Lcoil/compose/SubcomposeAsyncImageKt$contentOf$1;->$loading:Lkotlin/jvm/functions/Function4;

    if-eqz v0, :cond_4

    and-int/lit8 v4, v2, 0xe

    or-int/lit8 v4, v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, p1, v3, p2, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :cond_4
    move v5, v6

    :goto_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_4
    move v6, v5

    goto :goto_7

    .line 385
    :cond_5
    instance-of v4, v3, Lcoil/compose/AsyncImagePainter$State$Success;

    if-eqz v4, :cond_7

    const v4, 0x67b045d5

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    iget-object v0, v0, Lcoil/compose/SubcomposeAsyncImageKt$contentOf$1;->$success:Lkotlin/jvm/functions/Function4;

    if-eqz v0, :cond_6

    and-int/lit8 v4, v2, 0xe

    or-int/lit8 v4, v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, p1, v3, p2, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5

    :cond_6
    move v5, v6

    :goto_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_4

    .line 386
    :cond_7
    instance-of v4, v3, Lcoil/compose/AsyncImagePainter$State$Error;

    if-eqz v4, :cond_9

    const v4, 0x67b1a9d9

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    iget-object v0, v0, Lcoil/compose/SubcomposeAsyncImageKt$contentOf$1;->$error:Lkotlin/jvm/functions/Function4;

    if-eqz v0, :cond_8

    and-int/lit8 v4, v2, 0xe

    or-int/lit8 v4, v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, p1, v3, p2, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_6

    :cond_8
    move v5, v6

    :goto_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_4

    .line 387
    :cond_9
    instance-of v0, v3, Lcoil/compose/AsyncImagePainter$State$Empty;

    if-eqz v0, :cond_b

    const v0, 0x67b2f8ac

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_7
    if-eqz v6, :cond_a

    and-int/lit8 v10, v2, 0xe

    const/16 v11, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, p1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move v8, v12

    move-object v9, p2

    .line 389
    invoke-static/range {v0 .. v11}, Lcoil/compose/SubcomposeAsyncImageKt;->SubcomposeAsyncImageContent(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLandroidx/compose/runtime/Composer;II)V

    :cond_a
    :goto_8
    return-void

    :cond_b
    const v0, -0x4e9df77

    .line 383
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
