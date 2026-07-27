.class public final Lcoil/disk/DiskCache$Builder;
.super Ljava/lang/Object;
.source "DiskCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/disk/DiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiskCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskCache.kt\ncoil/disk/DiskCache$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,240:1\n1#2:241\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0010J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0011\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000bJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u000fJ\u0006\u0010\u0014\u001a\u00020\u0015R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcoil/disk/DiskCache$Builder;",
        "",
        "<init>",
        "()V",
        "directory",
        "Lokio/Path;",
        "fileSystem",
        "Lokio/FileSystem;",
        "maxSizePercent",
        "",
        "minimumMaxSizeBytes",
        "",
        "maximumMaxSizeBytes",
        "maxSizeBytes",
        "cleanupDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Ljava/io/File;",
        "percent",
        "size",
        "dispatcher",
        "build",
        "Lcoil/disk/DiskCache;",
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
.field private cleanupDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private directory:Lokio/Path;

.field private fileSystem:Lokio/FileSystem;

.field private maxSizeBytes:J

.field private maxSizePercent:D

.field private maximumMaxSizeBytes:J

.field private minimumMaxSizeBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    sget-object v0, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    iput-object v0, p0, Lcoil/disk/DiskCache$Builder;->fileSystem:Lokio/FileSystem;

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    .line 141
    iput-wide v0, p0, Lcoil/disk/DiskCache$Builder;->maxSizePercent:D

    const-wide/32 v0, 0xa00000

    .line 142
    iput-wide v0, p0, Lcoil/disk/DiskCache$Builder;->minimumMaxSizeBytes:J

    const-wide/32 v0, 0xfa00000

    .line 143
    iput-wide v0, p0, Lcoil/disk/DiskCache$Builder;->maximumMaxSizeBytes:J

    .line 145
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcoil/disk/DiskCache$Builder;->cleanupDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method


# virtual methods
.method public final build()Lcoil/disk/DiskCache;
    .locals 12

    .line 219
    iget-object v3, p0, Lcoil/disk/DiskCache$Builder;->directory:Lokio/Path;

    if-eqz v3, :cond_1

    .line 220
    iget-wide v0, p0, Lcoil/disk/DiskCache$Builder;->maxSizePercent:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    .line 222
    :try_start_0
    invoke-virtual {v3}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 223
    iget-wide v4, p0, Lcoil/disk/DiskCache$Builder;->maxSizePercent:D

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    long-to-double v0, v0

    mul-double/2addr v4, v0

    double-to-long v6, v4

    .line 224
    iget-wide v8, p0, Lcoil/disk/DiskCache$Builder;->minimumMaxSizeBytes:J

    iget-wide v10, p0, Lcoil/disk/DiskCache$Builder;->maximumMaxSizeBytes:J

    invoke-static/range {v6 .. v11}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    iget-wide v0, p0, Lcoil/disk/DiskCache$Builder;->minimumMaxSizeBytes:J

    goto :goto_0

    .line 229
    :cond_0
    iget-wide v0, p0, Lcoil/disk/DiskCache$Builder;->maxSizeBytes:J

    :goto_0
    move-wide v1, v0

    .line 231
    new-instance v6, Lcoil/disk/RealDiskCache;

    .line 234
    iget-object v4, p0, Lcoil/disk/DiskCache$Builder;->fileSystem:Lokio/FileSystem;

    .line 235
    iget-object v5, p0, Lcoil/disk/DiskCache$Builder;->cleanupDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v0, v6

    .line 231
    invoke-direct/range {v0 .. v5}, Lcoil/disk/RealDiskCache;-><init>(JLokio/Path;Lokio/FileSystem;Lkotlinx/coroutines/CoroutineDispatcher;)V

    check-cast v6, Lcoil/disk/DiskCache;

    return-object v6

    .line 219
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "directory == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final cleanupDispatcher(Lkotlinx/coroutines/CoroutineDispatcher;)Lcoil/disk/DiskCache$Builder;
    .locals 1

    .line 211
    move-object v0, p0

    check-cast v0, Lcoil/disk/DiskCache$Builder;

    .line 212
    iput-object p1, p0, Lcoil/disk/DiskCache$Builder;->cleanupDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public final directory(Ljava/io/File;)Lcoil/disk/DiskCache$Builder;
    .locals 4

    .line 153
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/io/File;ZILjava/lang/Object;)Lokio/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcoil/disk/DiskCache$Builder;->directory(Lokio/Path;)Lcoil/disk/DiskCache$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final directory(Lokio/Path;)Lcoil/disk/DiskCache$Builder;
    .locals 1

    .line 161
    move-object v0, p0

    check-cast v0, Lcoil/disk/DiskCache$Builder;

    .line 162
    iput-object p1, p0, Lcoil/disk/DiskCache$Builder;->directory:Lokio/Path;

    return-object p0
.end method

.method public final fileSystem(Lokio/FileSystem;)Lcoil/disk/DiskCache$Builder;
    .locals 1

    .line 168
    move-object v0, p0

    check-cast v0, Lcoil/disk/DiskCache$Builder;

    .line 169
    iput-object p1, p0, Lcoil/disk/DiskCache$Builder;->fileSystem:Lokio/FileSystem;

    return-object p0
.end method

.method public final maxSizeBytes(J)Lcoil/disk/DiskCache$Builder;
    .locals 2

    .line 202
    move-object v0, p0

    check-cast v0, Lcoil/disk/DiskCache$Builder;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 204
    iput-wide v0, p0, Lcoil/disk/DiskCache$Builder;->maxSizePercent:D

    .line 205
    iput-wide p1, p0, Lcoil/disk/DiskCache$Builder;->maxSizeBytes:J

    return-object p0

    .line 203
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size must be > 0."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final maxSizePercent(D)Lcoil/disk/DiskCache$Builder;
    .locals 2

    .line 175
    move-object v0, p0

    check-cast v0, Lcoil/disk/DiskCache$Builder;

    const-wide/16 v0, 0x0

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 177
    iput-wide v0, p0, Lcoil/disk/DiskCache$Builder;->maxSizeBytes:J

    .line 178
    iput-wide p1, p0, Lcoil/disk/DiskCache$Builder;->maxSizePercent:D

    return-object p0

    .line 176
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size must be in the range [0.0, 1.0]."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final maximumMaxSizeBytes(J)Lcoil/disk/DiskCache$Builder;
    .locals 2

    .line 194
    move-object v0, p0

    check-cast v0, Lcoil/disk/DiskCache$Builder;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 196
    iput-wide p1, p0, Lcoil/disk/DiskCache$Builder;->maximumMaxSizeBytes:J

    return-object p0

    .line 195
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size must be > 0."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final minimumMaxSizeBytes(J)Lcoil/disk/DiskCache$Builder;
    .locals 2

    .line 185
    move-object v0, p0

    check-cast v0, Lcoil/disk/DiskCache$Builder;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 187
    iput-wide p1, p0, Lcoil/disk/DiskCache$Builder;->minimumMaxSizeBytes:J

    return-object p0

    .line 186
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size must be > 0."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
