.class public final Lcom/chery/device/DeviceModel$ConnectionState;
.super Ljava/lang/Object;
.source "DeviceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/device/DeviceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionState"
.end annotation


# static fields
.field public static final BUSY:I = -0x2

.field public static final CONNECTED:I = 0x0

.field public static final CONNECTING:I = -0x1

.field public static final DISCONNECTED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
