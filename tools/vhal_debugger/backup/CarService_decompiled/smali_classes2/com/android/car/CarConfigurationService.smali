.class public Lcom/android/car/CarConfigurationService;
.super Landroid/car/settings/ICarConfigurationManager$Stub;
.source "CarConfigurationService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarConfigurationService$JsonReader;
    }
.end annotation


# static fields
.field static final DEFAULT_SPEED_BUMP_ACQUIRED_PERMITS_PER_SECOND:D = 0.5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_SPEED_BUMP_MAX_PERMIT_POOL:D = 5.0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_SPEED_BUMP_PERMIT_FILL_DELAY:J = 0x258L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SPEED_BUMP_ACQUIRED_PERMITS_PER_SECOND_KEY:Ljava/lang/String; = "acquiredPermitsPerSecond"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SPEED_BUMP_CONFIG_KEY:Ljava/lang/String; = "SpeedBump"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SPEED_BUMP_MAX_PERMIT_POOL_KEY:Ljava/lang/String; = "maxPermitPool"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SPEED_BUMP_PERMIT_FILL_DELAY_KEY:Ljava/lang/String; = "permitFillDelay"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CarConfigurationService"


# instance fields
.field mConfigFile:Lorg/json/JSONObject;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mJsonReader:Lcom/android/car/CarConfigurationService$JsonReader;

.field private mSpeedBumpConfiguration:Landroid/car/settings/SpeedBumpConfiguration;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/car/CarConfigurationService$JsonReader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reader"    # Lcom/android/car/CarConfigurationService$JsonReader;

    .line 92
    invoke-direct {p0}, Landroid/car/settings/ICarConfigurationManager$Stub;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/car/CarConfigurationService;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/car/CarConfigurationService;->mJsonReader:Lcom/android/car/CarConfigurationService$JsonReader;

    .line 95
    return-void
.end method

.method private createSpeedBumpConfiguration()Landroid/car/settings/SpeedBumpConfiguration;
    .locals 9

    .line 156
    iget-object v0, p0, Lcom/android/car/CarConfigurationService;->mConfigFile:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/android/car/CarConfigurationService;->getDefaultSpeedBumpConfiguration()Landroid/car/settings/SpeedBumpConfiguration;

    move-result-object v0

    return-object v0

    .line 161
    :cond_0
    :try_start_0
    const-string v1, "SpeedBump"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 163
    .local v0, "speedBumpJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 164
    new-instance v8, Landroid/car/settings/SpeedBumpConfiguration;

    const-string v1, "acquiredPermitsPerSecond"

    .line 165
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v1, "maxPermitPool"

    .line 166
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v1, "permitFillDelay"

    .line 167
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/car/settings/SpeedBumpConfiguration;-><init>(DDJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    return-object v8

    .line 171
    .end local v0    # "speedBumpJson":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "CarConfigurationService"

    const-string v2, "Error parsing SpeedBumpConfiguration; returning default values"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-direct {p0}, Lcom/android/car/CarConfigurationService;->getDefaultSpeedBumpConfiguration()Landroid/car/settings/SpeedBumpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultSpeedBumpConfiguration()Landroid/car/settings/SpeedBumpConfiguration;
    .locals 8

    .line 179
    new-instance v7, Landroid/car/settings/SpeedBumpConfiguration;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    const-wide/16 v5, 0x258

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/car/settings/SpeedBumpConfiguration;-><init>(DDJ)V

    return-object v7
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 133
    const-string v0, "Config: "

    const-string v1, "*CarConfigurationService*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config value initialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarConfigurationService;->mConfigFile:Lorg/json/JSONObject;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/android/car/CarConfigurationService;->mConfigFile:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 137
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarConfigurationService;->mConfigFile:Lorg/json/JSONObject;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_1

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "CarConfigurationService"

    const-string v5, "Error printing JSON config"

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/car/CarConfigurationService;->mConfigFile:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeedBumpConfig initialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarConfigurationService;->mSpeedBumpConfiguration:Landroid/car/settings/SpeedBumpConfiguration;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/car/CarConfigurationService;->mSpeedBumpConfiguration:Landroid/car/settings/SpeedBumpConfiguration;

    if-eqz v0, :cond_3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeedBumpConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarConfigurationService;->mSpeedBumpConfiguration:Landroid/car/settings/SpeedBumpConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    :cond_3
    return-void
.end method

.method public getSpeedBumpConfiguration()Landroid/car/settings/SpeedBumpConfiguration;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/car/CarConfigurationService;->mSpeedBumpConfiguration:Landroid/car/settings/SpeedBumpConfiguration;

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/car/CarConfigurationService;->getDefaultSpeedBumpConfiguration()Landroid/car/settings/SpeedBumpConfiguration;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 4

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarConfigurationService;->mJsonReader:Lcom/android/car/CarConfigurationService$JsonReader;

    iget-object v1, p0, Lcom/android/car/CarConfigurationService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f0e0000

    invoke-interface {v0, v1, v2}, Lcom/android/car/CarConfigurationService$JsonReader;->jsonFileToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .local v0, "jsonString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 116
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/car/CarConfigurationService;->mConfigFile:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    goto :goto_0

    .line 117
    .end local p0    # "this":Lcom/android/car/CarConfigurationService;
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v2, "CarConfigurationService"

    const-string v3, "Error reading JSON file"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/car/CarConfigurationService;->createSpeedBumpConfiguration()Landroid/car/settings/SpeedBumpConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/CarConfigurationService;->mSpeedBumpConfiguration:Landroid/car/settings/SpeedBumpConfiguration;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 112
    .end local v0    # "jsonString":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 127
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/car/CarConfigurationService;->mConfigFile:Lorg/json/JSONObject;

    .line 128
    iput-object v0, p0, Lcom/android/car/CarConfigurationService;->mSpeedBumpConfiguration:Landroid/car/settings/SpeedBumpConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 126
    .end local p0    # "this":Lcom/android/car/CarConfigurationService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
