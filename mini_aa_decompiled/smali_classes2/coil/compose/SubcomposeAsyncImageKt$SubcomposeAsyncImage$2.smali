.class final Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;
.super Ljava/lang/Object;
.source "SubcomposeAsyncImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/SubcomposeAsyncImageKt;->SubcomposeAsyncImage-gl8XCv8(Lcoil/compose/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
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
.field final synthetic $alignment:Landroidx/compose/ui/Alignment;

.field final synthetic $alpha:F

.field final synthetic $clipToBounds:Z

.field final synthetic $colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentDescription:Ljava/lang/String;

.field final synthetic $contentScale:Landroidx/compose/ui/layout/ContentScale;

.field final synthetic $painter:Lcoil/compose/AsyncImagePainter;

.field final synthetic $sizeResolver:Lcoil/size/SizeResolver;


# direct methods
.method constructor <init>(Lcoil/size/SizeResolver;Lkotlin/jvm/functions/Function3;Lcoil/compose/AsyncImagePainter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/size/SizeResolver;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcoil/compose/SubcomposeAsyncImageScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lcoil/compose/AsyncImagePainter;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/ui/layout/ContentScale;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$sizeResolver:Lcoil/size/SizeResolver;

    iput-object p2, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$content:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$painter:Lcoil/compose/AsyncImagePainter;

    iput-object p4, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$contentDescription:Ljava/lang/String;

    iput-object p5, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$alignment:Landroidx/compose/ui/Alignment;

    iput-object p6, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$contentScale:Landroidx/compose/ui/layout/ContentScale;

    iput p7, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$alpha:F

    iput-object p8, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    iput-boolean p9, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$clipToBounds:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 271
    check-cast p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    and-int/lit8 v0, p3, 0xe

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr p3, v0

    :cond_1
    and-int/lit8 p3, p3, 0x5b

    const/16 v0, 0x12

    if-ne p3, v0, :cond_3

    .line 275
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    .line 286
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    .line 275
    :cond_3
    :goto_1
    iget-object p3, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$sizeResolver:Lcoil/size/SizeResolver;

    check-cast p3, Lcoil/compose/ConstraintsSizeResolver;

    invoke-interface {p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcoil/compose/ConstraintsSizeResolver;->setConstraints-BRTryo0(J)V

    .line 286
    iget-object p3, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$content:Lkotlin/jvm/functions/Function3;

    .line 277
    new-instance v9, Lcoil/compose/RealSubcomposeAsyncImageScope;

    .line 278
    move-object v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .line 279
    iget-object v2, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$painter:Lcoil/compose/AsyncImagePainter;

    .line 280
    iget-object v3, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$contentDescription:Ljava/lang/String;

    .line 281
    iget-object v4, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$alignment:Landroidx/compose/ui/Alignment;

    .line 282
    iget-object v5, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 283
    iget v6, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$alpha:F

    .line 284
    iget-object v7, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 285
    iget-boolean v8, p0, Lcoil/compose/SubcomposeAsyncImageKt$SubcomposeAsyncImage$2;->$clipToBounds:Z

    move-object v0, v9

    .line 277
    invoke-direct/range {v0 .. v8}, Lcoil/compose/RealSubcomposeAsyncImageScope;-><init>(Landroidx/compose/foundation/layout/BoxScope;Lcoil/compose/AsyncImagePainter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Z)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 286
    invoke-interface {p3, v9, p2, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method
