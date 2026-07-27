.class public final Lcoil/compose/EqualityDelegateKt$DefaultModelEqualityDelegate$1;
.super Ljava/lang/Object;
.source "EqualityDelegate.kt"

# interfaces
.implements Lcoil/compose/EqualityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/compose/EqualityDelegateKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "coil/compose/EqualityDelegateKt$DefaultModelEqualityDelegate$1",
        "Lcoil/compose/EqualityDelegate;",
        "equals",
        "",
        "self",
        "",
        "other",
        "hashCode",
        "",
        "coil-compose-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 p0, 0x1

    if-ne p1, p2, :cond_0

    return p0

    .line 26
    :cond_0
    instance-of v0, p1, Lcoil/request/ImageRequest;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcoil/request/ImageRequest;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 30
    :cond_1
    check-cast p1, Lcoil/request/ImageRequest;

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p2, Lcoil/request/ImageRequest;

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getPlaceholderMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getPlaceholderMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 36
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getHeaders()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getAllowConversionToBitmap()Z

    move-result v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getAllowConversionToBitmap()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 40
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getAllowHardware()Z

    move-result v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getAllowHardware()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 41
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getAllowRgb565()Z

    move-result v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getAllowRgb565()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 42
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getPremultipliedAlpha()Z

    move-result v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getPremultipliedAlpha()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 43
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 44
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 45
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getNetworkCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getNetworkCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 46
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getSizeResolver()Lcoil/size/SizeResolver;

    move-result-object v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getSizeResolver()Lcoil/size/SizeResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getScale()Lcoil/size/Scale;

    move-result-object v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getScale()Lcoil/size/Scale;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 48
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getPrecision()Lcoil/size/Precision;

    move-result-object v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getPrecision()Lcoil/size/Precision;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 49
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getParameters()Lcoil/request/Parameters;

    move-result-object p1

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getParameters()Lcoil/request/Parameters;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 27
    :cond_3
    :goto_1
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 2

    .line 53
    instance-of p0, p1, Lcoil/request/ImageRequest;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_0
    return v0

    .line 57
    :cond_1
    check-cast p1, Lcoil/request/ImageRequest;

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    .line 58
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x1f

    .line 59
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getPlaceholderMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    add-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x1f

    .line 60
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    add-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x1f

    .line 61
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    add-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x1f

    .line 62
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    add-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x1f

    .line 63
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_5
    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    .line 64
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    .line 65
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->hashCode()I

    move-result v0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    .line 66
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getAllowConversionToBitmap()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    .line 67
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getAllowHardware()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    .line 68
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getAllowRgb565()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    .line 69
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getPremultipliedAlpha()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    .line 70
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/CachePolicy;->hashCode()I

    move-result v0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    .line 71
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/CachePolicy;->hashCode()I

    move-result v0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    .line 72
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getNetworkCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/CachePolicy;->hashCode()I

    move-result v0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    .line 73
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getSizeResolver()Lcoil/size/SizeResolver;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    .line 74
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getScale()Lcoil/size/Scale;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/size/Scale;->hashCode()I

    move-result v0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    .line 75
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getPrecision()Lcoil/size/Precision;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/size/Precision;->hashCode()I

    move-result v0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    .line 76
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getParameters()Lcoil/request/Parameters;

    move-result-object p1

    invoke-virtual {p1}, Lcoil/request/Parameters;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
