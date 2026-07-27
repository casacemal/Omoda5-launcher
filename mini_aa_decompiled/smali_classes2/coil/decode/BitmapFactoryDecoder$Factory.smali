.class public final Lcoil/decode/BitmapFactoryDecoder$Factory;
.super Ljava/lang/Object;
.source "BitmapFactoryDecoder.kt"

# interfaces
.implements Lcoil/decode/Decoder$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/decode/BitmapFactoryDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\t\u0008\u0017\u00a2\u0006\u0004\u0008\u0006\u0010\u0008B\u0013\u0008\u0017\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\tJ \u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\u0008\u0010\u0018\u001a\u00020\u0003H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcoil/decode/BitmapFactoryDecoder$Factory;",
        "Lcoil/decode/Decoder$Factory;",
        "maxParallelism",
        "",
        "exifOrientationPolicy",
        "Lcoil/decode/ExifOrientationPolicy;",
        "<init>",
        "(ILcoil/decode/ExifOrientationPolicy;)V",
        "()V",
        "(I)V",
        "parallelismLock",
        "Lkotlinx/coroutines/sync/Semaphore;",
        "create",
        "Lcoil/decode/Decoder;",
        "result",
        "Lcoil/fetch/SourceResult;",
        "options",
        "Lcoil/request/Options;",
        "imageLoader",
        "Lcoil/ImageLoader;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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
.field private final exifOrientationPolicy:Lcoil/decode/ExifOrientationPolicy;

.field private final parallelismLock:Lkotlinx/coroutines/sync/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 191
    invoke-direct {p0, v2, v0, v1, v0}, Lcoil/decode/BitmapFactoryDecoder$Factory;-><init>(ILcoil/decode/ExifOrientationPolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 194
    invoke-direct {p0, p1, v0, v1, v0}, Lcoil/decode/BitmapFactoryDecoder$Factory;-><init>(ILcoil/decode/ExifOrientationPolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    .line 193
    :cond_0
    invoke-direct {p0, p1}, Lcoil/decode/BitmapFactoryDecoder$Factory;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILcoil/decode/ExifOrientationPolicy;)V
    .locals 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lcoil/decode/BitmapFactoryDecoder$Factory;->exifOrientationPolicy:Lcoil/decode/ExifOrientationPolicy;

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 196
    invoke-static {p1, v1, p2, v0}, Lkotlinx/coroutines/sync/SemaphoreKt;->Semaphore$default(IIILjava/lang/Object;)Lkotlinx/coroutines/sync/Semaphore;

    move-result-object p1

    iput-object p1, p0, Lcoil/decode/BitmapFactoryDecoder$Factory;->parallelismLock:Lkotlinx/coroutines/sync/Semaphore;

    return-void
.end method

.method public synthetic constructor <init>(ILcoil/decode/ExifOrientationPolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x4

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 186
    sget-object p2, Lcoil/decode/ExifOrientationPolicy;->RESPECT_PERFORMANCE:Lcoil/decode/ExifOrientationPolicy;

    .line 184
    :cond_1
    invoke-direct {p0, p1, p2}, Lcoil/decode/BitmapFactoryDecoder$Factory;-><init>(ILcoil/decode/ExifOrientationPolicy;)V

    return-void
.end method


# virtual methods
.method public create(Lcoil/fetch/SourceResult;Lcoil/request/Options;Lcoil/ImageLoader;)Lcoil/decode/Decoder;
    .locals 1

    .line 199
    new-instance p3, Lcoil/decode/BitmapFactoryDecoder;

    invoke-virtual {p1}, Lcoil/fetch/SourceResult;->getSource()Lcoil/decode/ImageSource;

    move-result-object p1

    iget-object v0, p0, Lcoil/decode/BitmapFactoryDecoder$Factory;->parallelismLock:Lkotlinx/coroutines/sync/Semaphore;

    iget-object p0, p0, Lcoil/decode/BitmapFactoryDecoder$Factory;->exifOrientationPolicy:Lcoil/decode/ExifOrientationPolicy;

    invoke-direct {p3, p1, p2, v0, p0}, Lcoil/decode/BitmapFactoryDecoder;-><init>(Lcoil/decode/ImageSource;Lcoil/request/Options;Lkotlinx/coroutines/sync/Semaphore;Lcoil/decode/ExifOrientationPolicy;)V

    check-cast p3, Lcoil/decode/Decoder;

    return-object p3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 202
    instance-of p0, p1, Lcoil/decode/BitmapFactoryDecoder$Factory;

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->hashCode()I

    move-result p0

    return p0
.end method
