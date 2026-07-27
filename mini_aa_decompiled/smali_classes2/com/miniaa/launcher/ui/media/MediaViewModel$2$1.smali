.class final Lcom/miniaa/launcher/ui/media/MediaViewModel$2$1;
.super Ljava/lang/Object;
.source "MediaViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/media/MediaViewModel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
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


# instance fields
.field final synthetic this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;


# direct methods
.method constructor <init>(Lcom/miniaa/launcher/ui/media/MediaViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$2$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/miniaa/launcher/data/media/NowPlayingState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miniaa/launcher/data/media/NowPlayingState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/media/NowPlayingState;->getAlbumArtBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 88
    invoke-static {p1}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object p1

    const-string p2, "generate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object p0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$2$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-static {p0}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->access$get_albumColors$p(Lcom/miniaa/launcher/ui/media/MediaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    new-instance p2, Lcom/miniaa/launcher/ui/media/AlbumColors;

    const v0, -0xdbdbdc

    .line 90
    invoke-virtual {p1, v0}, Landroidx/palette/graphics/Palette;->getDominantColor(I)I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v1

    const/16 v7, 0xe

    const/4 v8, 0x0

    const v3, 0x3eb33333    # 0.35f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 91
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v1

    const v0, -0xe5e5e6

    .line 92
    invoke-virtual {p1, v0}, Landroidx/palette/graphics/Palette;->getDarkMutedColor(I)I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v3

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 93
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v3

    const v0, -0xd5d5d6

    .line 94
    invoke-virtual {p1, v0}, Landroidx/palette/graphics/Palette;->getMutedColor(I)I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v5

    const/16 v11, 0xe

    const/4 v12, 0x0

    const v7, 0x3e99999a    # 0.3f

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 95
    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v0, p2

    .line 89
    invoke-direct/range {v0 .. v7}, Lcom/miniaa/launcher/ui/media/AlbumColors;-><init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel$2$1;->this$0:Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-static {p0}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->access$get_albumColors$p(Lcom/miniaa/launcher/ui/media/MediaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    new-instance p1, Lcom/miniaa/launcher/ui/media/AlbumColors;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/miniaa/launcher/ui/media/AlbumColors;-><init>(JJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 100
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, Lcom/miniaa/launcher/data/media/NowPlayingState;

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/ui/media/MediaViewModel$2$1;->emit(Lcom/miniaa/launcher/data/media/NowPlayingState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
