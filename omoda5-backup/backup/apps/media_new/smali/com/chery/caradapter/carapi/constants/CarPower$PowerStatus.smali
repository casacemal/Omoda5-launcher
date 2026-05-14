.class public Lcom/chery/caradapter/carapi/constants/CarPower$PowerStatus;
.super Ljava/lang/Object;
.source "CarPower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/constants/CarPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PowerStatus"
.end annotation


# static fields
.field public static final ON:I = 0x6

.field public static final PWR_MODE_ABNORMAL:I = 0xe

.field public static final PWR_MODE_NONE:I = 0x9

.field public static final PWR_MODE_OFF:I = 0xa

.field public static final PWR_MODE_OFF_USER:I = 0x10

.field public static final PWR_MODE_PARTIALRUN:I = 0x11

.field public static final PWR_MODE_PROTECTION:I = 0x12

.field public static final PWR_MODE_RUN:I = 0xc

.field public static final PWR_MODE_SLEEP:I = 0xd

.field public static final PWR_MODE_STANDBY:I = 0xb

.field public static final PWR_MODE_TEMPRUN_ENDING:I = 0x13

.field public static final PWR_MODE_TEMP_ON:I = 0xf

.field public static final PWR_REQ_SYSTEM_OFF:I = 0x14

.field public static final PWR_SCREEN_OFF:I = 0x16

.field public static final PWR_SCREEN_ON:I = 0x15

.field public static final SHUTDOWN_CANCELLED:I = 0x8

.field public static final SHUTDOWN_ENTER:I = 0x5

.field public static final SHUTDOWN_PREPARE:I = 0x7

.field public static final SUSPEND_ENTER:I = 0x2

.field public static final SUSPEND_EXIT:I = 0x3

.field public static final WAIT_FOR_VHAL:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/constants/CarPower;


# direct methods
.method public constructor <init>(Lcom/chery/caradapter/carapi/constants/CarPower;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/chery/caradapter/carapi/constants/CarPower$PowerStatus;->this$0:Lcom/chery/caradapter/carapi/constants/CarPower;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
