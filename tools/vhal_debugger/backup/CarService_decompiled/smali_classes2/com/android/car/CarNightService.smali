.class public Lcom/android/car/CarNightService;
.super Ljava/lang/Object;
.source "CarNightService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarNightService$DayNightSensorMode;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field public static final FORCED_DAY_MODE:I = 0x1

.field public static final FORCED_NIGHT_MODE:I = 0x2

.field public static final FORCED_SENSOR_MODE:I


# instance fields
.field private mCarPropertyService:Lcom/android/car/CarPropertyService;

.field private final mContext:Landroid/content/Context;

.field private mForcedMode:I

.field private final mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private mNightSetting:I

.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "propertyService"    # Lcom/android/car/CarPropertyService;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/car/CarNightService;->mNightSetting:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/CarNightService;->mForcedMode:I

    .line 52
    new-instance v0, Lcom/android/car/CarNightService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarNightService$1;-><init>(Lcom/android/car/CarNightService;)V

    iput-object v0, p0, Lcom/android/car/CarNightService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 123
    iput-object p1, p0, Lcom/android/car/CarNightService;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/android/car/CarNightService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    .line 125
    iget-object v0, p0, Lcom/android/car/CarNightService;->mContext:Landroid/content/Context;

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/car/CarNightService;->mUiModeManager:Landroid/app/UiModeManager;

    .line 126
    iget-object v0, p0, Lcom/android/car/CarNightService;->mUiModeManager:Landroid/app/UiModeManager;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "CAR.SENSOR"

    const-string v1, "Failed to get UI_MODE_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    return-void
.end method

.method private declared-synchronized setNightMode(Z)V
    .locals 2
    .param p1, "nightMode"    # Z

    monitor-enter p0

    .line 81
    if-eqz p1, :cond_0

    .line 82
    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/android/car/CarNightService;->mNightSetting:I

    goto :goto_0

    .line 85
    .end local p0    # "this":Lcom/android/car/CarNightService;
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/car/CarNightService;->mNightSetting:I

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/android/car/CarNightService;->mUiModeManager:Landroid/app/UiModeManager;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/car/CarNightService;->mForcedMode:I

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/car/CarNightService;->mUiModeManager:Landroid/app/UiModeManager;

    iget v1, p0, Lcom/android/car/CarNightService;->mNightSetting:I

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    monitor-exit p0

    return-void

    .line 80
    .end local p1    # "nightMode":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 155
    :try_start_0
    const-string v0, "*DAY NIGHT POLICY*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget v1, p0, Lcom/android/car/CarNightService;->mNightSetting:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "night"

    goto :goto_0

    .end local p0    # "this":Lcom/android/car/CarNightService;
    :cond_0
    const-string v1, "day"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forced Mode? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarNightService;->mForcedMode:I

    if-nez v1, :cond_1

    const-string v1, "false"

    goto :goto_1

    .line 159
    :cond_1
    iget v1, p0, Lcom/android/car/CarNightService;->mForcedMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "day"

    goto :goto_1

    :cond_2
    const-string v1, "night"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 154
    .end local p1    # "writer":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized forceDayNightMode(I)I
    .locals 4
    .param p1, "mode"    # I

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarNightService;->mUiModeManager:Landroid/app/UiModeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 98
    monitor-exit p0

    return v1

    .line 101
    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 115
    :try_start_1
    const-string v0, "CAR.SENSOR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown forced day/night mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    monitor-exit p0

    return v1

    .line 111
    .end local p0    # "this":Lcom/android/car/CarNightService;
    :cond_1
    const/4 v1, 0x2

    .line 112
    .local v1, "resultMode":I
    :try_start_2
    iput v0, p0, Lcom/android/car/CarNightService;->mForcedMode:I

    .line 113
    goto :goto_0

    .line 107
    .end local v1    # "resultMode":I
    :cond_2
    const/4 v1, 0x1

    .line 108
    .restart local v1    # "resultMode":I
    iput v0, p0, Lcom/android/car/CarNightService;->mForcedMode:I

    .line 109
    goto :goto_0

    .line 103
    .end local v1    # "resultMode":I
    :cond_3
    iget v0, p0, Lcom/android/car/CarNightService;->mNightSetting:I

    move v1, v0

    .line 104
    .restart local v1    # "resultMode":I
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/CarNightService;->mForcedMode:I

    .line 105
    nop

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/android/car/CarNightService;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 119
    iget-object v0, p0, Lcom/android/car/CarNightService;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 96
    .end local v1    # "resultMode":I
    .end local p1    # "mode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    monitor-enter p0

    .line 67
    if-nez p1, :cond_0

    .line 68
    monitor-exit p0

    return-void

    .line 70
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v0

    if-nez v0, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 73
    .local v0, "value":Landroid/car/hardware/CarPropertyValue;
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    const v2, 0x11200407

    if-ne v1, v2, :cond_1

    .line 74
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 75
    .local v1, "nightMode":Z
    invoke-direct {p0, v1}, Lcom/android/car/CarNightService;->setNightMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v1    # "nightMode":Z
    .end local p0    # "this":Lcom/android/car/CarNightService;
    :cond_1
    monitor-exit p0

    return-void

    .line 66
    .end local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized init()V
    .locals 5

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarNightService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/car/CarNightService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    const v3, 0x11200407

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/car/CarNightService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/car/CarPropertyService;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 140
    .local v0, "propertyValue":Landroid/car/hardware/CarPropertyValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/car/CarNightService;->setNightMode(Z)V

    goto :goto_0

    .line 143
    .end local p0    # "this":Lcom/android/car/CarNightService;
    :cond_0
    const-string v1, "CAR.SENSOR"

    const-string v2, "Failed to get value of NIGHT_MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/car/CarNightService;->setNightMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    .end local v0    # "propertyValue":Landroid/car/hardware/CarPropertyValue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 0

    monitor-enter p0

    .line 151
    monitor-exit p0

    return-void
.end method
