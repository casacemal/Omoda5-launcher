.class public Lcom/chery/media/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/util/Utils$SortField;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static hanyuPinyinOutputFormat:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-class v0, Lcom/chery/media/util/Utils;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/chery/media/util/Utils;->customSortCmpString(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static changeCarplayShow(Z)V
    .locals 4

    .line 621
    sget-object v0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCarplayShow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-static {}, Lcom/chery/media/app/MediaApplication;->getApplication()Lcom/chery/media/app/MediaApplication;

    move-result-object v0

    .line 623
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.yfve.car.carplay"

    const-string v3, "com.yfve.car.carplay.service.CarPlayService"

    .line 624
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.yfve.carplay.action.START"

    .line 625
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isShow"

    .line 626
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 627
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 54
    sget-object v0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const-string v4, "copyFile from %s to %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    sget-object p0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const-string v1, "check whether src file exists ..."

    invoke-static {p0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 60
    sget-object p0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const-string p1, "src file not exist!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 63
    :cond_0
    sget-object p0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const-string v1, "check whether src file is a normal file ..."

    invoke-static {p0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_1

    .line 65
    sget-object p0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const-string p1, "src is not a normal file!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 68
    :cond_1
    sget-object p0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const-string v1, "check whether src file can be read ..."

    invoke-static {p0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-nez p0, :cond_2

    .line 70
    sget-object p0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const-string p1, "src file can not read!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 73
    :cond_2
    sget-object p0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const-string v1, "check volume state of src file ..."

    invoke-static {p0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/chery/media/app/MediaApplication;->getApplication()Lcom/chery/media/app/MediaApplication;

    move-result-object p0

    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/chery/media/app/MediaApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 75
    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    const-string v4, "mounted"

    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "mounted_ro"

    if-nez v5, :cond_3

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 77
    sget-object p0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v2

    const-string v0, "volume state(%s) of src file not mounted!"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 81
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_4

    .line 84
    sget-object p0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const-string p1, "can not make dir for dest file!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 88
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    .line 90
    sget-object p0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const-string p1, "can not delete old dest file!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 103
    :cond_5
    sget-object p1, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const-string v5, "to open fis for src file ..."

    invoke-static {p1, v5}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 105
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 107
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v5, p1

    :goto_0
    if-nez v5, :cond_6

    .line 110
    sget-object v7, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const-string v8, "src file input stream is null!"

    invoke-static {v7, v8}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_6
    sget-object v7, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const-string v8, "to open fos for dest file ..."

    invoke-static {v7, v8}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v7

    goto :goto_1

    :catch_1
    move-exception v1

    .line 118
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    if-nez p1, :cond_7

    .line 121
    sget-object v1, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const-string v7, "dest file output stream is null!"

    invoke-static {v1, v7}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v5, :cond_b

    if-eqz p1, :cond_b

    const/high16 v1, 0x40000

    new-array v1, v1, [B

    .line 128
    :catch_2
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8

    .line 129
    sget-object p0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const-string v0, "from file not exists any more!!!"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 132
    :cond_8
    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v7

    .line 133
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 134
    sget-object p0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v7, v0, v2

    const-string v1, "volume state(%s) of src file not mounted any more!!!"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 139
    :cond_9
    :try_start_2
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    if-gtz v7, :cond_a

    move v2, v3

    goto :goto_3

    .line 150
    :cond_a
    :try_start_3
    invoke-virtual {p1, v1, v2, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    const-wide/16 v7, 0x1

    .line 156
    :try_start_4
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_3
    move-exception p0

    .line 152
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception p0

    .line 146
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_3
    if-eqz v5, :cond_c

    .line 164
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_5
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_4
    if-eqz p1, :cond_d

    .line 171
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    :catch_6
    move-exception p0

    .line 173
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 176
    :goto_5
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    :catch_7
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 181
    :goto_6
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_7

    :catch_8
    move-exception p0

    .line 183
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_7
    return v2
.end method

.method private static customSortCmpChar(CC)I
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 480
    :cond_0
    invoke-static {p0}, Lcom/chery/media/util/Utils;->isCharLetter(C)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    .line 481
    invoke-static {p1}, Lcom/chery/media/util/Utils;->isCharLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 485
    :cond_1
    invoke-static {p1}, Lcom/chery/media/util/Utils;->getHanyu(C)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 487
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2

    move v2, p0

    :cond_2
    return v2

    .line 493
    :cond_3
    invoke-static {p0}, Lcom/chery/media/util/Utils;->getHanyu(C)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    .line 495
    invoke-static {p1}, Lcom/chery/media/util/Utils;->isCharLetter(C)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 496
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_4

    move v3, p0

    :cond_4
    return v3

    .line 499
    :cond_5
    invoke-static {p1}, Lcom/chery/media/util/Utils;->getHanyu(C)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 501
    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_6
    return v2

    .line 506
    :cond_7
    invoke-static {p0}, Lcom/chery/media/util/Utils;->isCharNum(C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 507
    invoke-static {p1}, Lcom/chery/media/util/Utils;->isCharLetter(C)Z

    move-result v0

    if-eqz v0, :cond_8

    return v3

    .line 510
    :cond_8
    invoke-static {p1}, Lcom/chery/media/util/Utils;->getHanyu(C)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    return v3

    .line 514
    :cond_9
    invoke-static {p1}, Lcom/chery/media/util/Utils;->isCharNum(C)Z

    move-result v0

    if-eqz v0, :cond_a

    sub-int/2addr p0, p1

    return p0

    :cond_a
    return v2

    .line 520
    :cond_b
    invoke-static {p1}, Lcom/chery/media/util/Utils;->isCharLetter(C)Z

    move-result v0

    if-eqz v0, :cond_c

    return v3

    .line 523
    :cond_c
    invoke-static {p1}, Lcom/chery/media/util/Utils;->getHanyu(C)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    return v3

    .line 527
    :cond_d
    invoke-static {p1}, Lcom/chery/media/util/Utils;->isCharNum(C)Z

    move-result v0

    if-eqz v0, :cond_e

    return v3

    :cond_e
    sub-int/2addr p0, p1

    return p0
.end method

.method private static customSortCmpNumStr(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 539
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 543
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x30

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    goto :goto_2

    .line 545
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    if-nez v1, :cond_4

    goto :goto_3

    .line 546
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 547
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 548
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    sub-int p0, v0, v1

    :goto_4
    return p0

    .line 551
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private static customSortCmpString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .line 414
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 417
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_d

    if-ge v4, v2, :cond_d

    move v5, v1

    :goto_1
    add-int v6, v3, v5

    if-ge v6, v0, :cond_2

    add-int v7, v4, v5

    if-ge v7, v2, :cond_2

    .line 422
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/chery/media/util/Utils;->isCharLetter(C)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/chery/media/util/Utils;->isCharLetter(C)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v5, :cond_a

    move v5, v1

    :goto_3
    add-int v6, v3, v5

    if-ge v6, v0, :cond_4

    .line 431
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/chery/media/util/Utils;->isCharNum(C)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    move v7, v1

    :goto_5
    add-int v8, v4, v7

    if-ge v8, v2, :cond_6

    .line 437
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/chery/media/util/Utils;->isCharNum(C)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    if-lez v5, :cond_7

    if-lez v7, :cond_7

    .line 443
    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chery/media/util/Utils;->customSortCmpNumStr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_9

    return v3

    .line 451
    :cond_7
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v5, v6}, Lcom/chery/media/util/Utils;->customSortCmpChar(CC)I

    move-result v5

    if-eqz v5, :cond_8

    return v5

    :cond_8
    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v8, v4, 0x1

    :cond_9
    move v3, v6

    move v4, v8

    goto :goto_0

    .line 461
    :cond_a
    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v5, v4

    .line 462
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 463
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_c

    .line 465
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_b

    neg-int p0, v7

    :cond_b
    return p0

    :cond_c
    move v4, v5

    move v3, v6

    goto/16 :goto_0

    :cond_d
    sub-int/2addr v0, v3

    sub-int/2addr v2, v4

    sub-int/2addr v0, v2

    return v0
.end method

.method public static generateRandomList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 388
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 391
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 392
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0

    .line 389
    :cond_2
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getFileSizeString(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    .line 43
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "%dB"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v5, 0x100000

    cmp-long v2, p0, v5

    if-gez v2, :cond_1

    new-array v2, v4, [Ljava/lang/Object;

    .line 46
    div-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "%dKB"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-array v2, v4, [Ljava/lang/Object;

    .line 49
    div-long/2addr p0, v0

    div-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "%dM"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFolderSize(Ljava/lang/String;)J
    .locals 7

    .line 586
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    .line 587
    sget-object v0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "param %s invalid"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3

    .line 590
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 592
    sget-object v0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "%s is not a folder"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3

    .line 595
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 596
    sget-object v0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "%s not exist"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3

    .line 599
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 600
    array-length v0, p0

    if-nez v0, :cond_3

    goto :goto_3

    .line 604
    :cond_3
    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p0, v1

    .line 605
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 606
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chery/media/util/Utils;->getFolderSize(Ljava/lang/String;)J

    move-result-wide v5

    :goto_1
    add-long/2addr v3, v5

    goto :goto_2

    .line 608
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 609
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-wide v3
.end method

.method private static getHanyu(C)Ljava/lang/String;
    .locals 3

    .line 555
    sget-object v0, Lcom/chery/media/util/Utils;->hanyuPinyinOutputFormat:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v0}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    sput-object v0, Lcom/chery/media/util/Utils;->hanyuPinyinOutputFormat:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    .line 557
    sget-object v1, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    invoke-virtual {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setCaseType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;)V

    .line 558
    sget-object v0, Lcom/chery/media/util/Utils;->hanyuPinyinOutputFormat:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    sget-object v1, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITH_TONE_NUMBER:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    .line 559
    sget-object v0, Lcom/chery/media/util/Utils;->hanyuPinyinOutputFormat:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    sget-object v1, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setVCharType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;)V

    :cond_0
    const/4 v0, 0x0

    .line 563
    :try_start_0
    sget-object v1, Lcom/chery/media/util/Utils;->hanyuPinyinOutputFormat:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-static {p0, v1}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 565
    invoke-virtual {p0}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 567
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 568
    aget-object p0, p0, v1

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getTimeString(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x3e8

    .line 35
    div-long/2addr p0, v0

    const-wide/16 v0, 0x3c

    .line 36
    div-long v2, p0, v0

    .line 37
    rem-long/2addr p0, v0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v4, 0x3e7

    .line 38
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "%d:%02d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isCharLetter(C)Z
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCharNum(C)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readFromFile(Ljava/lang/String;)[B
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    .line 330
    invoke-static {p0, v0, v1, v2}, Lcom/chery/media/util/Utils;->readFromFile(Ljava/lang/String;JI)[B

    move-result-object p0

    return-object p0
.end method

.method public static readFromFile(Ljava/lang/String;JI)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 339
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 341
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    .line 349
    :cond_1
    :try_start_1
    invoke-virtual {v1, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide p0

    .line 350
    sget-object p2, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip bytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 352
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-gez p3, :cond_2

    .line 358
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result p3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 360
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    if-lez p3, :cond_3

    .line 366
    new-array v0, p3, [B

    .line 368
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p0

    .line 369
    sget-object p1, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "read bytes "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 371
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 375
    :cond_3
    sget-object p0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const-string p1, "cannot get avail length"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 381
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-object v0
.end method

.method public static readFromInternalFile(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1

    const/4 v0, -0x1

    .line 231
    invoke-static {p0, p1, v0}, Lcom/chery/media/util/Utils;->readFromInternalFile(Landroid/content/Context;Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static readFromInternalFile(Landroid/content/Context;Ljava/lang/String;I)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 240
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 242
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    if-gez p2, :cond_2

    .line 252
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 254
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    if-gez p2, :cond_3

    return-object v0

    .line 262
    :cond_3
    new-array p1, p2, [B

    const/4 v0, 0x0

    .line 265
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 267
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v1, v0

    .line 269
    :goto_2
    sget-object v2, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    const/4 p2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p2

    const-string p2, "read avail:%s actual:%s"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 274
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-object p1
.end method

.method public static sortByCustom(Ljava/util/List;Lcom/chery/media/util/Utils$SortField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/chery/media/util/Utils$SortField<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 403
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    new-instance v0, Lcom/chery/media/util/Utils$1;

    invoke-direct {v0, p1}, Lcom/chery/media/util/Utils$1;-><init>(Lcom/chery/media/util/Utils$SortField;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sortByDefault(Ljava/util/List;Lcom/chery/media/util/Utils$SortField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/chery/media/util/Utils$SortField<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 574
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 577
    :cond_0
    new-instance v0, Lcom/chery/media/util/Utils$2;

    invoke-direct {v0, p1}, Lcom/chery/media/util/Utils$2;-><init>(Lcom/chery/media/util/Utils$SortField;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static writeToFile(Ljava/lang/String;[BIIZ)Z
    .locals 3

    .line 284
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 286
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    sget-object p0, Lcom/chery/media/util/Utils;->TAG:Ljava/lang/String;

    const-string p1, "can not make dir for dest file!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 294
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_2

    .line 303
    array-length p0, p1

    if-lez p0, :cond_2

    .line 305
    :try_start_1
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 308
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 312
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 314
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 317
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 322
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 324
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return v2
.end method

.method public static writeToFile(Ljava/lang/String;[BZ)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 281
    :cond_0
    array-length v0, p1

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/chery/media/util/Utils;->writeToFile(Ljava/lang/String;[BIIZ)Z

    move-result p0

    return p0
.end method

.method public static writeToInternalFile(Landroid/content/Context;Ljava/lang/String;[BIIZ)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const p5, 0x8000

    goto :goto_0

    :cond_0
    move p5, v0

    .line 196
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 198
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_1

    return v0

    :cond_1
    if-eqz p2, :cond_2

    .line 204
    array-length p1, p2

    if-lez p1, :cond_2

    .line 206
    :try_start_1
    invoke-virtual {p0, p2, p3, p4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 213
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 215
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 218
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 220
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 223
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    .line 225
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    return v0
.end method

.method public static writeToInternalFile(Landroid/content/Context;Ljava/lang/String;[BZ)Z
    .locals 7

    if-nez p2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 191
    :cond_0
    array-length v0, p2

    :goto_0
    move v5, v0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/chery/media/util/Utils;->writeToInternalFile(Landroid/content/Context;Ljava/lang/String;[BIIZ)Z

    move-result p0

    return p0
.end method
