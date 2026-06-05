.class Lcom/android/car/CarMediaService$MediaSessionUpdater;
.super Ljava/lang/Object;
.source "CarMediaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarMediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSessionUpdater"
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/session/MediaSession$Token;",
            "Lcom/android/car/CarMediaService$MediaControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/car/CarMediaService;


# direct methods
.method private constructor <init>(Lcom/android/car/CarMediaService;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/android/car/CarMediaService$MediaSessionUpdater;->this$0:Lcom/android/car/CarMediaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/car/CarMediaService$MediaSessionUpdater;->mCallbacks:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/CarMediaService;Lcom/android/car/CarMediaService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/CarMediaService;
    .param p2, "x1"    # Lcom/android/car/CarMediaService$1;

    .line 414
    invoke-direct {p0, p1}, Lcom/android/car/CarMediaService$MediaSessionUpdater;-><init>(Lcom/android/car/CarMediaService;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/car/CarMediaService$MediaSessionUpdater;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarMediaService$MediaSessionUpdater;
    .param p1, "x1"    # Ljava/util/List;

    .line 414
    invoke-direct {p0, p1}, Lcom/android/car/CarMediaService$MediaSessionUpdater;->registerCallbacks(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/car/CarMediaService$MediaSessionUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarMediaService$MediaSessionUpdater;

    .line 414
    invoke-direct {p0}, Lcom/android/car/CarMediaService$MediaSessionUpdater;->unregisterCallbacks()V

    return-void
.end method

.method private registerCallbacks(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 425
    .local p1, "newControllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 426
    .local v0, "additions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    new-instance v1, Ljava/util/HashMap;

    .line 427
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 429
    .local v1, "updatedCallbacks":Ljava/util/Map;, "Ljava/util/Map<Landroid/media/session/MediaSession$Token;Lcom/android/car/CarMediaService$MediaControllerCallback;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaController;

    .line 430
    .local v3, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    .line 431
    .local v4, "token":Landroid/media/session/MediaSession$Token;
    iget-object v5, p0, Lcom/android/car/CarMediaService$MediaSessionUpdater;->mCallbacks:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/car/CarMediaService$MediaControllerCallback;

    .line 432
    .local v5, "callback":Lcom/android/car/CarMediaService$MediaControllerCallback;
    if-nez v5, :cond_0

    .line 433
    new-instance v6, Lcom/android/car/CarMediaService$MediaControllerCallback;

    iget-object v7, p0, Lcom/android/car/CarMediaService$MediaSessionUpdater;->this$0:Lcom/android/car/CarMediaService;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v3, v8}, Lcom/android/car/CarMediaService$MediaControllerCallback;-><init>(Lcom/android/car/CarMediaService;Landroid/media/session/MediaController;Lcom/android/car/CarMediaService$1;)V

    move-object v5, v6

    .line 434
    invoke-static {v5}, Lcom/android/car/CarMediaService$MediaControllerCallback;->access$1400(Lcom/android/car/CarMediaService$MediaControllerCallback;)V

    .line 435
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_0
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .end local v3    # "controller":Landroid/media/session/MediaController;
    .end local v4    # "token":Landroid/media/session/MediaSession$Token;
    .end local v5    # "callback":Lcom/android/car/CarMediaService$MediaControllerCallback;
    goto :goto_0

    .line 440
    :cond_1
    iget-object v2, p0, Lcom/android/car/CarMediaService$MediaSessionUpdater;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaSession$Token;

    .line 441
    .local v3, "token":Landroid/media/session/MediaSession$Token;
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 442
    iget-object v4, p0, Lcom/android/car/CarMediaService$MediaSessionUpdater;->mCallbacks:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/CarMediaService$MediaControllerCallback;

    invoke-static {v4}, Lcom/android/car/CarMediaService$MediaControllerCallback;->access$1500(Lcom/android/car/CarMediaService$MediaControllerCallback;)V

    .line 444
    .end local v3    # "token":Landroid/media/session/MediaSession$Token;
    :cond_2
    goto :goto_1

    .line 446
    :cond_3
    iput-object v1, p0, Lcom/android/car/CarMediaService$MediaSessionUpdater;->mCallbacks:Ljava/util/Map;

    .line 447
    iget-object v2, p0, Lcom/android/car/CarMediaService$MediaSessionUpdater;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v2, v0}, Lcom/android/car/CarMediaService;->access$1600(Lcom/android/car/CarMediaService;Ljava/util/List;)V

    .line 452
    iget-object v2, p0, Lcom/android/car/CarMediaService$MediaSessionUpdater;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v2}, Lcom/android/car/CarMediaService;->access$1700(Lcom/android/car/CarMediaService;)Landroid/media/session/MediaController;

    move-result-object v2

    if-nez v2, :cond_4

    .line 453
    iget-object v2, p0, Lcom/android/car/CarMediaService$MediaSessionUpdater;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v2, p1}, Lcom/android/car/CarMediaService;->access$1800(Lcom/android/car/CarMediaService;Ljava/util/List;)V

    .line 455
    :cond_4
    return-void
.end method

.method private unregisterCallbacks()V
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/android/car/CarMediaService$MediaSessionUpdater;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 462
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/media/session/MediaSession$Token;Lcom/android/car/CarMediaService$MediaControllerCallback;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarMediaService$MediaControllerCallback;

    invoke-static {v2}, Lcom/android/car/CarMediaService$MediaControllerCallback;->access$1500(Lcom/android/car/CarMediaService$MediaControllerCallback;)V

    .line 463
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/media/session/MediaSession$Token;Lcom/android/car/CarMediaService$MediaControllerCallback;>;"
    goto :goto_0

    .line 464
    :cond_0
    return-void
.end method
