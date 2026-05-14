.class public Lcom/chery/carplay/CPCommon$ConnectType;
.super Ljava/lang/Object;
.source "CPCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/carplay/CPCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectType"
.end annotation


# static fields
.field public static final BT_CLIENT:I = 0x2

.field public static final BT_SERVER:I = 0x3

.field public static final DEFAULT:I = 0x0

.field public static final USB:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "DEFAULT"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "USB"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "BT_CLIENT"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "BT_SERVER"

    return-object p0

    :cond_3
    const-string p0, "OTHER"

    return-object p0
.end method
