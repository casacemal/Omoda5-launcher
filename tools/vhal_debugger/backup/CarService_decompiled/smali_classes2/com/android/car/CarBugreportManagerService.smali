.class public Lcom/android/car/CarBugreportManagerService;
.super Landroid/car/ICarBugreportService$Stub;
.source "CarBugreportManagerService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# static fields
.field private static final BEGIN_PREFIX:Ljava/lang/String; = "BEGIN:"

.field private static final BUGREPORTD_SERVICE:Ljava/lang/String; = "car-bugreportd"

.field private static final BUGREPORT_EXTRA_OUTPUT_SOCKET:Ljava/lang/String; = "car_br_extra_output_socket"

.field private static final BUGREPORT_OUTPUT_SOCKET:Ljava/lang/String; = "car_br_output_socket"

.field private static final BUGREPORT_PROGRESS_SOCKET:Ljava/lang/String; = "car_br_progress_socket"

.field private static final FAIL_PREFIX:Ljava/lang/String; = "FAIL:"

.field private static final OK_PREFIX:Ljava/lang/String; = "OK:"

.field private static final PROGRESS_PREFIX:Ljava/lang/String; = "PROGRESS:"

.field private static final SOCKET_CONNECTION_MAX_RETRY:I = 0xa

.field private static final SOCKET_CONNECTION_RETRY_DELAY_IN_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "CarBugreportMgrService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsServiceRunning:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 256
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Landroid/car/ICarBugreportService$Stub;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarBugreportManagerService;->mLock:Ljava/lang/Object;

    .line 96
    iput-object p1, p0, Lcom/android/car/CarBugreportManagerService;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method private connectSocket(Ljava/lang/String;)Landroid/net/LocalSocket;
    .locals 6
    .param p1, "socketName"    # Ljava/lang/String;

    .line 299
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 303
    .local v0, "socket":Landroid/net/LocalSocket;
    const/4 v1, 0x0

    .line 313
    .local v1, "retryCount":I
    :goto_0
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 315
    :try_start_0
    new-instance v2, Landroid/net/LocalSocketAddress;

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, p1, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    return-object v0

    .line 318
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Ljava/io/IOException;
    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0xa

    const-string v4, "CarBugreportMgrService"

    if-lt v1, v3, :cond_0

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to connect to dumpstate socket "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " after "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " retries"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    const/4 v3, 0x0

    return-object v3

    .line 324
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to connect to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Will try again "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private copySocketToPfd(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/car/ICarBugreportCallback;)Z
    .locals 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "remoteSocket"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/car/ICarBugreportCallback;

    .line 264
    invoke-direct {p0, p2}, Lcom/android/car/CarBugreportManagerService;->connectSocket(Ljava/lang/String;)Landroid/net/LocalSocket;

    move-result-object v0

    .line 265
    .local v0, "localSocket":Landroid/net/LocalSocket;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 266
    const/4 v2, 0x3

    invoke-direct {p0, p3, v2}, Lcom/android/car/CarBugreportManagerService;->reportError(Landroid/car/ICarBugreportCallback;I)V

    .line 267
    return v1

    .line 271
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .local v3, "in":Ljava/io/DataInputStream;
    nop

    .line 272
    :try_start_1
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v5, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 270
    .local v4, "out":Ljava/io/DataOutputStream;
    nop

    .line 275
    :try_start_2
    invoke-static {v4, v3}, Lcom/android/car/CarBugreportManagerService;->rawCopyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    const/4 v5, 0x0

    :try_start_3
    invoke-static {v5, v4}, Lcom/android/car/CarBugreportManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v4    # "out":Ljava/io/DataOutputStream;
    :try_start_4
    invoke-static {v5, v3}, Lcom/android/car/CarBugreportManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 280
    .end local v3    # "in":Ljava/io/DataInputStream;
    nop

    .line 281
    return v2

    .line 270
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v5

    .end local v0    # "localSocket":Landroid/net/LocalSocket;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .end local p0    # "this":Lcom/android/car/CarBugreportManagerService;
    .end local p1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "remoteSocket":Ljava/lang/String;
    .end local p3    # "callback":Landroid/car/ICarBugreportCallback;
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 276
    .restart local v0    # "localSocket":Landroid/net/LocalSocket;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    .restart local p0    # "this":Lcom/android/car/CarBugreportManagerService;
    .restart local p1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "remoteSocket":Ljava/lang/String;
    .restart local p3    # "callback":Landroid/car/ICarBugreportCallback;
    :catchall_1
    move-exception v6

    :try_start_6
    invoke-static {v5, v4}, Lcom/android/car/CarBugreportManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "localSocket":Landroid/net/LocalSocket;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/car/CarBugreportManagerService;
    .end local p1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "remoteSocket":Ljava/lang/String;
    .end local p3    # "callback":Landroid/car/ICarBugreportCallback;
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 270
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v0    # "localSocket":Landroid/net/LocalSocket;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/car/CarBugreportManagerService;
    .restart local p1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "remoteSocket":Ljava/lang/String;
    .restart local p3    # "callback":Landroid/car/ICarBugreportCallback;
    :catchall_2
    move-exception v4

    .end local v0    # "localSocket":Landroid/net/LocalSocket;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/car/CarBugreportManagerService;
    .end local p1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "remoteSocket":Ljava/lang/String;
    .end local p3    # "callback":Landroid/car/ICarBugreportCallback;
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 276
    .restart local v0    # "localSocket":Landroid/net/LocalSocket;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/car/CarBugreportManagerService;
    .restart local p1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "remoteSocket":Ljava/lang/String;
    .restart local p3    # "callback":Landroid/car/ICarBugreportCallback;
    :catchall_3
    move-exception v5

    :try_start_8
    invoke-static {v4, v3}, Lcom/android/car/CarBugreportManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "localSocket":Landroid/net/LocalSocket;
    .end local p0    # "this":Lcom/android/car/CarBugreportManagerService;
    .end local p1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "remoteSocket":Ljava/lang/String;
    .end local p3    # "callback":Landroid/car/ICarBugreportCallback;
    throw v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "localSocket":Landroid/net/LocalSocket;
    .restart local p0    # "this":Lcom/android/car/CarBugreportManagerService;
    .restart local p1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "remoteSocket":Ljava/lang/String;
    .restart local p3    # "callback":Landroid/car/ICarBugreportCallback;
    :catch_0
    move-exception v3

    .line 277
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "CarBugreportMgrService"

    const-string v5, "Failed to grab dump state from car_br_output_socket"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    invoke-direct {p0, p3, v2}, Lcom/android/car/CarBugreportManagerService;->reportError(Landroid/car/ICarBugreportCallback;I)V

    .line 279
    return v1
.end method

.method private handleFinished(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/ICarBugreportCallback;)V
    .locals 3
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "extraOutput"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/car/ICarBugreportCallback;

    .line 205
    const-string v0, "CarBugreportMgrService"

    const-string v1, "Finished reading bugreport"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v1, "car_br_output_socket"

    invoke-direct {p0, p1, v1, p3}, Lcom/android/car/CarBugreportManagerService;->copySocketToPfd(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/car/ICarBugreportCallback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    const-string v1, "car_br_extra_output_socket"

    invoke-direct {p0, p2, v1, p3}, Lcom/android/car/CarBugreportManagerService;->copySocketToPfd(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/car/ICarBugreportCallback;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    return-void

    .line 214
    :cond_1
    :try_start_0
    invoke-interface {p3}, Landroid/car/ICarBugreportCallback;->onFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to call onFinished callback"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private handleProgress(Ljava/lang/String;Landroid/car/ICarBugreportCallback;)V
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/car/ICarBugreportCallback;

    .line 177
    const-string v0, "PROGRESS:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "progressOverTotal":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const-string v3, "CarBugreportMgrService"

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid progress line from bugreportz: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void

    .line 186
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 187
    .local v2, "progress":F
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    .local v4, "total":F
    nop

    .line 192
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_1

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid progress total value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 197
    :cond_1
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v2

    div-float/2addr v5, v4

    :try_start_1
    invoke-interface {p2, v5}, Landroid/car/ICarBugreportCallback;->onProgress(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    goto :goto_0

    .line 198
    :catch_0
    move-exception v5

    .line 199
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "Failed to call onProgress callback"

    invoke-static {v3, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 188
    .end local v2    # "progress":F
    .end local v4    # "total":F
    :catch_1
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid progress value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    return-void
.end method

.method private processBugreportSockets(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/ICarBugreportCallback;)V
    .locals 10
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "extraOutput"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/car/ICarBugreportCallback;

    .line 230
    const-string v0, "FAIL:"

    const-string v1, "CarBugreportMgrService"

    const-string v2, "car_br_progress_socket"

    invoke-direct {p0, v2}, Lcom/android/car/CarBugreportManagerService;->connectSocket(Ljava/lang/String;)Landroid/net/LocalSocket;

    move-result-object v2

    .line 231
    .local v2, "localSocket":Landroid/net/LocalSocket;
    const/4 v3, 0x3

    if-nez v2, :cond_0

    .line 232
    invoke-direct {p0, p3, v3}, Lcom/android/car/CarBugreportManagerService;->reportError(Landroid/car/ICarBugreportCallback;I)V

    .line 233
    return-void

    .line 236
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 237
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 239
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    const/4 v8, 0x1

    if-eqz v6, :cond_5

    .line 240
    const-string v6, "PROGRESS:"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 241
    invoke-direct {p0, v7, p3}, Lcom/android/car/CarBugreportManagerService;->handleProgress(Ljava/lang/String;Landroid/car/ICarBugreportCallback;)V

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 243
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "errorMessage":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to dumpstate: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0, p3, v8}, Lcom/android/car/CarBugreportManagerService;->reportError(Landroid/car/ICarBugreportCallback;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :try_start_2
    invoke-static {v5, v4}, Lcom/android/car/CarBugreportManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 246
    return-void

    .line 247
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v6, "OK:"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 248
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/CarBugreportManagerService;->handleFinished(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/ICarBugreportCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    :try_start_4
    invoke-static {v5, v4}, Lcom/android/car/CarBugreportManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 249
    return-void

    .line 250
    :cond_4
    :try_start_5
    const-string v6, "BEGIN:"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 251
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received unknown progress line from dumpstate: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :cond_5
    const-string v0, "dumpstate progress unexpectedly ended"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-direct {p0, p3, v8}, Lcom/android/car/CarBugreportManagerService;->reportError(Landroid/car/ICarBugreportCallback;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 256
    .end local v7    # "line":Ljava/lang/String;
    :try_start_6
    invoke-static {v5, v4}, Lcom/android/car/CarBugreportManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 259
    .end local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 236
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    .end local v2    # "localSocket":Landroid/net/LocalSocket;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local p0    # "this":Lcom/android/car/CarBugreportManagerService;
    .end local p1    # "output":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "extraOutput":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "callback":Landroid/car/ICarBugreportCallback;
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 256
    .restart local v2    # "localSocket":Landroid/net/LocalSocket;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/android/car/CarBugreportManagerService;
    .restart local p1    # "output":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "extraOutput":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "callback":Landroid/car/ICarBugreportCallback;
    :catchall_1
    move-exception v5

    :try_start_8
    invoke-static {v0, v4}, Lcom/android/car/CarBugreportManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v2    # "localSocket":Landroid/net/LocalSocket;
    .end local p0    # "this":Lcom/android/car/CarBugreportManagerService;
    .end local p1    # "output":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "extraOutput":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "callback":Landroid/car/ICarBugreportCallback;
    throw v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "localSocket":Landroid/net/LocalSocket;
    .restart local p0    # "this":Lcom/android/car/CarBugreportManagerService;
    .restart local p1    # "output":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "extraOutput":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "callback":Landroid/car/ICarBugreportCallback;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Failed to read from progress socket"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    invoke-direct {p0, p3, v3}, Lcom/android/car/CarBugreportManagerService;->reportError(Landroid/car/ICarBugreportCallback;I)V

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static rawCopyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 4
    .param p0, "writer"    # Ljava/io/OutputStream;
    .param p1, "reader"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 334
    .local v0, "buf":[B
    :goto_0
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    move v3, v1

    .local v3, "read":I
    if-lez v1, :cond_0

    .line 335
    invoke-virtual {p0, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 337
    :cond_0
    return-void
.end method

.method private reportError(Landroid/car/ICarBugreportCallback;I)V
    .locals 3
    .param p1, "callback"    # Landroid/car/ICarBugreportCallback;
    .param p2, "errorCode"    # I

    .line 286
    :try_start_0
    invoke-interface {p1, p2}, Landroid/car/ICarBugreportCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarBugreportMgrService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private requestBugReportLocked(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/ICarBugreportCallback;)V
    .locals 2
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "extraOutput"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/car/ICarBugreportCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 151
    iget-boolean v0, p0, Lcom/android/car/CarBugreportManagerService;->mIsServiceRunning:Z

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "CarBugreportMgrService"

    const-string v1, "Bugreport Service already running"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x2

    invoke-direct {p0, p3, v0}, Lcom/android/car/CarBugreportManagerService;->reportError(Landroid/car/ICarBugreportCallback;I)V

    .line 154
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/CarBugreportManagerService;->mIsServiceRunning:Z

    .line 157
    iget-object v0, p0, Lcom/android/car/CarBugreportManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/-$$Lambda$CarBugreportManagerService$AG6L1uBySyDSdAjmnFy5_-H9Ci0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/car/-$$Lambda$CarBugreportManagerService$AG6L1uBySyDSdAjmnFy5_-H9Ci0;-><init>(Lcom/android/car/CarBugreportManagerService;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/ICarBugreportCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method

.method private startBugreportd(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/ICarBugreportCallback;)V
    .locals 3
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "extraOutput"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/car/ICarBugreportCallback;

    .line 162
    const-string v0, "CarBugreportMgrService"

    const-string v1, "Starting car-bugreportd"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_start_0
    const-string v0, "ctl.start"

    const-string v1, "car-bugreportd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    nop

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/CarBugreportManagerService;->processBugreportSockets(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/ICarBugreportCallback;)V

    .line 171
    iget-object v0, p0, Lcom/android/car/CarBugreportManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/android/car/CarBugreportManagerService;->mIsServiceRunning:Z

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CarBugreportMgrService"

    const-string v2, "Failed to start car-bugreportd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    const/4 v1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/android/car/CarBugreportManagerService;->reportError(Landroid/car/ICarBugreportCallback;I)V

    .line 168
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 295
    return-void
.end method

.method public init()V
    .locals 2

    .line 101
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CarBugreportMgrService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/CarBugreportManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 102
    iget-object v0, p0, Lcom/android/car/CarBugreportManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/CarBugreportManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/CarBugreportManagerService;->mHandler:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method public synthetic lambda$requestBugReportLocked$0$CarBugreportManagerService(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/ICarBugreportCallback;)V
    .locals 0
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "extraOutput"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/car/ICarBugreportCallback;

    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/CarBugreportManagerService;->startBugreportd(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/ICarBugreportCallback;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/car/CarBugreportManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 109
    return-void
.end method

.method public requestBugreport(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/ICarBugreportCallback;)V
    .locals 9
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "extraOutput"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/car/ICarBugreportCallback;

    .line 117
    iget-object v0, p0, Lcom/android/car/CarBugreportManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "requestZippedBugreport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/car/CarBugreportManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 121
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 122
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v2

    if-nez v2, :cond_3

    .line 127
    iget-object v2, p0, Lcom/android/car/CarBugreportManagerService;->mContext:Landroid/content/Context;

    const v3, 0x7f0f010c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "defaultAppPkgName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "packageNamesForCallerUid":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 130
    .local v4, "found":Z
    if-eqz v3, :cond_1

    .line 131
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 132
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 133
    const/4 v4, 0x1

    .line 134
    goto :goto_1

    .line 131
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 138
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 143
    iget-object v5, p0, Lcom/android/car/CarBugreportManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 144
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/CarBugreportManagerService;->requestBugReportLocked(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/ICarBugreportCallback;)V

    .line 145
    monitor-exit v5

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 139
    :cond_2
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not a designated bugreport app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 123
    .end local v2    # "defaultAppPkgName":Ljava/lang/String;
    .end local v3    # "packageNamesForCallerUid":[Ljava/lang/String;
    .end local v4    # "found":Z
    :cond_3
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not have the right signature"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
