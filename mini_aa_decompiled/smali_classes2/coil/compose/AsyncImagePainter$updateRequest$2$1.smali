.class final Lcoil/compose/AsyncImagePainter$updateRequest$2$1;
.super Ljava/lang/Object;
.source "AsyncImagePainter.kt"

# interfaces
.implements Lcoil/size/SizeResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/AsyncImagePainter;->updateRequest(Lcoil/request/ImageRequest;)Lcoil/request/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncImagePainter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncImagePainter.kt\ncoil/compose/AsyncImagePainter$updateRequest$2$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,475:1\n56#2:476\n59#2:480\n46#3:477\n51#3:479\n105#4:478\n*S KotlinDebug\n*F\n+ 1 AsyncImagePainter.kt\ncoil/compose/AsyncImagePainter$updateRequest$2$1\n*L\n338#1:476\n338#1:480\n338#1:477\n338#1:479\n338#1:478\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcoil/compose/AsyncImagePainter;


# direct methods
.method constructor <init>(Lcoil/compose/AsyncImagePainter;)V
    .locals 0

    iput-object p1, p0, Lcoil/compose/AsyncImagePainter$updateRequest$2$1;->this$0:Lcoil/compose/AsyncImagePainter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final size(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/size/Size;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 338
    iget-object p0, p0, Lcoil/compose/AsyncImagePainter$updateRequest$2$1;->this$0:Lcoil/compose/AsyncImagePainter;

    invoke-static {p0}, Lcoil/compose/AsyncImagePainter;->access$getDrawSize$p(Lcoil/compose/AsyncImagePainter;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    .line 478
    new-instance v0, Lcoil/compose/AsyncImagePainter$updateRequest$2$1$size$$inlined$mapNotNull$1;

    invoke-direct {v0, p0}, Lcoil/compose/AsyncImagePainter$updateRequest$2$1$size$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 338
    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
