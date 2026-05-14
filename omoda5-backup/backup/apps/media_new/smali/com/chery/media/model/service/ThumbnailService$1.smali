.class Lcom/chery/media/model/service/ThumbnailService$1;
.super Lcom/chery/media/IThumbnailServiceAidlInterface$Stub;
.source "ThumbnailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/service/ThumbnailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/service/ThumbnailService;


# direct methods
.method constructor <init>(Lcom/chery/media/model/service/ThumbnailService;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/chery/media/model/service/ThumbnailService$1;->this$0:Lcom/chery/media/model/service/ThumbnailService;

    invoke-direct {p0}, Lcom/chery/media/IThumbnailServiceAidlInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public createAudioThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/chery/media/model/service/ThumbnailService$1;->this$0:Lcom/chery/media/model/service/ThumbnailService;

    invoke-static {p0}, Lcom/chery/media/util/GlideApp;->with(Landroid/content/Context;)Lcom/chery/media/util/GlideRequests;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcom/chery/media/util/GlideRequests;->asBitmap()Lcom/chery/media/util/GlideRequest;

    move-result-object p0

    new-instance v0, Lcom/chery/media/util/GlideMediaFileData;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/chery/media/util/GlideMediaFileData;-><init>(Ljava/lang/String;I)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/chery/media/util/GlideRequest;->load(Ljava/lang/Object;)Lcom/chery/media/util/GlideRequest;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 38
    invoke-virtual {p0, p1}, Lcom/chery/media/util/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/chery/media/util/GlideRequest;

    move-result-object p0

    .line 39
    invoke-virtual {p0, v1}, Lcom/chery/media/util/GlideRequest;->skipMemoryCache(Z)Lcom/chery/media/util/GlideRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/util/GlideRequest;->submit()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    .line 42
    :try_start_0
    invoke-interface {p0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public createImageThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/chery/media/model/service/ThumbnailService$1;->this$0:Lcom/chery/media/model/service/ThumbnailService;

    invoke-static {p0}, Lcom/chery/media/util/GlideApp;->with(Landroid/content/Context;)Lcom/chery/media/util/GlideRequests;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lcom/chery/media/util/GlideRequests;->asBitmap()Lcom/chery/media/util/GlideRequest;

    move-result-object p0

    new-instance v0, Lcom/chery/media/util/GlideMediaFileData;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/chery/media/util/GlideMediaFileData;-><init>(Ljava/lang/String;I)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/chery/media/util/GlideRequest;->load(Ljava/lang/Object;)Lcom/chery/media/util/GlideRequest;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 72
    invoke-virtual {p0, p1}, Lcom/chery/media/util/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/chery/media/util/GlideRequest;

    move-result-object p0

    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Lcom/chery/media/util/GlideRequest;->skipMemoryCache(Z)Lcom/chery/media/util/GlideRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/util/GlideRequest;->submit()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    .line 76
    :try_start_0
    invoke-interface {p0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/chery/media/model/service/ThumbnailService$1;->this$0:Lcom/chery/media/model/service/ThumbnailService;

    invoke-static {p0}, Lcom/chery/media/util/GlideApp;->with(Landroid/content/Context;)Lcom/chery/media/util/GlideRequests;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/chery/media/util/GlideRequests;->asBitmap()Lcom/chery/media/util/GlideRequest;

    move-result-object p0

    new-instance v0, Lcom/chery/media/util/GlideMediaFileData;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/chery/media/util/GlideMediaFileData;-><init>(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/chery/media/util/GlideRequest;->load(Ljava/lang/Object;)Lcom/chery/media/util/GlideRequest;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 55
    invoke-virtual {p0, p1}, Lcom/chery/media/util/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/chery/media/util/GlideRequest;

    move-result-object p0

    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Lcom/chery/media/util/GlideRequest;->skipMemoryCache(Z)Lcom/chery/media/util/GlideRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/util/GlideRequest;->submit()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    .line 59
    :try_start_0
    invoke-interface {p0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
