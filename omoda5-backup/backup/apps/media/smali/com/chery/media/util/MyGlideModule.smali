.class public Lcom/chery/media/util/MyGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "MyGlideModule.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lcom/chery/media/util/MyGlideModule;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/util/MyGlideModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 3

    .line 24
    sget-object p0, Lcom/chery/media/util/MyGlideModule;->TAG:Ljava/lang/String;

    const-string v0, "applyOptions"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    const-string v0, "GlideCache"

    const-wide/32 v1, 0x6400000

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {p2, p0}, Lcom/bumptech/glide/GlideBuilder;->setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;

    const/4 p0, 0x6

    .line 27
    invoke-virtual {p2, p0}, Lcom/bumptech/glide/GlideBuilder;->setLogLevel(I)Lcom/bumptech/glide/GlideBuilder;

    return-void
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 2

    .line 32
    sget-object v0, Lcom/chery/media/util/MyGlideModule;->TAG:Ljava/lang/String;

    const-string v1, "registerComponents"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/bumptech/glide/module/AppGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 34
    const-class p0, Lcom/chery/media/util/GlideMediaFileData;

    const-class p1, Landroid/graphics/Bitmap;

    new-instance p2, Lcom/chery/media/util/GlideMediaFileLoader$GlideMediaFileLoaderFactory;

    invoke-direct {p2}, Lcom/chery/media/util/GlideMediaFileLoader$GlideMediaFileLoaderFactory;-><init>()V

    invoke-virtual {p3, p0, p1, p2}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    return-void
.end method
