.class public Lcom/chery/caradapter/carapi/constants/CarIpcDisplay$Request;
.super Ljava/lang/Object;
.source "CarIpcDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/constants/CarIpcDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final CALLER_INFO_REQUEST:I = 0x72

.field public static final CALLER_NAME_REQUEST:I = 0x71

.field public static final CALLER_NUMBER_REQUEST:I = 0x70

.field public static final CLEAR_DISPLAY_INFO_REQUEST:I = 0x3

.field public static final ICM_CONNECT_RESPONSE:I = 0x2

.field public static final MUSIC_TAG_REQUEST:I = 0x50

.field public static final NAVI_INFO_REQUEST:I = 0x31

.field public static final NEXT_STREET_NAME_REQUEST:I = 0x30

.field public static final SINGER_NAME_REQUEST:I = 0x51


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
