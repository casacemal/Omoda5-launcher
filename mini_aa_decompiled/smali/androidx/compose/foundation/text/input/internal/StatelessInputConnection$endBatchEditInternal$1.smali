.class final Landroidx/compose/foundation/text/input/internal/StatelessInputConnection$endBatchEditInternal$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StatelessInputConnection.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;->endBatchEditInternal()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/foundation/text/input/internal/EditingBuffer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatelessInputConnection.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatelessInputConnection.android.kt\nandroidx/compose/foundation/text/input/internal/StatelessInputConnection$endBatchEditInternal$1\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,583:1\n460#2,11:584\n*S KotlinDebug\n*F\n+ 1 StatelessInputConnection.android.kt\nandroidx/compose/foundation/text/input/internal/StatelessInputConnection$endBatchEditInternal$1\n*L\n227#1:584,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/text/input/internal/EditingBuffer;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/StatelessInputConnection$endBatchEditInternal$1;->this$0:Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 226
    check-cast p1, Landroidx/compose/foundation/text/input/internal/EditingBuffer;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/StatelessInputConnection$endBatchEditInternal$1;->invoke(Landroidx/compose/foundation/text/input/internal/EditingBuffer;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/text/input/internal/EditingBuffer;)V
    .locals 3

    .line 227
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/StatelessInputConnection$endBatchEditInternal$1;->this$0:Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;->access$getEditCommands$p(Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    .line 585
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 588
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    .line 590
    :cond_0
    aget-object v2, p0, v1

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 227
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_1
    return-void
.end method
