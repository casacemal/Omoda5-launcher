.class final Landroidx/compose/material3/carousel/StrategyKt$moveKeylineAndCreateShiftedKeylineList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Strategy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/carousel/StrategyKt;->moveKeylineAndCreateShiftedKeylineList(Landroidx/compose/material3/carousel/KeylineList;IIFF)Landroidx/compose/material3/carousel/KeylineList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/material3/carousel/KeylineListScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strategy.kt\nandroidx/compose/material3/carousel/StrategyKt$moveKeylineAndCreateShiftedKeylineList$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,626:1\n33#2,6:627\n*S KotlinDebug\n*F\n+ 1 Strategy.kt\nandroidx/compose/material3/carousel/StrategyKt$moveKeylineAndCreateShiftedKeylineList$1\n*L\n522#1:627,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/material3/carousel/KeylineListScope;",
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
.field final synthetic $dstIndex:I

.field final synthetic $from:Landroidx/compose/material3/carousel/KeylineList;

.field final synthetic $srcIndex:I


# direct methods
.method constructor <init>(Landroidx/compose/material3/carousel/KeylineList;II)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/carousel/StrategyKt$moveKeylineAndCreateShiftedKeylineList$1;->$from:Landroidx/compose/material3/carousel/KeylineList;

    iput p2, p0, Landroidx/compose/material3/carousel/StrategyKt$moveKeylineAndCreateShiftedKeylineList$1;->$srcIndex:I

    iput p3, p0, Landroidx/compose/material3/carousel/StrategyKt$moveKeylineAndCreateShiftedKeylineList$1;->$dstIndex:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 521
    check-cast p1, Landroidx/compose/material3/carousel/KeylineListScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/carousel/StrategyKt$moveKeylineAndCreateShiftedKeylineList$1;->invoke(Landroidx/compose/material3/carousel/KeylineListScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/material3/carousel/KeylineListScope;)V
    .locals 4

    .line 522
    iget-object v0, p0, Landroidx/compose/material3/carousel/StrategyKt$moveKeylineAndCreateShiftedKeylineList$1;->$from:Landroidx/compose/material3/carousel/KeylineList;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material3/carousel/StrategyKt$moveKeylineAndCreateShiftedKeylineList$1;->$srcIndex:I

    iget p0, p0, Landroidx/compose/material3/carousel/StrategyKt$moveKeylineAndCreateShiftedKeylineList$1;->$dstIndex:I

    invoke-static {v0, v1, p0}, Landroidx/compose/material3/carousel/StrategyKt;->access$move(Ljava/util/List;II)Ljava/util/List;

    move-result-object p0

    .line 628
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 629
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 630
    check-cast v2, Landroidx/compose/material3/carousel/Keyline;

    .line 522
    invoke-virtual {v2}, Landroidx/compose/material3/carousel/Keyline;->getSize()F

    move-result v3

    invoke-virtual {v2}, Landroidx/compose/material3/carousel/Keyline;->isAnchor()Z

    move-result v2

    invoke-interface {p1, v3, v2}, Landroidx/compose/material3/carousel/KeylineListScope;->add(FZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
