.class public abstract Lcom/chery/caradapter/carapi/client/CarBaseClient;
.super Ljava/lang/Object;
.source "CarBaseClient.java"


# instance fields
.field protected carAudioManager:Landroid/car/media/CarAudioManager;

.field protected carInfoManager:Landroid/car/CarInfoManager;

.field protected carPowerManager:Landroid/car/hardware/power/CarPowerManager;

.field protected carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract init()V
.end method

.method public abstract setAudioManager(Landroid/car/media/CarAudioManager;)V
.end method

.method public abstract setInfoManager(Landroid/car/CarInfoManager;)V
.end method

.method public abstract setPowerManager(Landroid/car/hardware/power/CarPowerManager;)V
.end method

.method public abstract setPropertyManager(Landroid/car/hardware/property/CarPropertyManager;)V
.end method
