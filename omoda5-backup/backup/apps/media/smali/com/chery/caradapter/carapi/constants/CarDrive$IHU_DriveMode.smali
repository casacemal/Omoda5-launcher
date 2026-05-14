.class public Lcom/chery/caradapter/carapi/constants/CarDrive$IHU_DriveMode;
.super Ljava/lang/Object;
.source "CarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/constants/CarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IHU_DriveMode"
.end annotation


# static fields
.field public static final ECO:I = 0x0

.field public static final MUD:I = 0x4

.field public static final NORMAL:I = 0x1

.field public static final OFF_ROAD:I = 0x5

.field public static final RESERVED:I = 0x7

.field public static final SNOW:I = 0x3

.field public static final SPORT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
