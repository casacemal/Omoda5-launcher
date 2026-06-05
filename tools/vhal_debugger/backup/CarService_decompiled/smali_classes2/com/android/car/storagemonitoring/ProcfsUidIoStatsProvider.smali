.class public Lcom/android/car/storagemonitoring/ProcfsUidIoStatsProvider;
.super Ljava/lang/Object;
.source "ProcfsUidIoStatsProvider.java"

# interfaces
.implements Lcom/android/car/storagemonitoring/UidIoStatsProvider;


# static fields
.field private static DEFAULT_STATS_FILE:Ljava/nio/file/Path;


# instance fields
.field private final mStatsFile:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/uid_io/stats"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lcom/android/car/storagemonitoring/ProcfsUidIoStatsProvider;->DEFAULT_STATS_FILE:Ljava/nio/file/Path;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    sget-object v0, Lcom/android/car/storagemonitoring/ProcfsUidIoStatsProvider;->DEFAULT_STATS_FILE:Ljava/nio/file/Path;

    invoke-direct {p0, v0}, Lcom/android/car/storagemonitoring/ProcfsUidIoStatsProvider;-><init>(Ljava/nio/file/Path;)V

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "statsFile"    # Ljava/nio/file/Path;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    iput-object v0, p0, Lcom/android/car/storagemonitoring/ProcfsUidIoStatsProvider;->mStatsFile:Ljava/nio/file/Path;

    .line 49
    return-void
.end method


# virtual methods
.method public load()Landroid/util/SparseArray;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/car/storagemonitoring/UidIoRecord;",
            ">;"
        }
    .end annotation

    .line 55
    move-object/from16 v1, p0

    const-string v2, "CAR.STORAGE"

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v3, v0

    .line 57
    .local v3, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/car/storagemonitoring/UidIoRecord;>;"
    const/4 v4, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/car/storagemonitoring/ProcfsUidIoStatsProvider;->mStatsFile:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v0

    .line 61
    .local v5, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 63
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 64
    .local v6, "line":Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 65
    .local v7, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    const/16 v9, 0xb

    const-string v10, "malformed I/O stats entry: "

    if-eq v8, v9, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-object v4

    .line 71
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 72
    .local v8, "uid":I
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 73
    .local v13, "foreground_rchar":J
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 74
    .local v15, "foreground_wchar":J
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 75
    .local v17, "foreground_read_bytes":J
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 76
    .local v19, "foreground_write_bytes":J
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 77
    .local v23, "background_rchar":J
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 78
    .local v25, "background_wchar":J
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .line 79
    .local v27, "background_read_bytes":J
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    .line 80
    .local v29, "background_write_bytes":J
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 81
    .local v21, "foreground_fsync":J
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    .line 83
    .local v31, "background_fsync":J
    new-instance v9, Landroid/car/storagemonitoring/UidIoRecord;

    move-object v11, v9

    move v12, v8

    invoke-direct/range {v11 .. v32}, Landroid/car/storagemonitoring/UidIoRecord;-><init>(IJJJJJJJJJJ)V

    invoke-virtual {v3, v8, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .end local v8    # "uid":I
    .end local v13    # "foreground_rchar":J
    .end local v15    # "foreground_wchar":J
    .end local v17    # "foreground_read_bytes":J
    .end local v19    # "foreground_write_bytes":J
    .end local v21    # "foreground_fsync":J
    .end local v23    # "background_rchar":J
    .end local v25    # "background_wchar":J
    .end local v27    # "background_read_bytes":J
    .end local v29    # "background_write_bytes":J
    .end local v31    # "background_fsync":J
    nop

    .line 99
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "tokenizer":Ljava/util/StringTokenizer;
    goto/16 :goto_0

    .line 95
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "tokenizer":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    return-object v4

    .line 101
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_1
    return-object v3

    .line 58
    .end local v5    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t read I/O stats from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/car/storagemonitoring/ProcfsUidIoStatsProvider;->mStatsFile:Ljava/nio/file/Path;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    return-object v4
.end method
