.class public final Lcoil/fetch/DrawableFetcher;
.super Ljava/lang/Object;
.source "DrawableFetcher.kt"

# interfaces
.implements Lcoil/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/fetch/DrawableFetcher$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawableFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawableFetcher.kt\ncoil/fetch/DrawableFetcher\n+ 2 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 3 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,42:1\n50#2:43\n28#3:44\n*S KotlinDebug\n*F\n+ 1 DrawableFetcher.kt\ncoil/fetch/DrawableFetcher\n*L\n26#1:43\n26#1:44\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0008\u001a\u00020\tH\u0096@\u00a2\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcoil/fetch/DrawableFetcher;",
        "Lcoil/fetch/Fetcher;",
        "data",
        "Landroid/graphics/drawable/Drawable;",
        "options",
        "Lcoil/request/Options;",
        "<init>",
        "(Landroid/graphics/drawable/Drawable;Lcoil/request/Options;)V",
        "fetch",
        "Lcoil/fetch/FetchResult;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Factory",
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
.field private final data:Landroid/graphics/drawable/Drawable;

.field private final options:Lcoil/request/Options;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcoil/request/Options;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcoil/fetch/DrawableFetcher;->data:Landroid/graphics/drawable/Drawable;

    .line 13
    iput-object p2, p0, Lcoil/fetch/DrawableFetcher;->options:Lcoil/request/Options;

    return-void
.end method


# virtual methods
.method public fetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/fetch/FetchResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 17
    iget-object p1, p0, Lcoil/fetch/DrawableFetcher;->data:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcoil/util/-Utils;->isVector(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    .line 18
    new-instance v0, Lcoil/fetch/DrawableResult;

    if-eqz p1, :cond_0

    .line 20
    sget-object v1, Lcoil/util/DrawableUtils;->INSTANCE:Lcoil/util/DrawableUtils;

    .line 21
    iget-object v2, p0, Lcoil/fetch/DrawableFetcher;->data:Landroid/graphics/drawable/Drawable;

    .line 22
    iget-object v3, p0, Lcoil/fetch/DrawableFetcher;->options:Lcoil/request/Options;

    invoke-virtual {v3}, Lcoil/request/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 23
    iget-object v4, p0, Lcoil/fetch/DrawableFetcher;->options:Lcoil/request/Options;

    invoke-virtual {v4}, Lcoil/request/Options;->getSize()Lcoil/size/Size;

    move-result-object v4

    .line 24
    iget-object v5, p0, Lcoil/fetch/DrawableFetcher;->options:Lcoil/request/Options;

    invoke-virtual {v5}, Lcoil/request/Options;->getScale()Lcoil/size/Scale;

    move-result-object v5

    .line 25
    iget-object v6, p0, Lcoil/fetch/DrawableFetcher;->options:Lcoil/request/Options;

    invoke-virtual {v6}, Lcoil/request/Options;->getAllowInexactSize()Z

    move-result v6

    .line 20
    invoke-virtual/range {v1 .. v6}, Lcoil/util/DrawableUtils;->convertToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 26
    iget-object p0, p0, Lcoil/fetch/DrawableFetcher;->options:Lcoil/request/Options;

    invoke-virtual {p0}, Lcoil/request/Options;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 44
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 43
    check-cast v2, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 28
    :cond_0
    iget-object v2, p0, Lcoil/fetch/DrawableFetcher;->data:Landroid/graphics/drawable/Drawable;

    .line 31
    :goto_0
    sget-object p0, Lcoil/decode/DataSource;->MEMORY:Lcoil/decode/DataSource;

    .line 18
    invoke-direct {v0, v2, p1, p0}, Lcoil/fetch/DrawableResult;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;)V

    return-object v0
.end method
