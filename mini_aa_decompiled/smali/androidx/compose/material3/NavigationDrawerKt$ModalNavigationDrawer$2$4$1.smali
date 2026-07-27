.class final Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NavigationDrawer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/NavigationDrawerKt;->ModalNavigationDrawer-FHprtrg(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DrawerState;ZJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/unit/Density;",
        "Landroidx/compose/ui/unit/IntOffset;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/unit/IntOffset;",
        "Landroidx/compose/ui/unit/Density;",
        "invoke-Bjo55l4",
        "(Landroidx/compose/ui/unit/Density;)J"
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
.field final synthetic $drawerState:Landroidx/compose/material3/DrawerState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/DrawerState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$4$1;->$drawerState:Landroidx/compose/material3/DrawerState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 359
    check-cast p1, Landroidx/compose/ui/unit/Density;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$4$1;->invoke-Bjo55l4(Landroidx/compose/ui/unit/Density;)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-Bjo55l4(Landroidx/compose/ui/unit/Density;)J
    .locals 3

    .line 360
    iget-object v0, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$4$1;->$drawerState:Landroidx/compose/material3/DrawerState;

    invoke-virtual {v0}, Landroidx/compose/material3/DrawerState;->getCurrentOffset()F

    move-result v0

    iget-object p0, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$4$1;->$drawerState:Landroidx/compose/material3/DrawerState;

    .line 363
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/DrawerState;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_0

    .line 366
    :cond_1
    sget-object p0, Landroidx/compose/material3/DrawerDefaults;->INSTANCE:Landroidx/compose/material3/DrawerDefaults;

    invoke-virtual {p0}, Landroidx/compose/material3/DrawerDefaults;->getMaximumDrawerWidth-D9Ej5fM()F

    move-result p0

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    neg-int p0, p0

    .line 368
    :goto_0
    invoke-static {p0, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p0

    return-wide p0
.end method
