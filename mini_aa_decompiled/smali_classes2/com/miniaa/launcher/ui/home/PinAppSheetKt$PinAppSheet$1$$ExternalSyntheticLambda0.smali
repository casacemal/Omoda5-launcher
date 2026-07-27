.class public final synthetic Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/State;

.field public final synthetic f$1:Lcom/miniaa/launcher/ui/apps/AppsViewModel;

.field public final synthetic f$2:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Lcom/miniaa/launcher/ui/apps/AppsViewModel;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$$ExternalSyntheticLambda0;->f$1:Lcom/miniaa/launcher/ui/apps/AppsViewModel;

    iput-object p3, p0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/State;

    iget-object v1, p0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$$ExternalSyntheticLambda0;->f$1:Lcom/miniaa/launcher/ui/apps/AppsViewModel;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/State;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-static {v0, v1, p0, p1}, Lcom/miniaa/launcher/ui/home/PinAppSheetKt$PinAppSheet$1;->$r8$lambda$_ecSqpAzitnOxzCX2b8d7GaQ7tE(Landroidx/compose/runtime/State;Lcom/miniaa/launcher/ui/apps/AppsViewModel;Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
