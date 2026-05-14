.class public Lcom/chery/caradapter/carapi/constants/CarLamp$HeadlampDelayLightStsSet;
.super Ljava/lang/Object;
.source "CarLamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/constants/CarLamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeadlampDelayLightStsSet"
.end annotation


# static fields
.field public static final DELAY_MODE:I = 0x1

.field public static final NOT_ACTIVE:I = 0x0

.field public static final NOT_DELAY_MODE:I = 0x2

.field public static final NOT_USED:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
