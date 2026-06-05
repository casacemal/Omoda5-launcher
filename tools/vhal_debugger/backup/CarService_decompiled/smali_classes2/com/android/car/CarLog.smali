.class public Lcom/android/car/CarLog;
.super Ljava/lang/Object;
.source "CarLog.java"


# static fields
.field private static final MAX_TAG_LEN:I = 0x17

.field public static final TAG_AM:Ljava/lang/String; = "CAR.AM"

.field public static final TAG_APP_FOCUS:Ljava/lang/String; = "CAR.APP_FOCUS"

.field public static final TAG_AUDIO:Ljava/lang/String; = "CAR.AUDIO"

.field public static final TAG_CABIN:Ljava/lang/String; = "CAR.CABIN"

.field public static final TAG_CAMERA:Ljava/lang/String; = "CAR.CAMERA"

.field public static final TAG_CAN_BUS:Ljava/lang/String; = "CAR.CAN_BUS"

.field public static final TAG_CLUSTER:Ljava/lang/String; = "CAR.CLUSTER"

.field public static final TAG_DIAGNOSTIC:Ljava/lang/String; = "CAR.DIAGNOSTIC"

.field public static final TAG_HAL:Ljava/lang/String; = "CAR.HAL"

.field public static final TAG_HVAC:Ljava/lang/String; = "CAR.HVAC"

.field public static final TAG_INFO:Ljava/lang/String; = "CAR.INFO"

.field public static final TAG_INPUT:Ljava/lang/String; = "CAR.INPUT"

.field public static final TAG_MEDIA:Ljava/lang/String; = "CAR.MEDIA"

.field public static final TAG_MONITORING:Ljava/lang/String; = "CAR.MONITORING"

.field public static final TAG_NAV:Ljava/lang/String; = "CAR.NAV"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "CAR.PACKAGE"

.field public static final TAG_POWER:Ljava/lang/String; = "CAR.POWER"

.field public static final TAG_PROJECTION:Ljava/lang/String; = "CAR.PROJECTION"

.field public static final TAG_PROPERTY:Ljava/lang/String; = "CAR.PROPERTY"

.field public static final TAG_SENSOR:Ljava/lang/String; = "CAR.SENSOR"

.field public static final TAG_SERVICE:Ljava/lang/String; = "CAR.SERVICE"

.field public static final TAG_STORAGE:Ljava/lang/String; = "CAR.STORAGE"

.field public static final TAG_SYS:Ljava/lang/String; = "CAR.SYS"

.field public static final TAG_TEST:Ljava/lang/String; = "CAR.TEST"

.field public static final TAG_USER:Ljava/lang/String; = "CAR.USER"

.field public static final TAG_VENDOR_EXT:Ljava/lang/String; = "CAR.VENDOR_EXT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p0, "tagPrefix"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_0
    return-object v0
.end method
