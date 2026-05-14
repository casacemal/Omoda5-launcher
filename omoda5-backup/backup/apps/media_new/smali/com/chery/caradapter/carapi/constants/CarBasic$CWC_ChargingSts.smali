.class public Lcom/chery/caradapter/carapi/constants/CarBasic$CWC_ChargingSts;
.super Ljava/lang/Object;
.source "CarBasic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/constants/CarBasic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CWC_ChargingSts"
.end annotation


# static fields
.field public static final CHARGING:I = 0x1

.field public static final CHARGING_FAULT:I = 0x3

.field public static final CHARGING_FINISH:I = 0x2

.field public static final NO_CHARGING:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
