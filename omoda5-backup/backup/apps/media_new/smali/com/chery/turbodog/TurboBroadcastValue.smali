.class public Lcom/chery/turbodog/TurboBroadcastValue;
.super Ljava/lang/Object;
.source "TurboBroadcastValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/turbodog/TurboBroadcastValue$Error;,
        Lcom/chery/turbodog/TurboBroadcastValue$Data;,
        Lcom/chery/turbodog/TurboBroadcastValue$Code;
    }
.end annotation


# static fields
.field public static final ACTION_RECEIVE:Ljava/lang/String; = "turbodog.navigation.system.message"

.field public static final ACTION_SEND:Ljava/lang/String; = "turbodog.system.navigation.message"

.field public static final CODE:Ljava/lang/String; = "CODE"

.field public static final CURRENT_ROAD:Ljava/lang/String; = "CURRENT_ROAD"

.field public static final DATA:Ljava/lang/String; = "DATA"

.field public static final NEXT_ROAD:Ljava/lang/String; = "NEXT_ROAD"

.field public static final REMAINING_DIST:Ljava/lang/String; = "REMAINING_DIST"

.field public static final REMAINING_TIME:Ljava/lang/String; = "REMAINING_TIME"

.field public static final REQUEST_CODE:Ljava/lang/String; = "REQUEST_CODE"

.field public static final TURN_DIST:Ljava/lang/String; = "TURN_DIST"

.field public static final TURN_TIME:Ljava/lang/String; = "TURN_TIME"

.field public static final TURN_TYPE:Ljava/lang/String; = "TURN_TYPE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
