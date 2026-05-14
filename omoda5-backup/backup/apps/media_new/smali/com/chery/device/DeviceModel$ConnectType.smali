.class public final Lcom/chery/device/DeviceModel$ConnectType;
.super Ljava/lang/Object;
.source "DeviceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/device/DeviceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectType"
.end annotation


# static fields
.field public static final AA_USB:I = 0x1

.field public static final AA_WIRELESS:I = 0x2

.field public static final CP_USB:I = 0x3

.field public static final CP_WIRELESS:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
