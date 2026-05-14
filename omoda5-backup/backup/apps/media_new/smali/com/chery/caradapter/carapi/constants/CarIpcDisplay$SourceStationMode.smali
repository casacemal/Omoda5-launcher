.class public Lcom/chery/caradapter/carapi/constants/CarIpcDisplay$SourceStationMode;
.super Ljava/lang/Object;
.source "CarIpcDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/constants/CarIpcDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceStationMode"
.end annotation


# static fields
.field public static final BLUETOOTH:I = 0x5

.field public static final DEFAULT:I = 0x1

.field public static final IPOD:I = 0x6

.field public static final LOCAL_STORAGE:I = 0x7

.field public static final NOT_ACTIVE:I = 0x0

.field public static final ONLINE_MUSIC:I = 0x3

.field public static final ONLINE_RADIO:I = 0x4

.field public static final TUNER:I = 0x1

.field public static final USB:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    const-string v0, "NOT_ACTIVE"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "LOCAL_STORAGE"

    goto :goto_0

    :pswitch_1
    const-string v0, "IPOD"

    goto :goto_0

    :pswitch_2
    const-string v0, "BLUETOOTH"

    goto :goto_0

    :pswitch_3
    const-string v0, "ONLINE_RADIO"

    goto :goto_0

    :pswitch_4
    const-string v0, "ONLINE_MUSIC"

    goto :goto_0

    :pswitch_5
    const-string v0, "USB"

    goto :goto_0

    :pswitch_6
    const-string v0, "TUNER"

    :goto_0
    :pswitch_7
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
