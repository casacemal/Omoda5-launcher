.class public Lcom/chery/libvr/bean/params/ParamsType$DeviceType;
.super Ljava/lang/Object;
.source "ParamsType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/bean/params/ParamsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceType"
.end annotation


# static fields
.field public static final BT:Ljava/lang/String; = "BT"

.field public static final HOTSPOT:Ljava/lang/String; = "HOTSPOT"

.field public static final NET:Ljava/lang/String; = "NET"

.field public static final WIFI:Ljava/lang/String; = "WIFI"

.field public static final WIRELESS_CHARGING:Ljava/lang/String; = "WIRELESS_CHARGING"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
