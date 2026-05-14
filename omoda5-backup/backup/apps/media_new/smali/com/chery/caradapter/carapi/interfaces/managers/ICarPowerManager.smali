.class public interface abstract Lcom/chery/caradapter/carapi/interfaces/managers/ICarPowerManager;
.super Ljava/lang/Object;
.source "ICarPowerManager.java"


# virtual methods
.method public abstract getBackLightStatus()Z
.end method

.method public abstract getBootReason()I
.end method

.method public abstract getCurrentPowerMode()I
.end method

.method public abstract getMCUVersion()Ljava/lang/String;
.end method

.method public abstract getMCUVersionForApp()Ljava/lang/String;
.end method

.method public abstract requestMCUDoFactoryReset()V
.end method

.method public abstract requestRestartNow()V
.end method

.method public abstract sendEventToMCU(Z)V
.end method

.method public abstract sendPROModeExit(Z)V
.end method

.method public abstract setBackLightEnable(Z)V
.end method

.method public abstract setListener(Lcom/chery/caradapter/carapi/interfaces/IPowerListener;)V
.end method
