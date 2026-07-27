.class public final Lcoil/compose/AsyncImagePainterKt;
.super Ljava/lang/Object;
.source "AsyncImagePainter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncImagePainter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncImagePainter.kt\ncoil/compose/AsyncImagePainterKt\n+ 2 AndroidTrace.android.kt\nandroidx/compose/ui/util/AndroidTrace_androidKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Size.kt\nandroidx/compose/ui/geometry/SizeKt\n*L\n1#1,475:1\n26#2,3:476\n30#2:486\n1116#3,6:479\n74#4:485\n1#5:487\n159#6:488\n*S KotlinDebug\n*F\n+ 1 AsyncImagePainter.kt\ncoil/compose/AsyncImagePainterKt\n*L\n201#1:476,3\n201#1:486\n205#1:479,6\n210#1:485\n463#1:488\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0081\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003*\u00015\u001a\u00ab\u0001\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\u0016\u0008\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\u0016\u0008\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\u0016\u0008\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017H\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a\u00a1\u0001\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\u0016\u0008\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\u0016\u0008\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\u0016\u0008\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u001am\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0014\u0008\u0002\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u000b2\u0016\u0008\u0002\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017H\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 \u001ac\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0014\u0008\u0002\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u000b2\u0016\u0008\u0002\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H\u0007\u00a2\u0006\u0004\u0008!\u0010\"\u001aQ\u0010\u0000\u001a\u00020\u00012\u0006\u0010#\u001a\u00020$2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u000b2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0003\u00a2\u0006\u0004\u0008%\u0010&\u001a\u0010\u0010\'\u001a\u00020\r2\u0006\u0010(\u001a\u00020)H\u0002\u001a\u001a\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0008\u0008\u0002\u0010.\u001a\u00020-H\u0002\u001a\u0015\u0010/\u001a\u0004\u0018\u000100*\u000201H\u0002\u00a2\u0006\u0004\u00082\u00103\"\u0010\u00104\u001a\u000205X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u00106\u00a8\u00067"
    }
    d2 = {
        "rememberAsyncImagePainter",
        "Lcoil/compose/AsyncImagePainter;",
        "model",
        "",
        "imageLoader",
        "Lcoil/ImageLoader;",
        "placeholder",
        "Landroidx/compose/ui/graphics/painter/Painter;",
        "error",
        "fallback",
        "onLoading",
        "Lkotlin/Function1;",
        "Lcoil/compose/AsyncImagePainter$State$Loading;",
        "",
        "onSuccess",
        "Lcoil/compose/AsyncImagePainter$State$Success;",
        "onError",
        "Lcoil/compose/AsyncImagePainter$State$Error;",
        "contentScale",
        "Landroidx/compose/ui/layout/ContentScale;",
        "filterQuality",
        "Landroidx/compose/ui/graphics/FilterQuality;",
        "modelEqualityDelegate",
        "Lcoil/compose/EqualityDelegate;",
        "rememberAsyncImagePainter-10Xjiaw",
        "(Ljava/lang/Object;Lcoil/ImageLoader;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)Lcoil/compose/AsyncImagePainter;",
        "rememberAsyncImagePainter-3HmZ8SU",
        "(Ljava/lang/Object;Lcoil/ImageLoader;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;II)Lcoil/compose/AsyncImagePainter;",
        "transform",
        "Lcoil/compose/AsyncImagePainter$State;",
        "onState",
        "rememberAsyncImagePainter-0YpotYA",
        "(Ljava/lang/Object;Lcoil/ImageLoader;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;II)Lcoil/compose/AsyncImagePainter;",
        "rememberAsyncImagePainter-5jETZwI",
        "(Ljava/lang/Object;Lcoil/ImageLoader;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;II)Lcoil/compose/AsyncImagePainter;",
        "state",
        "Lcoil/compose/AsyncImageState;",
        "rememberAsyncImagePainter-GSdzBsE",
        "(Lcoil/compose/AsyncImageState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;I)Lcoil/compose/AsyncImagePainter;",
        "validateRequest",
        "request",
        "Lcoil/request/ImageRequest;",
        "unsupportedData",
        "",
        "name",
        "",
        "description",
        "toSizeOrNull",
        "Lcoil/size/Size;",
        "Landroidx/compose/ui/geometry/Size;",
        "toSizeOrNull-uvyYCjk",
        "(J)Lcoil/size/Size;",
        "fakeTransitionTarget",
        "coil/compose/AsyncImagePainterKt$fakeTransitionTarget$1",
        "Lcoil/compose/AsyncImagePainterKt$fakeTransitionTarget$1;",
        "coil-compose-base_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final fakeTransitionTarget:Lcoil/compose/AsyncImagePainterKt$fakeTransitionTarget$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 471
    new-instance v0, Lcoil/compose/AsyncImagePainterKt$fakeTransitionTarget$1;

    invoke-direct {v0}, Lcoil/compose/AsyncImagePainterKt$fakeTransitionTarget$1;-><init>()V

    sput-object v0, Lcoil/compose/AsyncImagePainterKt;->fakeTransitionTarget:Lcoil/compose/AsyncImagePainterKt$fakeTransitionTarget$1;

    return-void
.end method

.method public static final synthetic access$getFakeTransitionTarget$p()Lcoil/compose/AsyncImagePainterKt$fakeTransitionTarget$1;
    .locals 1

    .line 1
    sget-object v0, Lcoil/compose/AsyncImagePainterKt;->fakeTransitionTarget:Lcoil/compose/AsyncImagePainterKt$fakeTransitionTarget$1;

    return-object v0
.end method

.method public static final synthetic access$toSizeOrNull-uvyYCjk(J)Lcoil/size/Size;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcoil/compose/AsyncImagePainterKt;->toSizeOrNull-uvyYCjk(J)Lcoil/size/Size;

    move-result-object p0

    return-object p0
.end method

.method public static final rememberAsyncImagePainter-0YpotYA(Ljava/lang/Object;Lcoil/ImageLoader;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;II)Lcoil/compose/AsyncImagePainter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcoil/ImageLoader;",
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
            "Landroidx/compose/ui/layout/ContentScale;",
            "I",
            "Lcoil/compose/EqualityDelegate;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Lcoil/compose/AsyncImagePainter;"
        }
    .end annotation

    const v0, 0x62169369

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcoil/compose/AsyncImagePainter;->Companion:Lcoil/compose/AsyncImagePainter$Companion;

    invoke-virtual {v0}, Lcoil/compose/AsyncImagePainter$Companion;->getDefaultTransform()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p9, 0x10

    if-eqz v3, :cond_2

    .line 165
    sget-object v3, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p9, 0x20

    if-eqz v4, :cond_3

    .line 166
    sget-object v4, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v4

    goto :goto_3

    :cond_3
    move v4, p5

    :goto_3
    and-int/lit8 v5, p9, 0x40

    if-eqz v5, :cond_4

    .line 167
    invoke-static {}, Lcoil/compose/EqualityDelegateKt;->getDefaultModelEqualityDelegate()Lcoil/compose/EqualityDelegate;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object v5, p6

    .line 169
    :goto_4
    new-instance v6, Lcoil/compose/AsyncImageState;

    move-object v7, p0

    move-object v8, p1

    invoke-direct {v6, p0, v5, p1}, Lcoil/compose/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil/compose/EqualityDelegate;Lcoil/ImageLoader;)V

    shr-int/lit8 v5, p8, 0x3

    const v7, 0xfff0

    and-int/2addr v5, v7

    move-object p0, v6

    move-object p1, v0

    move-object p2, v2

    move-object p3, v3

    move p4, v4

    move-object/from16 p5, p7

    move p6, v5

    .line 168
    invoke-static/range {p0 .. p6}, Lcoil/compose/AsyncImagePainterKt;->rememberAsyncImagePainter-GSdzBsE(Lcoil/compose/AsyncImageState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;I)Lcoil/compose/AsyncImagePainter;

    move-result-object v0

    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final rememberAsyncImagePainter-10Xjiaw(Ljava/lang/Object;Lcoil/ImageLoader;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)Lcoil/compose/AsyncImagePainter;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcoil/ImageLoader;",
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
            "Landroidx/compose/ui/layout/ContentScale;",
            "I",
            "Lcoil/compose/EqualityDelegate;",
            "Landroidx/compose/runtime/Composer;",
            "III)",
            "Lcoil/compose/AsyncImagePainter;"
        }
    .end annotation

    move/from16 v0, p14

    const v1, -0x4c46121

    move-object/from16 v2, p11

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_3

    move-object v6, v3

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_4

    move-object v7, v3

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 v3, p7

    :goto_5
    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_6

    .line 99
    sget-object v8, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_7

    .line 100
    sget-object v9, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v9

    goto :goto_7

    :cond_7
    move/from16 v9, p9

    :goto_7
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    .line 101
    invoke-static {}, Lcoil/compose/EqualityDelegateKt;->getDefaultModelEqualityDelegate()Lcoil/compose/EqualityDelegate;

    move-result-object v0

    goto :goto_8

    :cond_8
    move-object/from16 v0, p10

    .line 103
    :goto_8
    new-instance v10, Lcoil/compose/AsyncImageState;

    move-object v11, p0

    move-object v12, p1

    invoke-direct {v10, p0, v0, p1}, Lcoil/compose/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil/compose/EqualityDelegate;Lcoil/ImageLoader;)V

    .line 104
    invoke-static {v1, v4, v5}, Lcoil/compose/UtilsKt;->transformOf(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 105
    invoke-static {v6, v7, v3}, Lcoil/compose/UtilsKt;->onStateOf(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    shr-int/lit8 v3, p12, 0xf

    const v4, 0xfc00

    and-int/2addr v3, v4

    move-object p0, v10

    move-object p1, v0

    move-object p2, v1

    move-object/from16 p3, v8

    move/from16 p4, v9

    move-object/from16 p5, p11

    move/from16 p6, v3

    .line 102
    invoke-static/range {p0 .. p6}, Lcoil/compose/AsyncImagePainterKt;->rememberAsyncImagePainter-GSdzBsE(Lcoil/compose/AsyncImageState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;I)Lcoil/compose/AsyncImagePainter;

    move-result-object v0

    invoke-interface/range {p11 .. p11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final synthetic rememberAsyncImagePainter-3HmZ8SU(Ljava/lang/Object;Lcoil/ImageLoader;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;II)Lcoil/compose/AsyncImagePainter;
    .locals 13
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    move/from16 v0, p12

    const v1, 0x7f996210

    move-object/from16 v2, p10

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_3

    move-object v6, v3

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_4

    move-object v7, v3

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 v3, p7

    :goto_5
    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_6

    .line 122
    sget-object v8, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 123
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v0

    goto :goto_7

    :cond_7
    move/from16 v0, p9

    .line 125
    :goto_7
    new-instance v9, Lcoil/compose/AsyncImageState;

    invoke-static {}, Lcoil/compose/EqualityDelegateKt;->getDefaultModelEqualityDelegate()Lcoil/compose/EqualityDelegate;

    move-result-object v10

    move-object v11, p0

    move-object v12, p1

    invoke-direct {v9, p0, v10, p1}, Lcoil/compose/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil/compose/EqualityDelegate;Lcoil/ImageLoader;)V

    .line 126
    invoke-static {v1, v4, v5}, Lcoil/compose/UtilsKt;->transformOf(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 127
    invoke-static {v6, v7, v3}, Lcoil/compose/UtilsKt;->onStateOf(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v3

    shr-int/lit8 v4, p11, 0xf

    const v5, 0xfc00

    and-int/2addr v4, v5

    move-object p0, v9

    move-object p1, v1

    move-object p2, v3

    move-object/from16 p3, v8

    move/from16 p4, v0

    move-object/from16 p5, p10

    move/from16 p6, v4

    .line 124
    invoke-static/range {p0 .. p6}, Lcoil/compose/AsyncImagePainterKt;->rememberAsyncImagePainter-GSdzBsE(Lcoil/compose/AsyncImageState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;I)Lcoil/compose/AsyncImagePainter;

    move-result-object v0

    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final synthetic rememberAsyncImagePainter-5jETZwI(Ljava/lang/Object;Lcoil/ImageLoader;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;II)Lcoil/compose/AsyncImagePainter;
    .locals 7
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    const v0, -0x78701fba

    invoke-interface {p6, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    .line 182
    sget-object p2, Lcoil/compose/AsyncImagePainter;->Companion:Lcoil/compose/AsyncImagePainter$Companion;

    invoke-virtual {p2}, Lcoil/compose/AsyncImagePainter$Companion;->getDefaultTransform()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    :cond_0
    move-object v1, p2

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    :cond_1
    move-object v2, p3

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_2

    .line 184
    sget-object p2, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object p4

    :cond_2
    move-object v3, p4

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_3

    .line 185
    sget-object p2, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result p5

    :cond_3
    move v4, p5

    .line 187
    new-instance v0, Lcoil/compose/AsyncImageState;

    invoke-static {}, Lcoil/compose/EqualityDelegateKt;->getDefaultModelEqualityDelegate()Lcoil/compose/EqualityDelegate;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, Lcoil/compose/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil/compose/EqualityDelegate;Lcoil/ImageLoader;)V

    shr-int/lit8 p0, p7, 0x3

    const p1, 0xfff0

    and-int v6, p0, p1

    move-object v5, p6

    .line 186
    invoke-static/range {v0 .. v6}, Lcoil/compose/AsyncImagePainterKt;->rememberAsyncImagePainter-GSdzBsE(Lcoil/compose/AsyncImageState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;I)Lcoil/compose/AsyncImagePainter;

    move-result-object p0

    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method private static final rememberAsyncImagePainter-GSdzBsE(Lcoil/compose/AsyncImageState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;I)Lcoil/compose/AsyncImagePainter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/compose/AsyncImageState;",
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
            "Landroidx/compose/ui/layout/ContentScale;",
            "I",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lcoil/compose/AsyncImagePainter;"
        }
    .end annotation

    const p6, 0x38ccb86a

    invoke-interface {p5, p6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 201
    const-string p6, "rememberAsyncImagePainter"

    .line 476
    invoke-static {p6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lcoil/compose/AsyncImageState;->getModel()Ljava/lang/Object;

    move-result-object p6

    const/16 v0, 0x8

    invoke-static {p6, p5, v0}, Lcoil/compose/UtilsKt;->requestOf(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Lcoil/request/ImageRequest;

    move-result-object p6

    .line 203
    invoke-static {p6}, Lcoil/compose/AsyncImagePainterKt;->validateRequest(Lcoil/request/ImageRequest;)V

    const v0, 0x413fabbd

    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 479
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 480
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 205
    new-instance v0, Lcoil/compose/AsyncImagePainter;

    invoke-virtual {p0}, Lcoil/compose/AsyncImageState;->getImageLoader()Lcoil/ImageLoader;

    move-result-object v1

    invoke-direct {v0, p6, v1}, Lcoil/compose/AsyncImagePainter;-><init>(Lcoil/request/ImageRequest;Lcoil/ImageLoader;)V

    .line 482
    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 205
    :cond_0
    check-cast v0, Lcoil/compose/AsyncImagePainter;

    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 206
    invoke-virtual {v0, p1}, Lcoil/compose/AsyncImagePainter;->setTransform$coil_compose_base_release(Lkotlin/jvm/functions/Function1;)V

    .line 207
    invoke-virtual {v0, p2}, Lcoil/compose/AsyncImagePainter;->setOnState$coil_compose_base_release(Lkotlin/jvm/functions/Function1;)V

    .line 208
    invoke-virtual {v0, p3}, Lcoil/compose/AsyncImagePainter;->setContentScale$coil_compose_base_release(Landroidx/compose/ui/layout/ContentScale;)V

    .line 209
    invoke-virtual {v0, p4}, Lcoil/compose/AsyncImagePainter;->setFilterQuality-vDHp3xo$coil_compose_base_release(I)V

    .line 210
    invoke-static {}, Landroidx/compose/ui/platform/InspectionModeKt;->getLocalInspectionMode()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/CompositionLocal;

    const-string p2, "CC:CompositionLocal.kt#9igjgp"

    const p3, 0x789c5f52

    .line 485
    invoke-static {p5, p3, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p5, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 210
    invoke-virtual {v0, p1}, Lcoil/compose/AsyncImagePainter;->setPreview$coil_compose_base_release(Z)V

    .line 211
    invoke-virtual {p0}, Lcoil/compose/AsyncImageState;->getImageLoader()Lcoil/ImageLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcoil/compose/AsyncImagePainter;->setImageLoader$coil_compose_base_release(Lcoil/ImageLoader;)V

    .line 212
    invoke-virtual {v0, p6}, Lcoil/compose/AsyncImagePainter;->setRequest$coil_compose_base_release(Lcoil/request/ImageRequest;)V

    .line 213
    invoke-virtual {v0}, Lcoil/compose/AsyncImagePainter;->onRemembered()V

    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method private static final toSizeOrNull-uvyYCjk(J)Lcoil/size/Size;
    .locals 4

    .line 488
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 463
    sget-object p0, Lcoil/size/Size;->ORIGINAL:Lcoil/size/Size;

    goto :goto_2

    .line 464
    :cond_0
    invoke-static {p0, p1}, Lcoil/compose/UtilsKt;->isPositive-uvyYCjk(J)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcoil/size/Size;

    .line 465
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-static {v1}, Lcoil/size/-Dimensions;->Dimension(I)Lcoil/size/Dimension$Pixels;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcoil/size/Dimension$Undefined;->INSTANCE:Lcoil/size/Dimension$Undefined;

    :goto_0
    check-cast v1, Lcoil/size/Dimension;

    .line 466
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p0

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    invoke-static {p0}, Lcoil/size/-Dimensions;->Dimension(I)Lcoil/size/Dimension$Pixels;

    move-result-object p0

    goto :goto_1

    :cond_2
    sget-object p0, Lcoil/size/Dimension$Undefined;->INSTANCE:Lcoil/size/Dimension$Undefined;

    :goto_1
    check-cast p0, Lcoil/size/Dimension;

    .line 464
    invoke-direct {v0, v1, p0}, Lcoil/size/Size;-><init>(Lcoil/size/Dimension;Lcoil/size/Dimension;)V

    move-object p0, v0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private static final unsupportedData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ". "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic unsupportedData$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 459
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "If you wish to display this "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", use androidx.compose.foundation.Image."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 457
    :cond_0
    invoke-static {p0, p1}, Lcoil/compose/AsyncImagePainterKt;->unsupportedData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private static final validateRequest(Lcoil/request/ImageRequest;)V
    .locals 4

    .line 445
    invoke-virtual {p0}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 446
    instance-of v1, v0, Lcoil/request/ImageRequest$Builder;

    if-nez v1, :cond_4

    .line 450
    instance-of v1, v0, Landroidx/compose/ui/graphics/ImageBitmap;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 451
    instance-of v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    if-nez v1, :cond_2

    .line 452
    instance-of v0, v0, Landroidx/compose/ui/graphics/painter/Painter;

    if-nez v0, :cond_1

    .line 454
    invoke-virtual {p0}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "request.target must be null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 452
    :cond_1
    const-string p0, "Painter"

    invoke-static {p0, v3, v2, v3}, Lcoil/compose/AsyncImagePainterKt;->unsupportedData$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 451
    :cond_2
    const-string p0, "ImageVector"

    invoke-static {p0, v3, v2, v3}, Lcoil/compose/AsyncImagePainterKt;->unsupportedData$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 450
    :cond_3
    const-string p0, "ImageBitmap"

    invoke-static {p0, v3, v2, v3}, Lcoil/compose/AsyncImagePainterKt;->unsupportedData$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 447
    :cond_4
    const-string p0, "ImageRequest.Builder"

    .line 448
    const-string v0, "Did you forget to call ImageRequest.Builder.build()?"

    .line 446
    invoke-static {p0, v0}, Lcoil/compose/AsyncImagePainterKt;->unsupportedData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method
