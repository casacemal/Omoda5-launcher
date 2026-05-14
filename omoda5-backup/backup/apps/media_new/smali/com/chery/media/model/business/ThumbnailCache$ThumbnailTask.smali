.class Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/ThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private abort:Z

.field final synthetic this$0:Lcom/chery/media/model/business/ThumbnailCache;

.field private thumbnailRequest:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;


# direct methods
.method public constructor <init>(Lcom/chery/media/model/business/ThumbnailCache;Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->this$0:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->abort:Z

    .line 133
    iput-object p2, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->thumbnailRequest:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;)Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->thumbnailRequest:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    return-object p0
.end method

.method static synthetic access$102(Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->abort:Z

    return p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 9

    .line 138
    iget-boolean p1, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->abort:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->this$0:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-static {p1}, Lcom/chery/media/model/business/ThumbnailCache;->access$200(Lcom/chery/media/model/business/ThumbnailCache;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 145
    iget-object p1, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->this$0:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-static {p1}, Lcom/chery/media/model/business/ThumbnailCache;->access$300(Lcom/chery/media/model/business/ThumbnailCache;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->thumbnailRequest:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    iget-object v1, v1, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->path:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 146
    iget-object p1, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->this$0:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-static {p1}, Lcom/chery/media/model/business/ThumbnailCache;->access$300(Lcom/chery/media/model/business/ThumbnailCache;)Ljava/util/Map;

    move-result-object p1

    iget-object v3, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->thumbnailRequest:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    iget-object v3, v3, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->path:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 147
    iget-object v3, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->this$0:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-static {v3}, Lcom/chery/media/model/business/ThumbnailCache;->access$200(Lcom/chery/media/model/business/ThumbnailCache;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p1, :cond_1

    .line 148
    array-length v3, p1

    if-lez v3, :cond_1

    .line 149
    array-length v3, p1

    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto/16 :goto_1

    :cond_1
    move-object p1, v0

    goto/16 :goto_1

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->this$0:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-static {p1}, Lcom/chery/media/model/business/ThumbnailCache;->access$200(Lcom/chery/media/model/business/ThumbnailCache;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    invoke-static {}, Lcom/chery/media/model/business/ThumbnailClient;->getInstance()Lcom/chery/media/model/business/ThumbnailClient;

    move-result-object p1

    iget-object v3, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->thumbnailRequest:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    iget-object v3, v3, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/chery/media/model/business/ThumbnailClient;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 158
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 160
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 162
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 164
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    move-object v4, v0

    .line 167
    :goto_0
    iget-object v3, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->this$0:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-static {v3}, Lcom/chery/media/model/business/ThumbnailCache;->access$200(Lcom/chery/media/model/business/ThumbnailCache;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 168
    iget-object v3, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->this$0:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-static {v3}, Lcom/chery/media/model/business/ThumbnailCache;->access$300(Lcom/chery/media/model/business/ThumbnailCache;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->thumbnailRequest:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    iget-object v5, v5, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->path:Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 169
    array-length v3, v4

    if-lez v3, :cond_4

    .line 170
    iget-object v3, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->this$0:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-static {v3}, Lcom/chery/media/model/business/ThumbnailCache;->access$400(Lcom/chery/media/model/business/ThumbnailCache;)J

    move-result-wide v5

    array-length v4, v4

    int-to-long v7, v4

    add-long/2addr v5, v7

    invoke-static {v3, v5, v6}, Lcom/chery/media/model/business/ThumbnailCache;->access$402(Lcom/chery/media/model/business/ThumbnailCache;J)J

    .line 171
    invoke-static {}, Lcom/chery/media/model/business/ThumbnailCache;->access$500()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->this$0:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-static {v5}, Lcom/chery/media/model/business/ThumbnailCache;->access$600(Lcom/chery/media/model/business/ThumbnailCache;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->this$0:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-static {v2}, Lcom/chery/media/model/business/ThumbnailCache;->access$400(Lcom/chery/media/model/business/ThumbnailCache;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v2, "[key%s] cache mem size : %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_4
    iget-object v2, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->this$0:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-static {v2}, Lcom/chery/media/model/business/ThumbnailCache;->access$200(Lcom/chery/media/model/business/ThumbnailCache;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 176
    :goto_1
    iget-boolean v2, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->abort:Z

    if-eqz v2, :cond_5

    return-object v0

    :cond_5
    if-eqz p1, :cond_6

    .line 181
    iget-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->thumbnailRequest:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    iget-object v0, v0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->size:Landroid/util/Size;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->thumbnailRequest:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    iget-object v0, v0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->thumbnailRequest:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    iget-object v0, v0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-lez v0, :cond_6

    .line 182
    iget-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->thumbnailRequest:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    iget-object v0, v0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->thumbnailRequest:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->size:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {p1, v0, p0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 127
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 190
    iget-boolean v0, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->abort:Z

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->thumbnailRequest:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    iget-object v0, v0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->response:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->thumbnailRequest:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    iget-object v0, v0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->response:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;

    iget-object v1, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->thumbnailRequest:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;

    iget-object v1, v1, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->opt:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;->onThumbnailReady(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->this$0:Lcom/chery/media/model/business/ThumbnailCache;

    invoke-static {p1}, Lcom/chery/media/model/business/ThumbnailCache;->access$700(Lcom/chery/media/model/business/ThumbnailCache;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 127
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
