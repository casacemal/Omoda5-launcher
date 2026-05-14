.class public Lcom/chery/caradapter/carapi/constants/CarIpcDisplay$Mode;
.super Ljava/lang/Object;
.source "CarIpcDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/constants/CarIpcDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mode"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x2

.field public static final OFF:I = 0x2

.field public static final ON:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "OFF"

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const-string v1, "ON"

    :goto_0
    return-object v1
.end method
