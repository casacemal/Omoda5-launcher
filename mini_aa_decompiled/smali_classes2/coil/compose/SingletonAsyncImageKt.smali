.class public final Lcoil/compose/SingletonAsyncImageKt;
.super Ljava/lang/Object;
.source "SingletonAsyncImage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u00e1\u0001\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0016\u0008\u0002\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0016\u0008\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0016\u0008\u0002\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008!\u0010\"\u001a\u00cd\u0001\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0016\u0008\u0002\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0016\u0008\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0016\u0008\u0002\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u0007\u00a2\u0006\u0004\u0008#\u0010$\u001a\u00a3\u0001\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0014\u0008\u0002\u0010%\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&0\r2\u0016\u0008\u0002\u0010\'\u001a\u0010\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008(\u0010)\u001a\u008f\u0001\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0014\u0008\u0002\u0010%\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&0\r2\u0016\u0008\u0002\u0010\'\u001a\u0010\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u0007\u00a2\u0006\u0004\u0008*\u0010+\u00a8\u0006,"
    }
    d2 = {
        "AsyncImage",
        "",
        "model",
        "",
        "contentDescription",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "placeholder",
        "Landroidx/compose/ui/graphics/painter/Painter;",
        "error",
        "fallback",
        "onLoading",
        "Lkotlin/Function1;",
        "Lcoil/compose/AsyncImagePainter$State$Loading;",
        "onSuccess",
        "Lcoil/compose/AsyncImagePainter$State$Success;",
        "onError",
        "Lcoil/compose/AsyncImagePainter$State$Error;",
        "alignment",
        "Landroidx/compose/ui/Alignment;",
        "contentScale",
        "Landroidx/compose/ui/layout/ContentScale;",
        "alpha",
        "",
        "colorFilter",
        "Landroidx/compose/ui/graphics/ColorFilter;",
        "filterQuality",
        "Landroidx/compose/ui/graphics/FilterQuality;",
        "clipToBounds",
        "",
        "modelEqualityDelegate",
        "Lcoil/compose/EqualityDelegate;",
        "AsyncImage-Vb_qNX0",
        "(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V",
        "AsyncImage-ylYTKUw",
        "(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;III)V",
        "transform",
        "Lcoil/compose/AsyncImagePainter$State;",
        "onState",
        "AsyncImage-gl8XCv8",
        "(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V",
        "AsyncImage-3HmZ8SU",
        "(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;II)V",
        "coil-compose-singleton_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic AsyncImage-3HmZ8SU(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;II)V
    .locals 17
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    move-object/from16 v13, p10

    move/from16 v0, p12

    const v1, -0x381e6b2c

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 184
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 185
    sget-object v1, Lcoil/compose/AsyncImagePainter;->Companion:Lcoil/compose/AsyncImagePainter$Companion;

    invoke-virtual {v1}, Lcoil/compose/AsyncImagePainter$Companion;->getDefaultTransform()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 187
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    move-object v6, v1

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 188
    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v1

    move-object v7, v1

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    move v8, v1

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v9, v2

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 191
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v0

    move v10, v0

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    .line 195
    :goto_7
    invoke-static {}, Lcoil/compose/LocalImageLoaderKt;->getLocalImageLoader()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v13, v1}, Lcoil/compose/ImageLoaderProvidableCompositionLocal;->getCurrent(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;I)Lcoil/ImageLoader;

    move-result-object v2

    and-int/lit8 v0, p11, 0x70

    or-int/lit16 v0, v0, 0x208

    shl-int/lit8 v1, p11, 0x3

    and-int/lit16 v11, v1, 0x1c00

    or-int/2addr v0, v11

    const v11, 0xe000

    and-int/2addr v11, v1

    or-int/2addr v0, v11

    const/high16 v11, 0x70000

    and-int/2addr v11, v1

    or-int/2addr v0, v11

    const/high16 v11, 0x380000

    and-int/2addr v11, v1

    or-int/2addr v0, v11

    const/high16 v11, 0x1c00000

    and-int/2addr v11, v1

    or-int/2addr v0, v11

    const/high16 v11, 0xe000000

    and-int/2addr v11, v1

    or-int/2addr v0, v11

    const/high16 v11, 0x70000000

    and-int/2addr v1, v11

    or-int v14, v0, v1

    shr-int/lit8 v0, p11, 0x1b

    and-int/lit8 v15, v0, 0xe

    const/16 v16, 0x1800

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p10

    .line 192
    invoke-static/range {v0 .. v16}, Lcoil/compose/AsyncImageKt;->AsyncImage-QgsmV_s(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-void
.end method

.method public static final AsyncImage-Vb_qNX0(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/painter/Painter;",
            "Landroidx/compose/ui/graphics/painter/Painter;",
            "Landroidx/compose/ui/graphics/painter/Painter;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Loading;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Success;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State$Error;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/ui/layout/ContentScale;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "IZ",
            "Lcoil/compose/EqualityDelegate;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p16

    move/from16 v0, p19

    const v1, 0x64f5e82f

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v6, v5

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v7, v2

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v8, v2

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v9, v2

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 59
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    move-object v10, v1

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    .line 60
    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v1

    move-object v11, v1

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    move v12, v1

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move-object v13, v2

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    .line 63
    sget-object v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v1

    move v14, v1

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    move/from16 v16, v1

    goto :goto_c

    :cond_c
    move/from16 v16, p14

    :goto_c
    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 65
    invoke-static {}, Lcoil/compose/EqualityDelegateKt;->getDefaultModelEqualityDelegate()Lcoil/compose/EqualityDelegate;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_d

    :cond_d
    move-object/from16 v17, p15

    .line 69
    :goto_d
    invoke-static {}, Lcoil/compose/LocalImageLoaderKt;->getLocalImageLoader()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v15, v1}, Lcoil/compose/ImageLoaderProvidableCompositionLocal;->getCurrent(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;I)Lcoil/ImageLoader;

    move-result-object v2

    and-int/lit8 v0, p17, 0x70

    const v1, 0x248208

    or-int/2addr v0, v1

    shl-int/lit8 v1, p17, 0x3

    and-int/lit16 v15, v1, 0x1c00

    or-int/2addr v0, v15

    const/high16 v15, 0x1c00000

    and-int/2addr v15, v1

    or-int/2addr v0, v15

    const/high16 v15, 0xe000000

    and-int/2addr v15, v1

    or-int/2addr v0, v15

    const/high16 v15, 0x70000000

    and-int/2addr v1, v15

    or-int v18, v0, v1

    shr-int/lit8 v0, p17, 0x1b

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v1, p18, 0x3

    and-int/lit8 v15, v1, 0x70

    or-int/2addr v0, v15

    and-int/lit16 v15, v1, 0x380

    or-int/2addr v0, v15

    and-int/lit16 v15, v1, 0x1c00

    or-int/2addr v0, v15

    const v15, 0xe000

    and-int/2addr v15, v1

    or-int/2addr v0, v15

    const/high16 v15, 0x70000

    and-int/2addr v15, v1

    or-int/2addr v0, v15

    const/high16 v15, 0x380000

    and-int/2addr v1, v15

    or-int v19, v0, v1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, p16

    .line 66
    invoke-static/range {v0 .. v20}, Lcoil/compose/AsyncImageKt;->AsyncImage-J-FEaFM(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {p16 .. p16}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-void
.end method

.method public static final AsyncImage-gl8XCv8(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State;",
            "+",
            "Lcoil/compose/AsyncImagePainter$State;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/ui/layout/ContentScale;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "IZ",
            "Lcoil/compose/EqualityDelegate;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v13, p12

    move/from16 v0, p15

    const v1, 0x567d9ae5

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 153
    sget-object v1, Lcoil/compose/AsyncImagePainter;->Companion:Lcoil/compose/AsyncImagePainter$Companion;

    invoke-virtual {v1}, Lcoil/compose/AsyncImagePainter$Companion;->getDefaultTransform()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 155
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    move-object v6, v1

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 156
    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v1

    move-object v7, v1

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    move v8, v1

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v9, v2

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 159
    sget-object v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v1

    move v10, v1

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    move v11, v1

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_9

    .line 161
    invoke-static {}, Lcoil/compose/EqualityDelegateKt;->getDefaultModelEqualityDelegate()Lcoil/compose/EqualityDelegate;

    move-result-object v0

    move-object v12, v0

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    .line 165
    :goto_9
    invoke-static {}, Lcoil/compose/LocalImageLoaderKt;->getLocalImageLoader()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v13, v1}, Lcoil/compose/ImageLoaderProvidableCompositionLocal;->getCurrent(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;I)Lcoil/ImageLoader;

    move-result-object v2

    and-int/lit8 v0, p13, 0x70

    or-int/lit16 v0, v0, 0x208

    shl-int/lit8 v1, p13, 0x3

    and-int/lit16 v14, v1, 0x1c00

    or-int/2addr v0, v14

    const v14, 0xe000

    and-int/2addr v14, v1

    or-int/2addr v0, v14

    const/high16 v14, 0x70000

    and-int/2addr v14, v1

    or-int/2addr v0, v14

    const/high16 v14, 0x380000

    and-int/2addr v14, v1

    or-int/2addr v0, v14

    const/high16 v14, 0x1c00000

    and-int/2addr v14, v1

    or-int/2addr v0, v14

    const/high16 v14, 0xe000000

    and-int/2addr v14, v1

    or-int/2addr v0, v14

    const/high16 v14, 0x70000000

    and-int/2addr v1, v14

    or-int v14, v0, v1

    shr-int/lit8 v0, p13, 0x1b

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v1, p14, 0x3

    and-int/lit8 v15, v1, 0x70

    or-int/2addr v0, v15

    and-int/lit16 v1, v1, 0x380

    or-int v15, v0, v1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p12

    .line 162
    invoke-static/range {v0 .. v16}, Lcoil/compose/AsyncImageKt;->AsyncImage-QgsmV_s(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {p12 .. p12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-void
.end method

.method public static final synthetic AsyncImage-ylYTKUw(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;III)V
    .locals 21
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    move-object/from16 v14, p14

    move/from16 v0, p17

    const v1, 0x78daf84a

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 92
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v6, v5

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v7, v2

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v8, v2

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v9, v2

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 99
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    move-object v10, v1

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    .line 100
    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v1

    move-object v11, v1

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    move v12, v1

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move-object v13, v2

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_b

    .line 103
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v0

    move/from16 v17, v0

    goto :goto_b

    :cond_b
    move/from16 v17, p13

    .line 107
    :goto_b
    invoke-static {}, Lcoil/compose/LocalImageLoaderKt;->getLocalImageLoader()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v14, v1}, Lcoil/compose/ImageLoaderProvidableCompositionLocal;->getCurrent(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;I)Lcoil/ImageLoader;

    move-result-object v2

    and-int/lit8 v0, p15, 0x70

    const v1, 0x248208

    or-int/2addr v0, v1

    shl-int/lit8 v1, p15, 0x3

    and-int/lit16 v15, v1, 0x1c00

    or-int/2addr v0, v15

    const/high16 v15, 0x1c00000

    and-int/2addr v15, v1

    or-int/2addr v0, v15

    const/high16 v15, 0xe000000

    and-int/2addr v15, v1

    or-int/2addr v0, v15

    const/high16 v15, 0x70000000

    and-int/2addr v1, v15

    or-int v18, v0, v1

    shr-int/lit8 v0, p15, 0x1b

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v1, p16, 0x3

    and-int/lit8 v15, v1, 0x70

    or-int/2addr v0, v15

    and-int/lit16 v15, v1, 0x380

    or-int/2addr v0, v15

    and-int/lit16 v15, v1, 0x1c00

    or-int/2addr v0, v15

    const v15, 0xe000

    and-int/2addr v1, v15

    or-int v19, v0, v1

    const v20, 0x18000

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, v17

    move-object/from16 v17, p14

    .line 104
    invoke-static/range {v0 .. v20}, Lcoil/compose/AsyncImageKt;->AsyncImage-J-FEaFM(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {p14 .. p14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-void
.end method
