.class public Lcom/yfve/t19c/projection/androidauto/proxy/AAUserManager;
.super Ljava/lang/Object;
.source "AAUserManager.java"


# static fields
.field public static final CLIENT_AA_ACTIVITY:Ljava/lang/String; = "projection.androidauto.client.activity"

.field public static final CLIENT_DIALER:Ljava/lang/String; = "projection.androidauto.client.dialer"

.field public static final CLIENT_LAUNCH_UI:Ljava/lang/String; = "projection.androidauto.client.launch.ui"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkClientLegality(Ljava/lang/String;)Z
    .locals 5

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7e98329d

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x372fa48f

    if-eq v0, v1, :cond_1

    const v1, 0x772186db

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "projection.androidauto.client.launch.ui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_1
    const-string v0, "projection.androidauto.client.dialer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v4

    goto :goto_1

    :cond_2
    const-string v0, "projection.androidauto.client.activity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v4, :cond_4

    if-eq p0, v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    return v3
.end method
