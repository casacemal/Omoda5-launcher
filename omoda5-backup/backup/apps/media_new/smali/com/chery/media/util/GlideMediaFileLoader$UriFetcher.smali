.class Lcom/chery/media/util/GlideMediaFileLoader$UriFetcher;
.super Ljava/lang/Object;
.source "GlideMediaFileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/util/GlideMediaFileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UriFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Lcom/chery/media/util/GlideMediaFileData;


# direct methods
.method private constructor <init>(Lcom/chery/media/util/GlideMediaFileData;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/chery/media/util/GlideMediaFileLoader$UriFetcher;->data:Lcom/chery/media/util/GlideMediaFileData;

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/media/util/GlideMediaFileData;Lcom/chery/media/util/GlideMediaFileLoader$1;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/chery/media/util/GlideMediaFileLoader$UriFetcher;-><init>(Lcom/chery/media/util/GlideMediaFileData;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 0

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 109
    const-class p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 0

    .line 115
    sget-object p0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object p0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-object p1, p0, Lcom/chery/media/util/GlideMediaFileLoader$UriFetcher;->data:Lcom/chery/media/util/GlideMediaFileData;

    invoke-virtual {p1}, Lcom/chery/media/util/GlideMediaFileData;->getType()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/chery/media/util/GlideMediaFileLoader$UriFetcher;->data:Lcom/chery/media/util/GlideMediaFileData;

    invoke-virtual {p1}, Lcom/chery/media/util/GlideMediaFileData;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/chery/media/util/GlideMediaFileLoader$UriFetcher;->data:Lcom/chery/media/util/GlideMediaFileData;

    invoke-virtual {p1}, Lcom/chery/media/util/GlideMediaFileData;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/chery/media/util/GlideMediaFileLoader$UriFetcher;->data:Lcom/chery/media/util/GlideMediaFileData;

    invoke-virtual {p1}, Lcom/chery/media/util/GlideMediaFileData;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/media/ThumbnailUtils;->createAudioThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 79
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    goto :goto_1

    .line 82
    :cond_3
    iget-object p1, p0, Lcom/chery/media/util/GlideMediaFileLoader$UriFetcher;->data:Lcom/chery/media/util/GlideMediaFileData;

    invoke-virtual {p1}, Lcom/chery/media/util/GlideMediaFileData;->getType()I

    move-result p1

    if-eq p1, v1, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v0, :cond_4

    goto :goto_1

    .line 90
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to create image thumbnail for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/media/util/GlideMediaFileLoader$UriFetcher;->data:Lcom/chery/media/util/GlideMediaFileData;

    invoke-virtual {p0}, Lcom/chery/media/util/GlideMediaFileData;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    goto :goto_1

    .line 87
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to create video thumbnail for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/media/util/GlideMediaFileLoader$UriFetcher;->data:Lcom/chery/media/util/GlideMediaFileData;

    invoke-virtual {p0}, Lcom/chery/media/util/GlideMediaFileData;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    goto :goto_1

    .line 84
    :cond_6
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to create audio thumbnail for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/media/util/GlideMediaFileLoader$UriFetcher;->data:Lcom/chery/media/util/GlideMediaFileData;

    invoke-virtual {p0}, Lcom/chery/media/util/GlideMediaFileData;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
