.class public final Lokio/TypedOptions;
.super Lkotlin/collections/AbstractList;
.source "TypedOptions.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/TypedOptions$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractList<",
        "TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 \u0016*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u00060\u0004j\u0002`\u0005:\u0001\u0016B\u001b\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0016\u0010\u0013\u001a\u00028\u00002\u0006\u0010\u0014\u001a\u00020\u0010H\u0096\u0002\u00a2\u0006\u0002\u0010\u0015R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0008\u001a\u00020\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0017"
    }
    d2 = {
        "Lokio/TypedOptions;",
        "T",
        "",
        "Lkotlin/collections/AbstractList;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "list",
        "",
        "options",
        "Lokio/Options;",
        "(Ljava/util/List;Lokio/Options;)V",
        "getList$okio",
        "()Ljava/util/List;",
        "getOptions$okio",
        "()Lokio/Options;",
        "size",
        "",
        "getSize",
        "()I",
        "get",
        "index",
        "(I)Ljava/lang/Object;",
        "Companion",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lokio/TypedOptions$Companion;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final options:Lokio/Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/TypedOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/TypedOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/TypedOptions;->Companion:Lokio/TypedOptions$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lokio/Options;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lokio/Options;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    .line 27
    iput-object p2, p0, Lokio/TypedOptions;->options:Lokio/Options;

    .line 29
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokio/TypedOptions;->list:Ljava/util/List;

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2}, Lokio/Options;->size()I

    move-result p1

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final of(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Lokio/TypedOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Lokio/ByteString;",
            ">;)",
            "Lokio/TypedOptions<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/TypedOptions;->Companion:Lokio/TypedOptions$Companion;

    invoke-virtual {v0, p0, p1}, Lokio/TypedOptions$Companion;->of(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Lokio/TypedOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 38
    iget-object p0, p0, Lokio/TypedOptions;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getList$okio()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lokio/TypedOptions;->list:Ljava/util/List;

    return-object p0
.end method

.method public final getOptions$okio()Lokio/Options;
    .locals 0

    .line 27
    iget-object p0, p0, Lokio/TypedOptions;->options:Lokio/Options;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    .line 36
    iget-object p0, p0, Lokio/TypedOptions;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
