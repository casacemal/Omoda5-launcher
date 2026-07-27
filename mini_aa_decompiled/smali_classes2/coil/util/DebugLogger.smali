.class public final Lcoil/util/DebugLogger;
.super Ljava/lang/Object;
.source "DebugLogger.kt"

# interfaces
.implements Lcoil/util/Logger;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugLogger.kt\ncoil/util/DebugLogger\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,43:1\n1#2:44\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0013\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J,\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0003H\u0002R$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003@VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0005\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcoil/util/DebugLogger;",
        "Lcoil/util/Logger;",
        "level",
        "",
        "<init>",
        "(I)V",
        "value",
        "getLevel",
        "()I",
        "setLevel",
        "log",
        "",
        "tag",
        "",
        "priority",
        "message",
        "throwable",
        "",
        "assertValidLevel",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private level:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcoil/util/DebugLogger;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcoil/util/DebugLogger;->level:I

    .line 24
    invoke-direct {p0, p1}, Lcoil/util/DebugLogger;->assertValidLevel(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcoil/util/DebugLogger;-><init>(I)V

    return-void
.end method

.method private final assertValidLevel(I)V
    .locals 1

    const/4 p0, 0x2

    if-gt p0, p1, :cond_0

    const/16 p0, 0x8

    if-ge p1, p0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid log level: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getLevel()I
    .locals 0

    .line 17
    iget p0, p0, Lcoil/util/DebugLogger;->level:I

    return p0
.end method

.method public log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 29
    invoke-static {p2, p1, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p4, :cond_1

    .line 33
    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    .line 34
    new-instance p3, Ljava/io/PrintWriter;

    move-object v0, p0

    check-cast v0, Ljava/io/Writer;

    invoke-direct {p3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p4, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 35
    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcoil/util/DebugLogger;->assertValidLevel(I)V

    .line 20
    iput p1, p0, Lcoil/util/DebugLogger;->level:I

    return-void
.end method
