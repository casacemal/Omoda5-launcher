.class final Lcom/miniaa/launcher/ui/setup/ComposableSingletons$SetupWizardKt$lambda-1$1;
.super Ljava/lang/Object;
.source "SetupWizard.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniaa/launcher/ui/setup/ComposableSingletons$SetupWizardKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/pager/PagerScope;",
        "Ljava/lang/Integer;",
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
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miniaa/launcher/ui/setup/ComposableSingletons$SetupWizardKt$lambda-1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miniaa/launcher/ui/setup/ComposableSingletons$SetupWizardKt$lambda-1$1;

    invoke-direct {v0}, Lcom/miniaa/launcher/ui/setup/ComposableSingletons$SetupWizardKt$lambda-1$1;-><init>()V

    sput-object v0, Lcom/miniaa/launcher/ui/setup/ComposableSingletons$SetupWizardKt$lambda-1$1;->INSTANCE:Lcom/miniaa/launcher/ui/setup/ComposableSingletons$SetupWizardKt$lambda-1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p1, Landroidx/compose/foundation/pager/PagerScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miniaa/launcher/ui/setup/ComposableSingletons$SetupWizardKt$lambda-1$1;->invoke(Landroidx/compose/foundation/pager/PagerScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/pager/PagerScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 1

    const-string p0, "$this$HorizontalPager"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string p1, "com.miniaa.launcher.ui.setup.ComposableSingletons$SetupWizardKt.lambda-1.<anonymous> (SetupWizard.kt:71)"

    const v0, -0x55399f3d

    .line 72
    invoke-static {v0, p4, p0, p1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const p0, -0x4e7ddf6d

    .line 77
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_0

    :cond_1
    const p1, -0x65a0fa46

    .line 76
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {p3, p0}, Lcom/miniaa/launcher/ui/setup/SetupWizardKt;->access$ReadyPage(Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_0

    :cond_2
    const p1, -0x65a0ff43

    .line 75
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {p3, p0}, Lcom/miniaa/launcher/ui/setup/SetupWizardKt;->access$LocationPage(Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_0

    :cond_3
    const p1, -0x65a10579

    .line 74
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {p3, p0}, Lcom/miniaa/launcher/ui/setup/SetupWizardKt;->access$NotificationAccessPage(Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_0

    :cond_4
    const p1, -0x65a10a64

    .line 73
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {p3, p0}, Lcom/miniaa/launcher/ui/setup/SetupWizardKt;->access$WelcomePage(Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 77
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    return-void
.end method
