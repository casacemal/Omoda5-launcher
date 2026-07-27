.class public final synthetic Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$3:Landroidx/compose/runtime/State;

.field public final synthetic f$4:Landroidx/compose/runtime/State;

.field public final synthetic f$5:Landroid/content/Context;

.field public final synthetic f$6:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroid/content/Context;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda12;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda12;->f$1:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda12;->f$2:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda12;->f$3:Landroidx/compose/runtime/State;

    iput-object p5, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda12;->f$4:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda12;->f$5:Landroid/content/Context;

    iput-object p7, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda12;->f$6:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 9

    .line 0
    iget-object v0, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda12;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda12;->f$1:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda12;->f$2:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda12;->f$3:Landroidx/compose/runtime/State;

    iget-object v4, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda12;->f$4:Landroidx/compose/runtime/State;

    iget-object v5, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda12;->f$5:Landroid/content/Context;

    iget-object v6, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$$ExternalSyntheticLambda12;->f$6:Landroidx/compose/runtime/MutableState;

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->$r8$lambda$YDO569DBC3G8VauMocrs6c6w3qM(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
