.class public final Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$lambda$54$lambda$53$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->TaskViewContainer(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 EmbeddedAppView.kt\ncom/miniaa/launcher/taskview/EmbeddedAppViewKt\n*L\n1#1,490:1\n363#2,3:491\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/compose/runtime/DisposableEffectScope$onDispose$1",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "dispose",
        "",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $wrapper$delegate$inlined:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$lambda$54$lambda$53$$inlined$onDispose$1;->$wrapper$delegate$inlined:Landroidx/compose/runtime/MutableState;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 491
    sget-object v0, Lcom/miniaa/launcher/util/FileLogger;->INSTANCE:Lcom/miniaa/launcher/util/FileLogger;

    const-string v1, "Embed"

    const-string v2, "TaskViewContainer: disposing"

    invoke-virtual {v0, v1, v2}, Lcom/miniaa/launcher/util/FileLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object p0, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$lambda$54$lambda$53$$inlined$onDispose$1;->$wrapper$delegate$inlined:Landroidx/compose/runtime/MutableState;

    invoke-static {p0}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->access$TaskViewContainer$lambda$41(Landroidx/compose/runtime/MutableState;)Lcom/miniaa/launcher/taskview/TaskViewWrapper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miniaa/launcher/taskview/TaskViewWrapper;->release()V

    :cond_0
    return-void
.end method
