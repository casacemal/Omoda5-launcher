.class public final Lcoil/compose/CrossfadePainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "CrossfadePainter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrossfadePainter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrossfadePainter.kt\ncoil/compose/CrossfadePainter\n+ 2 SnapshotIntState.kt\nandroidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt\n+ 3 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 5 Size.kt\nandroidx/compose/ui/geometry/SizeKt\n+ 6 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,129:1\n75#2:130\n108#2,2:131\n76#3:133\n109#3,2:134\n81#4:136\n107#4,2:137\n152#5:139\n152#5:140\n159#5:141\n159#5:147\n159#5:148\n105#6:142\n67#6,4:143\n*S KotlinDebug\n*F\n+ 1 CrossfadePainter.kt\ncoil/compose/CrossfadePainter\n*L\n37#1:130\n37#1:131,2\n41#1:133\n41#1:134,2\n42#1:136\n42#1:137,2\n88#1:139\n89#1:140\n110#1:141\n124#1:147\n125#1:148\n113#1:142\n113#1:143,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0001\u0018\u00002\u00020\u0001B;\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000c\u0010,\u001a\u00020-*\u00020.H\u0014J\u0010\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u00020\u0018H\u0014J\u0012\u00101\u001a\u00020\t2\u0008\u0010!\u001a\u0004\u0018\u00010 H\u0014J\u000f\u00102\u001a\u00020)H\u0002\u00a2\u0006\u0004\u00083\u0010+J\u001e\u00104\u001a\u00020-*\u00020.2\u0008\u00105\u001a\u0004\u0018\u00010\u00012\u0006\u00100\u001a\u00020\u0018H\u0002J\u001f\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020)2\u0006\u00108\u001a\u00020)H\u0002\u00a2\u0006\u0004\u00089\u0010:R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00078B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010\u0019\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u00188B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR/\u0010!\u001a\u0004\u0018\u00010 2\u0008\u0010\r\u001a\u0004\u0018\u00010 8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u0014\u0010(\u001a\u00020)8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+\u00a8\u0006;"
    }
    d2 = {
        "Lcoil/compose/CrossfadePainter;",
        "Landroidx/compose/ui/graphics/painter/Painter;",
        "start",
        "end",
        "contentScale",
        "Landroidx/compose/ui/layout/ContentScale;",
        "durationMillis",
        "",
        "fadeStart",
        "",
        "preferExactIntrinsicSize",
        "<init>",
        "(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/layout/ContentScale;IZZ)V",
        "<set-?>",
        "invalidateTick",
        "getInvalidateTick",
        "()I",
        "setInvalidateTick",
        "(I)V",
        "invalidateTick$delegate",
        "Landroidx/compose/runtime/MutableIntState;",
        "startTimeMillis",
        "",
        "isDone",
        "",
        "maxAlpha",
        "getMaxAlpha",
        "()F",
        "setMaxAlpha",
        "(F)V",
        "maxAlpha$delegate",
        "Landroidx/compose/runtime/MutableFloatState;",
        "Landroidx/compose/ui/graphics/ColorFilter;",
        "colorFilter",
        "getColorFilter",
        "()Landroidx/compose/ui/graphics/ColorFilter;",
        "setColorFilter",
        "(Landroidx/compose/ui/graphics/ColorFilter;)V",
        "colorFilter$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "intrinsicSize",
        "Landroidx/compose/ui/geometry/Size;",
        "getIntrinsicSize-NH-jbRc",
        "()J",
        "onDraw",
        "",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "applyAlpha",
        "alpha",
        "applyColorFilter",
        "computeIntrinsicSize",
        "computeIntrinsicSize-NH-jbRc",
        "drawPainter",
        "painter",
        "computeDrawSize",
        "srcSize",
        "dstSize",
        "computeDrawSize-x8L_9b0",
        "(JJ)J",
        "coil-compose-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final colorFilter$delegate:Landroidx/compose/runtime/MutableState;

.field private final contentScale:Landroidx/compose/ui/layout/ContentScale;

.field private final durationMillis:I

.field private final end:Landroidx/compose/ui/graphics/painter/Painter;

.field private final fadeStart:Z

.field private final invalidateTick$delegate:Landroidx/compose/runtime/MutableIntState;

.field private isDone:Z

.field private final maxAlpha$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final preferExactIntrinsicSize:Z

.field private start:Landroidx/compose/ui/graphics/painter/Painter;

.field private startTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/layout/ContentScale;IZZ)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    .line 29
    iput-object p1, p0, Lcoil/compose/CrossfadePainter;->start:Landroidx/compose/ui/graphics/painter/Painter;

    .line 30
    iput-object p2, p0, Lcoil/compose/CrossfadePainter;->end:Landroidx/compose/ui/graphics/painter/Painter;

    .line 31
    iput-object p3, p0, Lcoil/compose/CrossfadePainter;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 32
    iput p4, p0, Lcoil/compose/CrossfadePainter;->durationMillis:I

    .line 33
    iput-boolean p5, p0, Lcoil/compose/CrossfadePainter;->fadeStart:Z

    .line 34
    iput-boolean p6, p0, Lcoil/compose/CrossfadePainter;->preferExactIntrinsicSize:Z

    const/4 p1, 0x0

    .line 37
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p1

    iput-object p1, p0, Lcoil/compose/CrossfadePainter;->invalidateTick$delegate:Landroidx/compose/runtime/MutableIntState;

    const-wide/16 p1, -0x1

    .line 38
    iput-wide p1, p0, Lcoil/compose/CrossfadePainter;->startTimeMillis:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 41
    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Lcoil/compose/CrossfadePainter;->maxAlpha$delegate:Landroidx/compose/runtime/MutableFloatState;

    const/4 p1, 0x0

    const/4 p2, 0x2

    .line 42
    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Lcoil/compose/CrossfadePainter;->colorFilter$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method private final computeDrawSize-x8L_9b0(JJ)J
    .locals 2

    .line 147
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-wide p3

    .line 148
    :cond_1
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 125
    :cond_2
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    return-wide p3

    .line 126
    :cond_3
    iget-object p0, p0, Lcoil/compose/CrossfadePainter;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/ContentScale;->computeScaleFactor-H7hwNQA(JJ)J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/layout/ScaleFactorKt;->times-UQTWf7w(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private final computeIntrinsicSize-NH-jbRc()J
    .locals 9

    .line 85
    iget-object v0, p0, Lcoil/compose/CrossfadePainter;->start:Landroidx/compose/ui/graphics/painter/Painter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide v0

    .line 86
    :goto_0
    iget-object v2, p0, Lcoil/compose/CrossfadePainter;->end:Landroidx/compose/ui/graphics/painter/Painter;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    sget-object v2, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide v2

    .line 139
    :goto_1
    sget-object v4, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v4

    cmp-long v4, v0, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v6

    .line 140
    :goto_2
    sget-object v7, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v7

    cmp-long v7, v2, v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move v5, v6

    :goto_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 92
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p0

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v4

    invoke-static {p0, v4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 93
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v0

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 91
    invoke-static {p0, v0}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v0

    return-wide v0

    .line 96
    :cond_4
    iget-boolean p0, p0, Lcoil/compose/CrossfadePainter;->preferExactIntrinsicSize:Z

    if-eqz p0, :cond_6

    if-eqz v4, :cond_5

    return-wide v0

    :cond_5
    if-eqz v5, :cond_6

    return-wide v2

    .line 100
    :cond_6
    sget-object p0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    return-wide v0
.end method

.method private final drawPainter(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/painter/Painter;F)V
    .locals 10

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    .line 108
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0, v1}, Lcoil/compose/CrossfadePainter;->computeDrawSize-x8L_9b0(JJ)J

    move-result-wide v6

    .line 141
    sget-object v2, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    :goto_0
    invoke-direct {p0}, Lcoil/compose/CrossfadePainter;->getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v9

    move-object v4, p2

    move-object v5, p1

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Landroidx/compose/ui/graphics/painter/Painter;->draw-x_KDEd0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V

    goto :goto_1

    .line 114
    :cond_2
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 115
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v0

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    .line 143
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v1

    invoke-interface {v1, v2, v0, v2, v0}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->inset(FFFF)V

    .line 117
    invoke-direct {p0}, Lcoil/compose/CrossfadePainter;->getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v9

    move-object v4, p2

    move-object v5, p1

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Landroidx/compose/ui/graphics/painter/Painter;->draw-x_KDEd0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 145
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p0

    neg-float p1, v2

    neg-float p2, v0

    invoke-interface {p0, p1, p2, p1, p2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->inset(FFFF)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcoil/compose/CrossfadePainter;->colorFilter$delegate:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/State;

    .line 136
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/ColorFilter;

    return-object p0
.end method

.method private final getInvalidateTick()I
    .locals 0

    .line 37
    iget-object p0, p0, Lcoil/compose/CrossfadePainter;->invalidateTick$delegate:Landroidx/compose/runtime/MutableIntState;

    check-cast p0, Landroidx/compose/runtime/IntState;

    .line 130
    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method private final getMaxAlpha()F
    .locals 0

    .line 41
    iget-object p0, p0, Lcoil/compose/CrossfadePainter;->maxAlpha$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast p0, Landroidx/compose/runtime/FloatState;

    .line 133
    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method private final setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcoil/compose/CrossfadePainter;->colorFilter$delegate:Landroidx/compose/runtime/MutableState;

    .line 137
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setInvalidateTick(I)V
    .locals 0

    .line 37
    iget-object p0, p0, Lcoil/compose/CrossfadePainter;->invalidateTick$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 131
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method private final setMaxAlpha(F)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcoil/compose/CrossfadePainter;->maxAlpha$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 134
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method


# virtual methods
.method protected applyAlpha(F)Z
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcoil/compose/CrossfadePainter;->setMaxAlpha(F)V

    const/4 p0, 0x1

    return p0
.end method

.method protected applyColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcoil/compose/CrossfadePainter;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getIntrinsicSize-NH-jbRc()J
    .locals 2

    .line 44
    invoke-direct {p0}, Lcoil/compose/CrossfadePainter;->computeIntrinsicSize-NH-jbRc()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 6

    .line 47
    iget-boolean v0, p0, Lcoil/compose/CrossfadePainter;->isDone:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcoil/compose/CrossfadePainter;->end:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-direct {p0}, Lcoil/compose/CrossfadePainter;->getMaxAlpha()F

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcoil/compose/CrossfadePainter;->drawPainter(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/painter/Painter;F)V

    return-void

    .line 53
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 54
    iget-wide v2, p0, Lcoil/compose/CrossfadePainter;->startTimeMillis:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 55
    iput-wide v0, p0, Lcoil/compose/CrossfadePainter;->startTimeMillis:J

    .line 58
    :cond_1
    iget-wide v2, p0, Lcoil/compose/CrossfadePainter;->startTimeMillis:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcoil/compose/CrossfadePainter;->durationMillis:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 59
    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    invoke-direct {p0}, Lcoil/compose/CrossfadePainter;->getMaxAlpha()F

    move-result v3

    mul-float/2addr v1, v3

    .line 60
    iget-boolean v3, p0, Lcoil/compose/CrossfadePainter;->fadeStart:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcoil/compose/CrossfadePainter;->getMaxAlpha()F

    move-result v3

    sub-float/2addr v3, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcoil/compose/CrossfadePainter;->getMaxAlpha()F

    move-result v3

    :goto_0
    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-ltz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 61
    :goto_1
    iput-boolean v0, p0, Lcoil/compose/CrossfadePainter;->isDone:Z

    .line 63
    iget-object v0, p0, Lcoil/compose/CrossfadePainter;->start:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-direct {p0, p1, v0, v3}, Lcoil/compose/CrossfadePainter;->drawPainter(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/painter/Painter;F)V

    .line 64
    iget-object v0, p0, Lcoil/compose/CrossfadePainter;->end:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-direct {p0, p1, v0, v1}, Lcoil/compose/CrossfadePainter;->drawPainter(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/painter/Painter;F)V

    .line 66
    iget-boolean p1, p0, Lcoil/compose/CrossfadePainter;->isDone:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcoil/compose/CrossfadePainter;->start:Landroidx/compose/ui/graphics/painter/Painter;

    goto :goto_2

    .line 70
    :cond_4
    invoke-direct {p0}, Lcoil/compose/CrossfadePainter;->getInvalidateTick()I

    move-result p1

    add-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcoil/compose/CrossfadePainter;->setInvalidateTick(I)V

    :goto_2
    return-void
.end method
