.class public final Lcoil/util/-Bitmaps;
.super Ljava/lang/Object;
.source "Bitmaps.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBitmaps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 2 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,56:1\n28#2:57\n*S KotlinDebug\n*F\n+ 1 Bitmaps.kt\ncoil/util/-Bitmaps\n*L\n50#1:57\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0015\u0010\u0013\u001a\u00020\u0014*\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0016H\u0080\u0008\u001a\u000e\u0010\u0017\u001a\u00020\u0002*\u0004\u0018\u00010\u0002H\u0000\" \u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00028@X\u0080\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0018\u0010\u0007\u001a\u00020\u0001*\u00020\u00088@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\"\u0018\u0010\u000b\u001a\u00020\u000c*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\r\"\u001e\u0010\u000e\u001a\u00020\u0002*\u00020\u00088@X\u0080\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0018"
    }
    d2 = {
        "bytesPerPixel",
        "",
        "Landroid/graphics/Bitmap$Config;",
        "getBytesPerPixel$annotations",
        "(Landroid/graphics/Bitmap$Config;)V",
        "getBytesPerPixel",
        "(Landroid/graphics/Bitmap$Config;)I",
        "allocationByteCountCompat",
        "Landroid/graphics/Bitmap;",
        "getAllocationByteCountCompat",
        "(Landroid/graphics/Bitmap;)I",
        "isHardware",
        "",
        "(Landroid/graphics/Bitmap$Config;)Z",
        "safeConfig",
        "getSafeConfig$annotations",
        "(Landroid/graphics/Bitmap;)V",
        "getSafeConfig",
        "(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;",
        "toDrawable",
        "Landroid/graphics/drawable/BitmapDrawable;",
        "context",
        "Landroid/content/Context;",
        "toSoftware",
        "coil-base_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getAllocationByteCountCompat(Landroid/graphics/Bitmap;)I
    .locals 2

    .line 27
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {p0}, Lcoil/util/-Bitmaps;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result p0

    mul-int/2addr p0, v0

    :goto_0
    return p0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot obtain size for recycled bitmap: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I
    .locals 2

    .line 14
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    .line 15
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x2

    if-ne p0, v0, :cond_1

    :goto_0
    move p0, v1

    goto :goto_1

    .line 16
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_3

    const/16 p0, 0x8

    goto :goto_1

    :cond_3
    const/4 p0, 0x4

    :goto_1
    return p0
.end method

.method public static synthetic getBytesPerPixel$annotations(Landroid/graphics/Bitmap$Config;)V
    .locals 0

    return-void
.end method

.method public static final getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 48
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    return-object p0
.end method

.method public static synthetic getSafeConfig$annotations(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public static final isHardware(Landroid/graphics/Bitmap$Config;)Z
    .locals 1

    .line 39
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final toDrawable(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 57
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static final toSoftware(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;
    .locals 1

    if-eqz p0, :cond_0

    .line 54
    invoke-static {p0}, Lcoil/util/-Bitmaps;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_1
    return-object p0
.end method
