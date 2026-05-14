.class public Lcom/chery/carplay/CPCommon$TelSts;
.super Ljava/lang/Object;
.source "CPCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/carplay/CPCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TelSts"
.end annotation


# static fields
.field public static final ACTIVE:I = 0x4

.field public static final CONNECTING:I = 0x3

.field public static final DISCONNECTED:I = 0x0

.field public static final DISCONNECTING:I = 0x6

.field public static final HELD:I = 0x5

.field public static final RINGING:I = 0x2

.field public static final SENDING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
