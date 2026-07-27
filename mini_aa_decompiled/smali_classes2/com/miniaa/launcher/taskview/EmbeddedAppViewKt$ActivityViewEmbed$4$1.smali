.class final Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EmbeddedAppView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->ActivityViewEmbed(Ljava/lang/String;ZLandroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miniaa.launcher.taskview.EmbeddedAppViewKt$ActivityViewEmbed$4$1"
    f = "EmbeddedAppView.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0xc4
    }
    m = "invokeSuspend"
    n = {
        "av",
        "clazz"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $avClass$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic $avInstance$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $errorMsg$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lastLaunched$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $packageName:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$eGTc-FXdiYT5z29ot9SeNZrsMBw(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->invokeSuspend$lambda$0(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$lastLaunched$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$avInstance$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$avClass$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$errorMsg$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 199
    invoke-static {p0, p1}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->access$ActivityViewEmbed$lambda$12(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 200
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;

    iget-object v1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$lastLaunched$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$avInstance$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$avClass$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$errorMsg$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 188
    iget v1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->label:I

    const-string v2, "EmbeddedAppView"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 189
    iget-object p1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$lastLaunched$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->access$ActivityViewEmbed$lambda$25(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 190
    iget-object p0, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$packageName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Skipping launch \u2014 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " already active"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 193
    :cond_2
    iget-object p1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$avInstance$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->access$ActivityViewEmbed$lambda$14(Landroidx/compose/runtime/MutableState;)Ljava/lang/Object;

    move-result-object v1

    .line 194
    iget-object p1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$avClass$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->access$ActivityViewEmbed$lambda$17(Landroidx/compose/runtime/MutableState;)Ljava/lang/Class;

    move-result-object p1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 196
    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->label:I

    const-wide/16 v5, 0x12c

    invoke-static {v5, v6, v4}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    .line 197
    :goto_0
    iget-object p1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Launching "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " in ActivityView"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$errorMsg$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v4, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-static {p1, v1, v0, v2, v4}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->access$launchInActivityView(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 201
    iget-object p1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$lastLaunched$delegate:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$ActivityViewEmbed$4$1;->$packageName:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->access$ActivityViewEmbed$lambda$26(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 203
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
