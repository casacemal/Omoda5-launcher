.class public Lcom/android/car/VmsPublishersInfo;
.super Ljava/lang/Object;
.source "VmsPublishersInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/VmsPublishersInfo$InfoWrapper;
    }
.end annotation


# static fields
.field private static final EMPTY_RESPONSE:[B


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPublishersIds:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/car/VmsPublishersInfo$InfoWrapper;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublishersInfo:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/car/VmsPublishersInfo$InfoWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/car/VmsPublishersInfo;->EMPTY_RESPONSE:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsPublishersInfo;->mLock:Ljava/lang/Object;

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsPublishersInfo;->mPublishersIds:Landroid/util/ArrayMap;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsPublishersInfo;->mPublishersInfo:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getIdForInfo([B)I
    .locals 4
    .param p1, "publisherInfo"    # [B

    .line 70
    new-instance v0, Lcom/android/car/VmsPublishersInfo$InfoWrapper;

    invoke-direct {v0, p1}, Lcom/android/car/VmsPublishersInfo$InfoWrapper;-><init>([B)V

    .line 71
    .local v0, "wrappedPublisherInfo":Lcom/android/car/VmsPublishersInfo$InfoWrapper;
    iget-object v1, p0, Lcom/android/car/VmsPublishersInfo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/android/car/VmsPublishersInfo;->mPublishersIds:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 74
    .local v2, "publisherId":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 76
    iget-object v3, p0, Lcom/android/car/VmsPublishersInfo;->mPublishersInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v3, p0, Lcom/android/car/VmsPublishersInfo;->mPublishersInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, v3

    .line 78
    iget-object v3, p0, Lcom/android/car/VmsPublishersInfo;->mPublishersIds:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 80
    .end local v2    # "publisherId":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getPublisherInfo(I)[B
    .locals 3
    .param p1, "publisherId"    # I

    .line 90
    iget-object v0, p0, Lcom/android/car/VmsPublishersInfo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsPublishersInfo;->mPublishersInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/car/VmsPublishersInfo;->mPublishersInfo:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/VmsPublishersInfo$InfoWrapper;

    invoke-virtual {v1}, Lcom/android/car/VmsPublishersInfo$InfoWrapper;->getInfo()[B

    move-result-object v1

    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/car/VmsPublishersInfo;->EMPTY_RESPONSE:[B

    .line 93
    :goto_1
    monitor-exit v0

    .line 91
    return-object v1

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
