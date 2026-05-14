.class public Lcom/chery/caradapter/carapi/constants/CarHvac;
.super Ljava/lang/Object;
.source "CarHvac.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/caradapter/carapi/constants/CarHvac$BeepSts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$BeepCmd;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$FGHeatSts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$FGHeatCmd;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$TemperatureUnitSts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$TemperatureUnitCmd;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$SeatVentnSts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$SeatVentilationCmd;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$SeatHeatSts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$SeatHeatLevelCmd;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$RefreshFunctionSts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$RefreshFunction;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$FragranceWelcomeModeSts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$FragranceWelcomeMode;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$Pm25AutoRunSetSts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$Pm25AutoRunSet;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$AutoDefrostOnSts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$AutoDefrostOnKeySts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$AcModeCustomSts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$AcModeCustom;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$BlowAdvanceOnSts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$BlowAdvanceOnKeySts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$BlowDelayOffSts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$BlowDelayOffKeySts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$FrontDeforestMaxDisplaySts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$DvdSetMaxFrontDeforestSts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$SelfTestResult;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$SelfTestActive;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$ZoneSelectionDisplaySts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$DvdZoneSelectionKeySts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$AutoDisplaySts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$DvdSetAutoKeySts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$ModeAdjustDisplaySts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$ModeAdjustKeySts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$BlowSpeedLevelDisplaySts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$BlowSpeedLevelKeySts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$CirculationModeDisplaySts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$DvdSetCirculationModeKeySts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$ACRequestDisplaySts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$SetACRequestKeySts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$WorkingSts;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$DvdSetClmOn;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$DisplayActive;,
        Lcom/chery/caradapter/carapi/constants/CarHvac$ClimateDisplayReq;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cTemp(F)F
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x4031800000000000L    # 17.5

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const/high16 p0, 0x418c0000    # 17.5f

    return p0

    :cond_0
    const-wide v2, 0x4040400000000000L    # 32.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/high16 p0, 0x42020000    # 32.5f

    :cond_1
    return p0
.end method

.method public static cTemp(I)I
    .locals 1

    const/16 v0, 0xf

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x1f

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method public static fTemp(I)I
    .locals 1

    const/16 v0, 0x3a

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method public static tempRating(I)I
    .locals 1

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x10

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method
