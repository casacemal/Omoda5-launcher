.class public Lcom/android/car/storagemonitoring/UfsWearInformationProvider;
.super Ljava/lang/Object;
.source "UfsWearInformationProvider.java"

# interfaces
.implements Lcom/android/car/storagemonitoring/WearInformationProvider;


# static fields
.field private static DEFAULT_FILE:Ljava/io/File;


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/soc/624000.ufshc/health"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;->DEFAULT_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    sget-object v0, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;->DEFAULT_FILE:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;-><init>(Ljava/io/File;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;->mFile:Ljava/io/File;

    .line 52
    return-void
.end method


# virtual methods
.method public load()Lcom/android/car/storagemonitoring/WearInformation;
    .locals 17

    .line 59
    move-object/from16 v1, p0

    const-string v2, "CAR.STORAGE"

    :try_start_0
    iget-object v0, v1, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v0

    .line 63
    .local v4, "lifetimeData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 64
    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x4

    if-ge v0, v5, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 68
    :cond_0
    const-string v0, "Health Descriptor\\[Byte offset 0x\\d+\\]: (\\w+) = 0x([0-9a-fA-F]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 71
    .local v5, "infoPattern":Ljava/util/regex/Pattern;
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    .line 72
    .local v0, "lifetimeA":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v6

    .line 73
    .local v6, "lifetimeB":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v7

    .line 75
    .local v7, "eol":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v7

    move-object v7, v6

    move-object v6, v0

    .end local v0    # "lifetimeA":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .local v6, "lifetimeA":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .local v7, "lifetimeB":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .local v9, "eol":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 76
    .local v10, "lifetimeInfo":Ljava/lang/String;
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, v10}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 77
    .local v11, "scanner":Ljava/util/Scanner;
    invoke-virtual {v11, v5}, Ljava/util/Scanner;->findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 78
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v11}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    move-result-object v12

    .line 81
    .local v12, "match":Ljava/util/regex/MatchResult;
    invoke-interface {v12}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v0

    const/4 v13, 0x2

    if-eq v0, v13, :cond_2

    .line 82
    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 85
    .local v14, "name":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12, v13}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "value":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_3
    goto :goto_1

    :sswitch_0
    const-string v15, "bPreEOLInfo"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x0

    goto :goto_2

    :sswitch_1
    const-string v15, "bDeviceLifeTimeEstB"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    move v15, v13

    goto :goto_2

    :sswitch_2
    const-string v15, "bDeviceLifeTimeEstA"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    move v15, v0

    goto :goto_2

    :goto_1
    const/4 v15, -0x1

    :goto_2
    if-eqz v15, :cond_6

    if-eq v15, v0, :cond_5

    if-eq v15, v13, :cond_4

    goto :goto_3

    .line 95
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    move-object v7, v0

    goto :goto_3

    .line 92
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    move-object v6, v0

    .line 93
    goto :goto_3

    .line 89
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v0

    .line 90
    nop

    .line 101
    :goto_3
    goto :goto_4

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "trying to decode key "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " value "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " didn\'t parse properly"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "value":Ljava/lang/String;
    .end local v10    # "lifetimeInfo":Ljava/lang/String;
    .end local v11    # "scanner":Ljava/util/Scanner;
    .end local v12    # "match":Ljava/util/regex/MatchResult;
    .end local v14    # "name":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 104
    :cond_7
    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v7}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v9}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    .line 108
    :cond_8
    new-instance v0, Lcom/android/car/storagemonitoring/WearInformation;

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;->convertLifetime(I)I

    move-result v2

    .line 109
    invoke-virtual {v7}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;->convertLifetime(I)I

    move-result v3

    .line 110
    invoke-virtual {v9}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;->adjustEol(I)I

    move-result v8

    invoke-direct {v0, v2, v3, v8}, Lcom/android/car/storagemonitoring/WearInformation;-><init>(III)V

    .line 108
    return-object v0

    .line 105
    :cond_9
    :goto_5
    const/4 v2, 0x0

    return-object v2

    .line 64
    .end local v5    # "infoPattern":Ljava/util/regex/Pattern;
    .end local v6    # "lifetimeA":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .end local v7    # "lifetimeB":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .end local v9    # "eol":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :cond_a
    const/4 v2, 0x0

    .line 65
    :goto_6
    return-object v2

    .line 60
    .end local v4    # "lifetimeData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/car/storagemonitoring/UfsWearInformationProvider;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    const/4 v2, 0x0

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x3d819f84 -> :sswitch_2
        -0x3d819f83 -> :sswitch_1
        0x25fe8eaf -> :sswitch_0
    .end sparse-switch
.end method
