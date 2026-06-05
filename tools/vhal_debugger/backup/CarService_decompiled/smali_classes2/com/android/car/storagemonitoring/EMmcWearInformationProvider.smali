.class public Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;
.super Ljava/lang/Object;
.source "EMmcWearInformationProvider.java"

# interfaces
.implements Lcom/android/car/storagemonitoring/WearInformationProvider;


# static fields
.field private static DEFAULT_LIFE_TIME_FILE:Ljava/io/File;

.field private static DEFAULT_PRE_EOL_FILE:Ljava/io/File;


# instance fields
.field private mLifetimeFile:Ljava/io/File;

.field private mPreEolFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/bus/mmc/devices/mmc0:0001/life_time"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;->DEFAULT_LIFE_TIME_FILE:Ljava/io/File;

    .line 39
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/bus/mmc/devices/mmc0:0001/pre_eol_info"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;->DEFAULT_PRE_EOL_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    sget-object v0, Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;->DEFAULT_LIFE_TIME_FILE:Ljava/io/File;

    sget-object v1, Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;->DEFAULT_PRE_EOL_FILE:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 47
    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "lifetimeFile"    # Ljava/io/File;
    .param p2, "preEolFile"    # Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;->mLifetimeFile:Ljava/io/File;

    .line 52
    iput-object p2, p0, Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;->mPreEolFile:Ljava/io/File;

    .line 53
    return-void
.end method

.method private readLineFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p1, "f"    # Ljava/io/File;

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CAR.STORAGE"

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 63
    .local v0, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-object v3

    .line 66
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "data":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " cannot be read from"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    return-object v1

    .line 57
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist or is not a file"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-object v1
.end method


# virtual methods
.method public load()Lcom/android/car/storagemonitoring/WearInformation;
    .locals 10

    .line 75
    iget-object v0, p0, Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;->mLifetimeFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;->readLineFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "lifetimeData":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;->mPreEolFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;->readLineFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "eolData":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "lifetimes":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    const-string v6, "lifetime data not in expected format: "

    const-string v7, "CAR.STORAGE"

    if-eq v4, v5, :cond_1

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-object v2

    .line 93
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 94
    .local v4, "lifetimeA":I
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 95
    .local v5, "lifetimeB":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .local v2, "eol":I
    nop

    .line 102
    new-instance v6, Lcom/android/car/storagemonitoring/WearInformation;

    invoke-virtual {p0, v4}, Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;->convertLifetime(I)I

    move-result v7

    .line 103
    invoke-virtual {p0, v5}, Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;->convertLifetime(I)I

    move-result v8

    .line 104
    invoke-virtual {p0, v2}, Lcom/android/car/storagemonitoring/EMmcWearInformationProvider;->adjustEol(I)I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/car/storagemonitoring/WearInformation;-><init>(III)V

    .line 102
    return-object v6

    .line 96
    .end local v2    # "eol":I
    .end local v4    # "lifetimeA":I
    .end local v5    # "lifetimeB":I
    :catch_0
    move-exception v4

    .line 97
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    return-object v2

    .line 79
    .end local v3    # "lifetimes":[Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_0
    return-object v2
.end method
