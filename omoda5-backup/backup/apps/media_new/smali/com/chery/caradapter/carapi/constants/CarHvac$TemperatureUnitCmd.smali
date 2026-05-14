.class public Lcom/chery/caradapter/carapi/constants/CarHvac$TemperatureUnitCmd;
.super Ljava/lang/Object;
.source "CarHvac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/constants/CarHvac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemperatureUnitCmd"
.end annotation


# static fields
.field public static final CENTIGRADE:I = 0x1

.field public static final FAHRENHEIT:I = 0x2

.field public static final NOT_ACTIVE:I = 0x0

.field public static final NOT_USED:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
