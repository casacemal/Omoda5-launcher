.class public interface abstract Lcom/chery/device/DeviceModel$DeviceConnectListener;
.super Ljava/lang/Object;
.source "DeviceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/device/DeviceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceConnectListener"
.end annotation


# virtual methods
.method public abstract onDeviceUpdate(Lcom/yfve/t19c/projection/devicelist/Device;)V
.end method

.method public abstract onRequestBluetoothPair(Ljava/lang/String;)V
.end method

.method public abstract onSessionStateUpdate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method
