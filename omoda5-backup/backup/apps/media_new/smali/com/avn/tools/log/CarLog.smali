.class public Lcom/avn/tools/log/CarLog;
.super Ljava/lang/Object;
.source "CarLog.java"


# static fields
.field private static final MAX_TAG_LEN:I = 0x17

.field public static final TAG_AM:Ljava/lang/String; = "AM"

.field public static final TAG_AVM:Ljava/lang/String; = "AVM"

.field public static final TAG_BT_MUSIC:Ljava/lang/String; = "BTA"

.field public static final TAG_BT_PHONE:Ljava/lang/String; = "BTP"

.field public static final TAG_BT_SETTING:Ljava/lang/String; = "BTS"

.field public static final TAG_CAR:Ljava/lang/String; = "CAR"

.field public static final TAG_COMMON:Ljava/lang/String; = "COMMON"

.field public static final TAG_DAB:Ljava/lang/String; = "DAB"

.field public static final TAG_DEF:Ljava/lang/String; = "DEF"

.field public static final TAG_ENGINEERING:Ljava/lang/String; = "ENG"

.field public static final TAG_HELP:Ljava/lang/String; = "HELP"

.field public static final TAG_HVAC:Ljava/lang/String; = "HVAC"

.field public static final TAG_ICM:Ljava/lang/String; = "ICM"

.field public static final TAG_LAU:Ljava/lang/String; = "LAU"

.field public static final TAG_MEDIA:Ljava/lang/String; = "MEDIA"

.field public static final TAG_PICTURE:Ljava/lang/String; = "PICTURE"

.field public static final TAG_SETTING:Ljava/lang/String; = "SET"

.field public static final TAG_SYSTEMUI:Ljava/lang/String; = "SYSUI"

.field public static final TAG_TOOLS:Ljava/lang/String; = "TOOLS"

.field public static final TAG_TUNER:Ljava/lang/String; = "TUNER"

.field public static final TAG_UPGRADE:Ljava/lang/String; = "UPD"

.field public static final TAG_UPGRADE_SERVICE:Ljava/lang/String; = "UPDS"

.field public static final TAG_VIDEO:Ljava/lang/String; = "VIDEO"

.field public static final TAG_VR:Ljava/lang/String; = "VR"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x17

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
