.class public Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;
.super Ljava/lang/Object;
.source "SysfsLifetimeWriteInfoProvider.java"

# interfaces
.implements Lcom/android/car/storagemonitoring/LifetimeWriteInfoProvider;


# static fields
.field private static final DEFAULT_PATH:Ljava/lang/String; = "/sys/fs/"

.field private static final FILENAME:Ljava/lang/String; = "lifetime_write_kbytes"

.field private static final KNOWN_FILESYSTEMS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mWriteInfosPath:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-class v0, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;->TAG:Ljava/lang/String;

    .line 43
    const-string v0, "ext4"

    const-string v1, "f2fs"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;->KNOWN_FILESYSTEMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/fs/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;-><init>(Ljava/io/File;)V

    .line 53
    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "writeInfosPath"    # Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;->mWriteInfosPath:Ljava/io/File;

    .line 58
    return-void
.end method

.method public static synthetic lambda$nuOyF8hsWCsfSJ-JZlm84PkspOs(Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;Ljava/io/File;)Landroid/car/storagemonitoring/LifetimeWriteInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;->tryParse(Ljava/io/File;)Landroid/car/storagemonitoring/LifetimeWriteInfo;

    move-result-object p0

    return-object p0
.end method

.method private tryParse(Ljava/io/File;)Landroid/car/storagemonitoring/LifetimeWriteInfo;
    .locals 10
    .param p1, "dir"    # Ljava/io/File;

    .line 62
    new-instance v0, Ljava/io/File;

    const-string v1, "lifetime_write_kbytes"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .local v0, "writefile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 69
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    .local v1, "datalines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 74
    const-string v3, "unable to read valid write info from "

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 80
    .local v4, "data":Ljava/lang/String;
    const-wide/16 v5, 0x400

    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long/2addr v7, v5

    .line 81
    .local v7, "writtenBytes":J
    const-wide/16 v5, 0x0

    cmp-long v5, v7, v5

    if-gez v5, :cond_2

    .line 82
    sget-object v5, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file at location "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " contained a negative data amount "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ". Ignoring."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-object v2

    .line 86
    :cond_2
    new-instance v5, Landroid/car/storagemonitoring/LifetimeWriteInfo;

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v9, v7, v8}, Landroid/car/storagemonitoring/LifetimeWriteInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    return-object v5

    .line 91
    .end local v7    # "writtenBytes":J
    :catch_0
    move-exception v5

    .line 92
    .local v5, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    return-object v2

    .line 75
    .end local v4    # "data":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :goto_0
    sget-object v4, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v2

    .line 70
    .end local v1    # "datalines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    .line 71
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to read write info from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    return-object v2

    .line 64
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    :goto_1
    sget-object v1, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not a valid source of lifetime writes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-object v2
.end method


# virtual methods
.method public load()[Landroid/car/storagemonitoring/LifetimeWriteInfo;
    .locals 11

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "writeInfos":Ljava/util/List;, "Ljava/util/List<Landroid/car/storagemonitoring/LifetimeWriteInfo;>;"
    sget-object v1, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;->KNOWN_FILESYSTEMS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 103
    .local v5, "fstype":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;->mWriteInfosPath:Ljava/io/File;

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v6, "fspath":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    sget-object v7, Lcom/android/car/storagemonitoring/-$$Lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg;->INSTANCE:Lcom/android/car/storagemonitoring/-$$Lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg;

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v7

    .line 106
    .local v7, "files":[Ljava/io/File;
    if-nez v7, :cond_1

    .line 107
    sget-object v8, Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "there are no directories at location "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    goto :goto_1

    .line 110
    :cond_1
    invoke-static {v7}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/android/car/storagemonitoring/-$$Lambda$SysfsLifetimeWriteInfoProvider$nuOyF8hsWCsfSJ-JZlm84PkspOs;

    invoke-direct {v9, p0}, Lcom/android/car/storagemonitoring/-$$Lambda$SysfsLifetimeWriteInfoProvider$nuOyF8hsWCsfSJ-JZlm84PkspOs;-><init>(Lcom/android/car/storagemonitoring/SysfsLifetimeWriteInfoProvider;)V

    .line 111
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v8

    sget-object v9, Lcom/android/car/storagemonitoring/-$$Lambda$aO5UVK-KB6f5le1IcqRmf5rrPZs;->INSTANCE:Lcom/android/car/storagemonitoring/-$$Lambda$aO5UVK-KB6f5le1IcqRmf5rrPZs;

    .line 112
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v8

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/android/car/storagemonitoring/-$$Lambda$LstD_2z5GcY5aUyJTlDFH9mLppY;

    invoke-direct {v9, v0}, Lcom/android/car/storagemonitoring/-$$Lambda$LstD_2z5GcY5aUyJTlDFH9mLppY;-><init>(Ljava/util/List;)V

    .line 113
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 102
    .end local v5    # "fstype":Ljava/lang/String;
    .end local v6    # "fspath":Ljava/io/File;
    .end local v7    # "files":[Ljava/io/File;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    :cond_3
    new-array v1, v3, [Landroid/car/storagemonitoring/LifetimeWriteInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/car/storagemonitoring/LifetimeWriteInfo;

    return-object v1
.end method
