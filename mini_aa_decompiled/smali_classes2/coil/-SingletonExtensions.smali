.class public final Lcoil/-SingletonExtensions;
.super Ljava/lang/Object;
.source "Extensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\ncoil/-SingletonExtensions\n*L\n1#1,114:1\n24#1:115\n59#1,6:116\n24#1:122\n59#1,6:123\n71#1,2:129\n*S KotlinDebug\n*F\n+ 1 Extensions.kt\ncoil/-SingletonExtensions\n*L\n56#1:115\n92#1:116,6\n90#1:122\n92#1:123,6\n102#1:129,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u001a<\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0019\u0008\u0002\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0086\u0008\u001a\r\u0010\u000f\u001a\u00020\r*\u00020\u0007H\u0086\u0008\u001a<\u0010\u0014\u001a\u00020\u0006*\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0019\u0008\u0002\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0087\u0008\u001a\r\u0010\u0015\u001a\u00020\r*\u00020\u0007H\u0087\u0008\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u0011*\u00020\u00078\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\"!\u0010\u0016\u001a\u0004\u0018\u00010\u0011*\u00020\u00078\u00c6\u0002X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u0013\u00a8\u0006\u001a"
    }
    d2 = {
        "imageLoader",
        "Lcoil/ImageLoader;",
        "Landroid/content/Context;",
        "getImageLoader",
        "(Landroid/content/Context;)Lcoil/ImageLoader;",
        "load",
        "Lcoil/request/Disposable;",
        "Landroid/widget/ImageView;",
        "data",
        "",
        "builder",
        "Lkotlin/Function1;",
        "Lcoil/request/ImageRequest$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "dispose",
        "result",
        "Lcoil/request/ImageResult;",
        "getResult",
        "(Landroid/widget/ImageView;)Lcoil/request/ImageResult;",
        "loadAny",
        "clear",
        "metadata",
        "getMetadata$annotations",
        "(Landroid/widget/ImageView;)V",
        "getMetadata",
        "coil-singleton_release"
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
.method public static final clear(Landroid/widget/ImageView;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Migrate to \'dispose\'."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "dispose()"
            imports = {
                "coil.dispose"
            }
        .end subannotation
    .end annotation

    .line 129
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcoil/util/CoilUtils;->dispose(Landroid/view/View;)V

    return-void
.end method

.method public static final dispose(Landroid/widget/ImageView;)V
    .locals 0

    .line 71
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcoil/util/CoilUtils;->dispose(Landroid/view/View;)V

    return-void
.end method

.method public static final getImageLoader(Landroid/content/Context;)Lcoil/ImageLoader;
    .locals 0

    .line 24
    invoke-static {p0}, Lcoil/Coil;->imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object p0

    return-object p0
.end method

.method public static final getMetadata(Landroid/widget/ImageView;)Lcoil/request/ImageResult;
    .locals 0

    .line 113
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcoil/util/CoilUtils;->result(Landroid/view/View;)Lcoil/request/ImageResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getMetadata$annotations(Landroid/widget/ImageView;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Migrate to \'result\'."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "result"
            imports = {
                "coil.result"
            }
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getResult(Landroid/widget/ImageView;)Lcoil/request/ImageResult;
    .locals 0

    .line 78
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcoil/util/CoilUtils;->result(Landroid/view/View;)Lcoil/request/ImageResult;

    move-result-object p0

    return-object p0
.end method

.method public static final load(Landroid/widget/ImageView;Ljava/lang/Object;Lcoil/ImageLoader;Lkotlin/jvm/functions/Function1;)Lcoil/request/Disposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Object;",
            "Lcoil/ImageLoader;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/request/ImageRequest$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcoil/request/Disposable;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcoil/request/ImageRequest$Builder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v0, p1}, Lcoil/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1, p0}, Lcoil/request/ImageRequest$Builder;->target(Landroid/widget/ImageView;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    .line 62
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object p0

    .line 64
    invoke-interface {p2, p0}, Lcoil/ImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic load$default(Landroid/widget/ImageView;Ljava/lang/Object;Lcoil/ImageLoader;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcoil/request/Disposable;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 115
    invoke-static {p2}, Lcoil/Coil;->imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 57
    sget-object p3, Lcoil/-SingletonExtensions$load$1;->INSTANCE:Lcoil/-SingletonExtensions$load$1;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 59
    :cond_1
    new-instance p4, Lcoil/request/ImageRequest$Builder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p4, p5}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p4, p1}, Lcoil/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1, p0}, Lcoil/request/ImageRequest$Builder;->target(Landroid/widget/ImageView;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    .line 62
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object p0

    .line 64
    invoke-interface {p2, p0}, Lcoil/ImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public static final loadAny(Landroid/widget/ImageView;Ljava/lang/Object;Lcoil/ImageLoader;Lkotlin/jvm/functions/Function1;)Lcoil/request/Disposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Object;",
            "Lcoil/ImageLoader;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/request/ImageRequest$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcoil/request/Disposable;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Migrate to \'load\'."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "load(data, imageLoader, builder)"
            imports = {
                "coil.imageLoader",
                "coil.load"
            }
        .end subannotation
    .end annotation

    .line 116
    new-instance v0, Lcoil/request/ImageRequest$Builder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v0, p1}, Lcoil/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    .line 118
    invoke-virtual {p1, p0}, Lcoil/request/ImageRequest$Builder;->target(Landroid/widget/ImageView;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    .line 119
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object p0

    .line 121
    invoke-interface {p2, p0}, Lcoil/ImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic loadAny$default(Landroid/widget/ImageView;Ljava/lang/Object;Lcoil/ImageLoader;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcoil/request/Disposable;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 122
    invoke-static {p2}, Lcoil/Coil;->imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 91
    sget-object p3, Lcoil/-SingletonExtensions$loadAny$1;->INSTANCE:Lcoil/-SingletonExtensions$loadAny$1;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 123
    :cond_1
    new-instance p4, Lcoil/request/ImageRequest$Builder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p4, p5}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {p4, p1}, Lcoil/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    .line 125
    invoke-virtual {p1, p0}, Lcoil/request/ImageRequest$Builder;->target(Landroid/widget/ImageView;)Lcoil/request/ImageRequest$Builder;

    move-result-object p0

    .line 126
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p0}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object p0

    .line 128
    invoke-interface {p2, p0}, Lcoil/ImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;

    move-result-object p0

    return-object p0
.end method
