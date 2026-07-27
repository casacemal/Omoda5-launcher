.class public final synthetic Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$MarqueeText$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableFloatState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$MarqueeText$2$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/MutableFloatState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$MarqueeText$2$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/MutableFloatState;

    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {p0, p1}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$MarqueeText$2;->$r8$lambda$JMvNVwQMRdrgJdFjIqHR4v5NanE(Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/ui/text/TextLayoutResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
