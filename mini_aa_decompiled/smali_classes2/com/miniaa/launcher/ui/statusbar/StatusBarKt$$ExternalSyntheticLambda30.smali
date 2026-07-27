.class public final synthetic Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$$ExternalSyntheticLambda30;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$$ExternalSyntheticLambda30;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$$ExternalSyntheticLambda30;->f$2:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$$ExternalSyntheticLambda30;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$$ExternalSyntheticLambda30;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$$ExternalSyntheticLambda30;->f$2:Landroidx/compose/runtime/State;

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-static {v0, v1, p0, p1}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->$r8$lambda$FLedt0oOVSqiPcsPmRdu3QeOwb8(Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
