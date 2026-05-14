.class public Lcom/chery/caradapter/carapi/constants/CarBasic$SSMStatus;
.super Ljava/lang/Object;
.source "CarBasic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/constants/CarBasic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SSMStatus"
.end annotation


# static fields
.field public static final AUTO_STOPPING:I = 0x6

.field public static final ENGINE_RESTART:I = 0x4

.field public static final OPERATION:I = 0x5

.field public static final RESET_NOT_IMPLEMENTED:I = 0x0

.field public static final STANDBY:I = 0x1

.field public static final STARTER_RESTART:I = 0x3

.field public static final STOPPED:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
