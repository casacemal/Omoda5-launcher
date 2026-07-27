.class final Lcoil/util/FileDescriptorCounter;
.super Ljava/lang/Object;
.source "HardwareBitmaps.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHardwareBitmaps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HardwareBitmaps.kt\ncoil/util/FileDescriptorCounter\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 Logs.kt\ncoil/util/-Logs\n*L\n1#1,215:1\n18#2:216\n21#3,4:217\n*S KotlinDebug\n*F\n+ 1 HardwareBitmaps.kt\ncoil/util/FileDescriptorCounter\n*L\n87#1:216\n90#1:217,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J\u0008\u0010\u0013\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcoil/util/FileDescriptorCounter;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "FILE_DESCRIPTOR_LIMIT",
        "",
        "FILE_DESCRIPTOR_CHECK_INTERVAL_DECODES",
        "FILE_DESCRIPTOR_CHECK_INTERVAL_MILLIS",
        "fileDescriptorList",
        "Ljava/io/File;",
        "decodesSinceLastFileDescriptorCheck",
        "lastFileDescriptorCheckTimestamp",
        "",
        "hasAvailableFileDescriptors",
        "",
        "logger",
        "Lcoil/util/Logger;",
        "checkFileDescriptors",
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


# static fields
.field private static final FILE_DESCRIPTOR_CHECK_INTERVAL_DECODES:I = 0x1e

.field private static final FILE_DESCRIPTOR_CHECK_INTERVAL_MILLIS:I = 0x7530

.field private static final FILE_DESCRIPTOR_LIMIT:I = 0x320

.field public static final INSTANCE:Lcoil/util/FileDescriptorCounter;

.field private static final TAG:Ljava/lang/String; = "FileDescriptorCounter"

.field private static decodesSinceLastFileDescriptorCheck:I

.field private static final fileDescriptorList:Ljava/io/File;

.field private static hasAvailableFileDescriptors:Z

.field private static lastFileDescriptorCheckTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/util/FileDescriptorCounter;

    invoke-direct {v0}, Lcoil/util/FileDescriptorCounter;-><init>()V

    sput-object v0, Lcoil/util/FileDescriptorCounter;->INSTANCE:Lcoil/util/FileDescriptorCounter;

    .line 75
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcoil/util/FileDescriptorCounter;->fileDescriptorList:Ljava/io/File;

    const/16 v0, 0x1e

    .line 76
    sput v0, Lcoil/util/FileDescriptorCounter;->decodesSinceLastFileDescriptorCheck:I

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcoil/util/FileDescriptorCounter;->lastFileDescriptorCheckTimestamp:J

    const/4 v0, 0x1

    .line 78
    sput-boolean v0, Lcoil/util/FileDescriptorCounter;->hasAvailableFileDescriptors:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkFileDescriptors()Z
    .locals 6

    .line 102
    sget p0, Lcoil/util/FileDescriptorCounter;->decodesSinceLastFileDescriptorCheck:I

    add-int/lit8 v0, p0, 0x1

    sput v0, Lcoil/util/FileDescriptorCounter;->decodesSinceLastFileDescriptorCheck:I

    const/16 v0, 0x1e

    if-ge p0, v0, :cond_1

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcoil/util/FileDescriptorCounter;->lastFileDescriptorCheckTimestamp:J

    const/16 p0, 0x7530

    int-to-long v4, p0

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final declared-synchronized hasAvailableFileDescriptors(Lcoil/util/Logger;)Z
    .locals 5

    const-string v0, "Unable to allocate more hardware bitmaps. Number of used file descriptors: "

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-direct {p0}, Lcoil/util/FileDescriptorCounter;->checkFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 84
    sput v1, Lcoil/util/FileDescriptorCounter;->decodesSinceLastFileDescriptorCheck:I

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcoil/util/FileDescriptorCounter;->lastFileDescriptorCheckTimestamp:J

    .line 87
    sget-object v2, Lcoil/util/FileDescriptorCounter;->fileDescriptorList:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 216
    new-array v2, v1, [Ljava/lang/String;

    .line 87
    :cond_0
    array-length v2, v2

    const/16 v3, 0x320

    if-ge v2, v3, :cond_1

    const/4 v1, 0x1

    .line 88
    :cond_1
    sput-boolean v1, Lcoil/util/FileDescriptorCounter;->hasAvailableFileDescriptors:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 90
    const-string v1, "FileDescriptorCounter"

    .line 217
    invoke-interface {p1}, Lcoil/util/Logger;->getLevel()I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_2

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 218
    invoke-interface {p1, v1, v4, v0, v2}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    :cond_2
    sget-boolean p1, Lcoil/util/FileDescriptorCounter;->hasAvailableFileDescriptors:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
