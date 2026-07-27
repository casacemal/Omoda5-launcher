.class final Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "MediaViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/media/MediaViewModel;->launchDefaultMusicApp(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miniaa.launcher.ui.media.MediaViewModel"
    f = "MediaViewModel.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3
    }
    l = {
        0x6a,
        0x76,
        0x84,
        0x88
    }
    m = "launchDefaultMusicApp"
    n = {
        "this",
        "app",
        "this",
        "app",
        "packageName",
        "this",
        "app",
        "packageName",
        "i",
        "this",
        "app",
        "packageName"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

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
            "Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->label:I

    iget-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    check-cast p0, Lkotlin/coroutines/Continuation;

    invoke-static {p1, p0}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->access$launchDefaultMusicApp(Lcom/miniaa/launcher/ui/media/MediaViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
