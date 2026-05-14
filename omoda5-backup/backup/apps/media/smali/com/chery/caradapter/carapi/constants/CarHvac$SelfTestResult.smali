.class public Lcom/chery/caradapter/carapi/constants/CarHvac$SelfTestResult;
.super Ljava/lang/Object;
.source "CarHvac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/constants/CarHvac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelfTestResult"
.end annotation


# static fields
.field public static final AQM_FAULT:I = 0xa

.field public static final AQS_SENSOR_ERROR:I = 0x7

.field public static final BLOWER_ERROR:I = 0xb

.field public static final CIRCULATION_MOTOR_ERROR:I = 0xc

.field public static final EAC_FAULT:I = 0x19

.field public static final EVAPORATOR_TEMPERATURE_SENSOR_ERROREVAPORATOR:I = 0x8

.field public static final EXTERNAL_PM25_ERROR:I = 0x18

.field public static final EXTERNAL_TEMPERATURE_ERROR:I = 0x1

.field public static final FRAG_FAN_ERROR:I = 0x1d

.field public static final FRAG_LOST_COMMUNICATION_WITH_CLM:I = 0x3

.field public static final FRAG_MOTOR_ERROR:I = 0x9

.field public static final HUMIDITY_SENSOR_ERROR:I = 0x6

.field public static final INCAR_PM25__ERROR:I = 0x17

.field public static final LEFT_ANION_ERROR:I = 0x1b

.field public static final LEFT_INTERNAL_TEMPERATURE_ERROR:I = 0x2

.field public static final LEFT_MIXTURE_MOTOR_ERROR:I = 0xf

.field public static final LEFT_SOLAR_ERROR:I = 0x4

.field public static final LOST_COMMUNICATION_WITH_BCM:I = 0x15

.field public static final LOST_COMMUNICATION_WITH_BSM:I = 0x13

.field public static final LOST_COMMUNICATION_WITH_EMS:I = 0x12

.field public static final LOST_COMMUNICATION_WITH_ICM:I = 0x11

.field public static final LOST_COMMUNICATION_WITH_IPM:I = 0x16

.field public static final LOST_COMMUNICATION_WITH_PEPS:I = 0x1e

.field public static final LOST_COMMUNICATION_WITH_RRM:I = 0x14

.field public static final MODE_MOTOR_1_ERROR:I = 0xd

.field public static final MODE_MOTOR_2_ERROR:I = 0xe

.field public static final NO_ERROR:I = 0x0

.field public static final PTC_FAULT:I = 0x1a

.field public static final RIGHT_ANION_ERROR:I = 0x1c

.field public static final RIGHT_MIXTURE_MOTOR_ERROR:I = 0x10

.field public static final RIGHT_SOLAR_ERROR:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
