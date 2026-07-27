.class final Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$colorTransitionFraction$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AppBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/AppBarKt;->SingleRowTopAppBar-cJHQLPU(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Float;"
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
.field final synthetic $scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;


# direct methods
.method constructor <init>(Landroidx/compose/material3/TopAppBarScrollBehavior;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$colorTransitionFraction$2$1;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 2

    .line 1883
    iget-object p0, p0, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$colorTransitionFraction$2$1;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getOverlappedFraction()F

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const v1, 0x3c23d70a    # 0.01f

    cmpl-float p0, p0, v1

    if-lez p0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1884
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1882
    invoke-virtual {p0}, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$colorTransitionFraction$2$1;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
