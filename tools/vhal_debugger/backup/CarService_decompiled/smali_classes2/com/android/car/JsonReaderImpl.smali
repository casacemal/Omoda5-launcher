.class public Lcom/android/car/JsonReaderImpl;
.super Ljava/lang/Object;
.source "JsonReaderImpl.java"

# interfaces
.implements Lcom/android/car/CarConfigurationService$JsonReader;


# static fields
.field private static final BUF_SIZE:I = 0x1000

.field private static final JSON_FILE_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jsonFileToString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 51
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .local v1, "reader":Ljava/io/Reader;
    const/16 v2, 0x1000

    :try_start_1
    new-array v2, v2, [C

    .line 53
    .local v2, "buffer":[C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    move v5, v4

    .local v5, "bufferedContent":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 57
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    return-object v4

    .line 51
    .end local v2    # "buffer":[C
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "bufferedContent":I
    :catchall_0
    move-exception v2

    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "reader":Ljava/io/Reader;
    .end local p0    # "this":Lcom/android/car/JsonReaderImpl;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resId":I
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "reader":Ljava/io/Reader;
    .restart local p0    # "this":Lcom/android/car/JsonReaderImpl;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "resId":I
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "is":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/android/car/JsonReaderImpl;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resId":I
    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "reader":Ljava/io/Reader;
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/car/JsonReaderImpl;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "resId":I
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method
