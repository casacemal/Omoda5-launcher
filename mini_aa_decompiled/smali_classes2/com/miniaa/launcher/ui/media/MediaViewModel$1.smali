.class final Lcom/miniaa/launcher/ui/media/MediaViewModel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/media/MediaViewModel;-><init>(Landroid/app/Application;)V
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
    c = "com.miniaa.launcher.ui.media.MediaViewModel$1"
    f = "MediaViewModel.kt"
    i = {
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x34,
        0x3a,
        0x44,
        0x4f
    }
    m = "invokeSuspend"
    n = {
        "launched",
        "attempt",
        "launched",
        "attempt"
    }
    s = {
        "I$0",
        "I$1",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field label:I

.field final synthetic this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;


# direct methods
.method constructor <init>(Lcom/miniaa/launcher/ui/media/MediaViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miniaa/launcher/ui/media/MediaViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miniaa/launcher/ui/media/MediaViewModel$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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

    new-instance p1, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-direct {p1, p0, p2}, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;-><init>(Lcom/miniaa/launcher/ui/media/MediaViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 47
    iget v1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "MediaVM"

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v7, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget v1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->I$1:I

    iget v8, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget v1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->I$1:I

    iget v8, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    :cond_4
    iget-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-static {p1}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->access$getRepository$p(Lcom/miniaa/launcher/ui/media/MediaViewModel;)Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->tryConnect()V

    .line 51
    iget-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-virtual {p1}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->getNowPlaying()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miniaa/launcher/data/media/NowPlayingState;

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/media/NowPlayingState;->getHasPermission()Z

    move-result p1

    if-nez p1, :cond_5

    .line 52
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v7, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->label:I

    const-wide/16 v8, 0xbb8

    invoke-static {v8, v9, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_5
    move v1, v2

    move p1, v7

    :goto_0
    const/4 v8, 0x5

    if-ge p1, v8, :cond_b

    .line 58
    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput v1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->I$0:I

    iput p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->I$1:I

    iput v5, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->label:I

    const-wide/16 v9, 0x7d0

    invoke-static {v9, v10, v8}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_6

    return-object v0

    :cond_6
    move v8, v1

    move v1, p1

    .line 59
    :goto_1
    iget-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-static {p1}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->access$getRepository$p(Lcom/miniaa/launcher/ui/media/MediaViewModel;)Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->tryConnect()V

    .line 61
    iget-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-virtual {p1}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->getNowPlaying()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miniaa/launcher/data/media/NowPlayingState;

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/media/NowPlayingState;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 62
    iget-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-virtual {p1}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->getNowPlaying()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miniaa/launcher/data/media/NowPlayingState;

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/media/NowPlayingState;->getTitle()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Music already playing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 65
    :cond_7
    iget-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-virtual {p1}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->getNowPlaying()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miniaa/launcher/data/media/NowPlayingState;

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/media/NowPlayingState;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_8

    move p1, v7

    goto :goto_2

    :cond_8
    move p1, v2

    :goto_2
    if-eqz p1, :cond_a

    .line 66
    iget-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-virtual {p1}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->getNowPlaying()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miniaa/launcher/data/media/NowPlayingState;

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/media/NowPlayingState;->getTitle()Ljava/lang/String;

    move-result-object p1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Resuming paused: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v9, " (attempt "

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v9, ")"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-static {p1}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->access$getRepository$p(Lcom/miniaa/launcher/ui/media/MediaViewModel;)Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->play()V

    .line 68
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v8, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->I$0:I

    iput v1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->I$1:I

    iput v4, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->label:I

    const-wide/16 v9, 0x3e8

    invoke-static {v9, v10, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 69
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-virtual {p1}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->getNowPlaying()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miniaa/launcher/data/media/NowPlayingState;

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/media/NowPlayingState;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    .line 74
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v9, "No session yet, attempt "

    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v9, "/4"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, v1, 0x1

    move v1, v8

    goto/16 :goto_0

    :cond_b
    move v7, v1

    :goto_4
    if-nez v7, :cond_c

    .line 79
    iget-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;->label:I

    invoke-static {p1, v1}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->access$launchDefaultMusicApp(Lcom/miniaa/launcher/ui/media/MediaViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_c

    return-object v0

    .line 81
    :cond_c
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
