.class final Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OutlinedTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/OutlinedTextFieldKt;->outlineCutout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutlinedTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutlinedTextField.kt\nandroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1\n+ 2 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,1155:1\n232#2:1156\n272#2,14:1157\n*S KotlinDebug\n*F\n+ 1 OutlinedTextField.kt\nandroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1\n*L\n1138#1:1156\n1138#1:1157,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $labelSize:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $paddingValues:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/PaddingValues;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;->$labelSize:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1118
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;->invoke(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 13

    .line 1119
    iget-object v0, p0, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;->$labelSize:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Size;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide v0

    .line 1120
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    .line 1122
    invoke-static {}, Landroidx/compose/material3/OutlinedTextFieldKt;->access$getOutlinedTextFieldInnerPadding$p()F

    move-result v4

    invoke-interface {p1, v4}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toPx-0680j_4(F)F

    move-result v4

    .line 1123
    iget-object p0, p0, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    invoke-interface {p0, v5}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result p0

    invoke-interface {p1, p0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toPx-0680j_4(F)F

    move-result p0

    sub-float/2addr p0, v4

    add-float/2addr v2, p0

    const/4 v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 1126
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    sget-object v6, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Landroidx/compose/ui/unit/LayoutDirection;->ordinal()I

    move-result v4

    aget v4, v6, v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 1127
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v4

    sub-float/2addr v4, v2

    goto :goto_0

    .line 1128
    :cond_0
    invoke-static {p0, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v4

    :goto_0
    move v8, v4

    .line 1131
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    sget-object v7, Landroidx/compose/material3/OutlinedTextFieldKt$outlineCutout$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Landroidx/compose/ui/unit/LayoutDirection;->ordinal()I

    move-result v4

    aget v4, v7, v4

    if-ne v4, v6, :cond_1

    .line 1132
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    invoke-static {p0, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    sub-float/2addr v2, p0

    :cond_1
    move v10, v2

    .line 1135
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p0

    .line 1138
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    neg-float v1, p0

    div-float v9, v1, v5

    div-float v11, p0, v5

    sget-object p0, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ClipOp$Companion;->getDifference-rtfAjoo()I

    move-result v12

    .line 1157
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p0

    .line 1161
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v0

    .line 1162
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 1164
    :try_start_0
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v7

    .line 1156
    invoke-interface/range {v7 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->clipRect-N_I0leg(FFFFI)V

    .line 1139
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 1168
    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1167
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 1168
    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    throw p1

    .line 1142
    :cond_2
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    :goto_1
    return-void
.end method
