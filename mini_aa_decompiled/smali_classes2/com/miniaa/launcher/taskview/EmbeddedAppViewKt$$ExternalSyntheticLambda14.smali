.class public final synthetic Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/LifecycleOwner;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$3:Landroidx/compose/runtime/State;

.field public final synthetic f$4:Landroidx/compose/runtime/State;

.field public final synthetic f$5:Landroid/content/Context;

.field public final synthetic f$6:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroid/content/Context;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda14;->f$0:Landroidx/lifecycle/LifecycleOwner;

    iput-object p2, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda14;->f$1:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda14;->f$2:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda14;->f$3:Landroidx/compose/runtime/State;

    iput-object p5, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda14;->f$4:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda14;->f$5:Landroid/content/Context;

    iput-object p7, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda14;->f$6:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda14;->f$0:Landroidx/lifecycle/LifecycleOwner;

    iget-object v1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda14;->f$1:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda14;->f$2:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda14;->f$3:Landroidx/compose/runtime/State;

    iget-object v4, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda14;->f$4:Landroidx/compose/runtime/State;

    iget-object v5, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda14;->f$5:Landroid/content/Context;

    iget-object v6, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda14;->f$6:Landroidx/compose/runtime/MutableState;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static/range {v0 .. v7}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->$r8$lambda$zQs54Bv9J5Y-eywkDo9mcXC6xU8(Landroidx/lifecycle/LifecycleOwner;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
