.class public Lcom/chery/media/model/business/ThumbnailCache;
.super Ljava/lang/Object;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;,
        Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;,
        Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static thumbnailCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/chery/media/model/business/ThumbnailCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cacheMemSize:J

.field private executor:Ljava/util/concurrent/Executor;

.field private key:I

.field private reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private thumbnailBitmapList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private thumbnailTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-class v0, Lcom/chery/media/model/business/ThumbnailCache;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/business/ThumbnailCache;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailCacheMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailTaskList:Ljava/util/List;

    const/4 v0, 0x5

    .line 71
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache;->executor:Ljava/util/concurrent/Executor;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailBitmapList:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    .line 74
    iput-wide v0, p0, Lcom/chery/media/model/business/ThumbnailCache;->cacheMemSize:J

    .line 40
    iput p1, p0, Lcom/chery/media/model/business/ThumbnailCache;->key:I

    return-void
.end method

.method static synthetic access$200(Lcom/chery/media/model/business/ThumbnailCache;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailCache;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/model/business/ThumbnailCache;)Ljava/util/Map;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailBitmapList:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/model/business/ThumbnailCache;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/chery/media/model/business/ThumbnailCache;->cacheMemSize:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/chery/media/model/business/ThumbnailCache;J)J
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/chery/media/model/business/ThumbnailCache;->cacheMemSize:J

    return-wide p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/chery/media/model/business/ThumbnailCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/chery/media/model/business/ThumbnailCache;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/chery/media/model/business/ThumbnailCache;->key:I

    return p0
.end method

.method static synthetic access$700(Lcom/chery/media/model/business/ThumbnailCache;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailTaskList:Ljava/util/List;

    return-object p0
.end method

.method public static getThumbnailCache(I)Lcom/chery/media/model/business/ThumbnailCache;
    .locals 3

    .line 45
    sget-object v0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailCacheMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailCacheMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/chery/media/model/business/ThumbnailCache;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/ThumbnailCache;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailCacheMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/ThumbnailCache;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;

    const/4 v2, 0x1

    .line 117
    invoke-static {v1, v2}, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->access$102(Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;Z)Z

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    iget-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 122
    iget-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailBitmapList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    .line 123
    iput-wide v0, p0, Lcom/chery/media/model/business/ThumbnailCache;->cacheMemSize:J

    .line 124
    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailCache;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public getThumbnail(Ljava/lang/String;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 1

    .line 104
    iget-object p2, p0, Lcom/chery/media/model/business/ThumbnailCache;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 105
    iget-object p2, p0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailBitmapList:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 106
    iget-object p2, p0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailBitmapList:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_0

    .line 107
    array-length p2, p1

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 108
    array-length v0, p1

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 111
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailCache;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1
.end method

.method public hasCacheThumbnail(Ljava/lang/String;)Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 97
    iget-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailBitmapList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    .line 98
    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailCache;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1
.end method

.method public removeThumbnail(Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;

    .line 87
    invoke-static {v1}, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->access$000(Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;)Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 88
    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailTaskList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 89
    invoke-static {v1, p0}, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->access$102(Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;Z)Z

    :cond_1
    return-void
.end method

.method public requestThumbnail(Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 77
    iget-object v0, p1, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->path:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->response:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;

    if-nez v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;

    invoke-direct {v0, p0, p1}, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;-><init>(Lcom/chery/media/model/business/ThumbnailCache;Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;)V

    .line 81
    iget-object p1, p0, Lcom/chery/media/model/business/ThumbnailCache;->thumbnailTaskList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailCache;->executor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method
