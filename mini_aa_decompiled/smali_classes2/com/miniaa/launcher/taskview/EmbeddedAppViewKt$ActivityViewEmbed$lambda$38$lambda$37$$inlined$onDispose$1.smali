.class public final Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$lambda$38$lambda$37$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->ActivityViewEmbed(Ljava/lang/String;ZLandroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 EmbeddedAppView.kt\ncom/miniaa/launcher/taskview/EmbeddedAppViewKt\n*L\n1#1,490:1\n236#2,11:491\n*E\n"
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
.field final synthetic $avClass$delegate$inlined:Landroidx/compose/runtime/MutableState;

.field final synthetic $avInstance$delegate$inlined:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$lambda$38$lambda$37$$inlined$onDispose$1;->$avInstance$delegate$inlined:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$lambda$38$lambda$37$$inlined$onDispose$1;->$avClass$delegate$inlined:Landroidx/compose/runtime/MutableState;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .line 66
    const-string v0, "EmbeddedAppView"

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$lambda$38$lambda$37$$inlined$onDispose$1;->$avInstance$delegate$inlined:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->access$ActivityViewEmbed$lambda$14(Landroidx/compose/runtime/MutableState;)Ljava/lang/Object;

    move-result-object v1

    .line 493
    iget-object p0, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$lambda$38$lambda$37$$inlined$onDispose$1;->$avClass$delegate$inlined:Landroidx/compose/runtime/MutableState;

    invoke-static {p0}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->access$ActivityViewEmbed$lambda$17(Landroidx/compose/runtime/MutableState;)Ljava/lang/Class;

    move-result-object p0

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 495
    const-string v2, "release"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string p0, "ActivityView released"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 499
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Release failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
