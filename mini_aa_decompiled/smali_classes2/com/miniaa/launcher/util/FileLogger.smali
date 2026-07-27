.class public final Lcom/miniaa/launcher/util/FileLogger;
.super Ljava/lang/Object;
.source "FileLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0006\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0018\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0007H\u0002J\u0016\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0016\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0016\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aJ\"\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 J \u0010!\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0008\u0010#\u001a\u00020\u0013H\u0002J\u0006\u0010$\u001a\u00020\u0013J\u0006\u0010%\u001a\u00020\u001aR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00060\u0010j\u0002`\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/miniaa/launcher/util/FileLogger;",
        "",
        "<init>",
        "()V",
        "writer",
        "Ljava/io/PrintWriter;",
        "logFile",
        "Ljava/io/File;",
        "dateFormat",
        "Ljava/text/SimpleDateFormat;",
        "MAX_SIZE",
        "",
        "FLUSH_INTERVAL",
        "",
        "lastFlushTime",
        "buffer",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
        "migrateOldLogs",
        "newDir",
        "d",
        "tag",
        "",
        "message",
        "i",
        "w",
        "e",
        "throwable",
        "",
        "log",
        "level",
        "forceFlush",
        "flush",
        "getLogPath",
        "app_systemRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field private static final FLUSH_INTERVAL:J = 0x7530L

.field public static final INSTANCE:Lcom/miniaa/launcher/util/FileLogger;

.field private static final MAX_SIZE:I = 0x200000

.field private static final buffer:Ljava/lang/StringBuilder;

.field private static final dateFormat:Ljava/text/SimpleDateFormat;

.field private static lastFlushTime:J

.field private static logFile:Ljava/io/File;

.field private static writer:Ljava/io/PrintWriter;


# direct methods
.method public static synthetic $r8$lambda$-8UWQCptRyo63TNt0g5nj5NxhHk(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miniaa/launcher/util/FileLogger;->init$lambda$0(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p270FdzN0G_Q7t4nsD-megEUdDA()V
    .locals 0

    invoke-static {}, Lcom/miniaa/launcher/util/FileLogger;->init$lambda$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miniaa/launcher/util/FileLogger;

    invoke-direct {v0}, Lcom/miniaa/launcher/util/FileLogger;-><init>()V

    sput-object v0, Lcom/miniaa/launcher/util/FileLogger;->INSTANCE:Lcom/miniaa/launcher/util/FileLogger;

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/miniaa/launcher/util/FileLogger;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/miniaa/launcher/util/FileLogger;->buffer:Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    sput v0, Lcom/miniaa/launcher/util/FileLogger;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e$default(Lcom/miniaa/launcher/util/FileLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 140
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miniaa/launcher/util/FileLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final forceFlush()V
    .locals 2

    .line 168
    :try_start_0
    sget-object p0, Lcom/miniaa/launcher/util/FileLogger;->buffer:Ljava/lang/StringBuilder;

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :try_start_1
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 170
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {p0}, Lkotlin/text/StringsKt;->clear(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    :try_start_4
    monitor-exit p0

    .line 173
    sget-object p0, Lcom/miniaa/launcher/util/FileLogger;->writer:Ljava/io/PrintWriter;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    :cond_1
    sget-object p0, Lcom/miniaa/launcher/util/FileLogger;->writer:Ljava/io/PrintWriter;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 175
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miniaa/launcher/util/FileLogger;->lastFlushTime:J

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 168
    monitor-exit p0

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private static final init$lambda$0(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 74
    sget-object v0, Lcom/miniaa/launcher/util/FileLogger;->INSTANCE:Lcom/miniaa/launcher/util/FileLogger;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Uncaught exception on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CRASH"

    invoke-virtual {v0, v2, v1, p2}, Lcom/miniaa/launcher/util/FileLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    invoke-direct {v0}, Lcom/miniaa/launcher/util/FileLogger;->forceFlush()V

    if-eqz p0, :cond_0

    .line 76
    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static final init$lambda$1()V
    .locals 2

    :goto_0
    const-wide/16 v0, 0x7530

    .line 83
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 84
    sget-object v0, Lcom/miniaa/launcher/util/FileLogger;->INSTANCE:Lcom/miniaa/launcher/util/FileLogger;

    invoke-direct {v0}, Lcom/miniaa/launcher/util/FileLogger;->forceFlush()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void
.end method

.method private final log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 152
    :try_start_0
    sget-object v0, Lcom/miniaa/launcher/util/FileLogger;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 153
    sget-object v1, Lcom/miniaa/launcher/util/FileLogger;->buffer:Ljava/lang/StringBuilder;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :try_start_2
    monitor-exit v1

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    const/16 v0, 0x1000

    if-gt p3, v0, :cond_0

    sget-wide v0, Lcom/miniaa/launcher/util/FileLogger;->lastFlushTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7530

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/miniaa/launcher/util/FileLogger;->forceFlush()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 153
    monitor-exit v1

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private final migrateOldLogs(Landroid/content/Context;Ljava/io/File;)V
    .locals 7

    .line 98
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "logs/miniaa_logs.txt"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v0, "miniaa_logs_migrated.txt"

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 102
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 103
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "logs/miniaa_logs_prev.txt"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 110
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 112
    const-string v0, "miniaa_logs.txt"

    .line 108
    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 116
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string p1, "miniaa_logs_old.txt"

    invoke-direct {v2, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 117
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 119
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    const-string v0, "miniaa_logs_prev.txt"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 120
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    const-string p2, "miniaa_diagnostics.txt"

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    const-string v0, "D"

    invoke-direct {p0, v0, p1, p2}, Lcom/miniaa/launcher/util/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    const-string v0, "E"

    invoke-direct {p0, v0, p1, p2}, Lcom/miniaa/launcher/util/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 143
    sget-object p0, Lcom/miniaa/launcher/util/FileLogger;->buffer:Ljava/lang/StringBuilder;

    monitor-enter p0

    .line 144
    :try_start_0
    invoke-static {p3}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 147
    :cond_0
    :goto_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final flush()V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/miniaa/launcher/util/FileLogger;->forceFlush()V

    return-void
.end method

.method public final getLogPath()Ljava/lang/String;
    .locals 0

    .line 181
    sget-object p0, Lcom/miniaa/launcher/util/FileLogger;->logFile:Ljava/io/File;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "Not initialized"

    :cond_1
    return-object p0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    const-string v0, "I"

    invoke-direct {p0, v0, p1, p2}, Lcom/miniaa/launcher/util/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 10

    const-string v0, "miniaa_logs.txt"

    const-string v1, "FileLogger"

    const-string v2, "=== Logger started === File: "

    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 34
    :try_start_0
    new-instance v5, Ljava/io/File;

    .line 36
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 35
    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 38
    const-string v7, "mini-aa"

    .line 34
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 43
    invoke-direct {p0, p1, v5}, Lcom/miniaa/launcher/util/FileLogger;->migrateOldLogs(Landroid/content/Context;Ljava/io/File;)V

    .line 45
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v6, Lcom/miniaa/launcher/util/FileLogger;->logFile:Ljava/io/File;

    .line 48
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/miniaa/launcher/util/FileLogger;->logFile:Ljava/io/File;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x200000

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 49
    new-instance v6, Ljava/io/File;

    const-string v7, "miniaa_logs_prev.txt"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 51
    sget-object v7, Lcom/miniaa/launcher/util/FileLogger;->logFile:Ljava/io/File;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 52
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v6, Lcom/miniaa/launcher/util/FileLogger;->logFile:Ljava/io/File;

    .line 55
    :cond_0
    new-instance v5, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/FileWriter;

    sget-object v7, Lcom/miniaa/launcher/util/FileLogger;->logFile:Ljava/io/File;

    invoke-direct {v6, v7, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    check-cast v6, Ljava/io/Writer;

    invoke-direct {v5, v6, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    sput-object v5, Lcom/miniaa/launcher/util/FileLogger;->writer:Ljava/io/PrintWriter;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/miniaa/launcher/util/FileLogger;->lastFlushTime:J

    .line 57
    sget-object v5, Lcom/miniaa/launcher/util/FileLogger;->logFile:Ljava/io/File;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/miniaa/launcher/util/FileLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v5, "logs"

    invoke-direct {v2, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 63
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object p1, Lcom/miniaa/launcher/util/FileLogger;->logFile:Ljava/io/File;

    .line 64
    new-instance p1, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/FileWriter;

    sget-object v2, Lcom/miniaa/launcher/util/FileLogger;->logFile:Ljava/io/File;

    invoke-direct {v0, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    check-cast v0, Ljava/io/Writer;

    invoke-direct {p1, v0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    sput-object p1, Lcom/miniaa/launcher/util/FileLogger;->writer:Ljava/io/PrintWriter;

    .line 65
    const-string p1, "=== Logger started (internal fallback) ==="

    invoke-virtual {p0, v1, p1}, Lcom/miniaa/launcher/util/FileLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 67
    const-string p1, "Failed to init file logger"

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    .line 73
    new-instance p1, Lcom/miniaa/launcher/util/FileLogger$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miniaa/launcher/util/FileLogger$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 80
    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lcom/miniaa/launcher/util/FileLogger$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/miniaa/launcher/util/FileLogger$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 90
    invoke-virtual {p0, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 91
    const-string p1, "FileLogger-flush"

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    const-string v0, "W"

    invoke-direct {p0, v0, p1, p2}, Lcom/miniaa/launcher/util/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
