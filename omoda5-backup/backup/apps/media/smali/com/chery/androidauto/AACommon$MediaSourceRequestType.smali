.class public Lcom/chery/androidauto/AACommon$MediaSourceRequestType;
.super Ljava/lang/Object;
.source "AACommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/androidauto/AACommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaSourceRequestType"
.end annotation


# static fields
.field public static final MEDIA_SOURCE_AV_ALL:I = 0x3

.field public static final MEDIA_SOURCE_ONLY_AUDIO:I = 0x1

.field public static final MEDIA_SOURCE_ONLY_VIDEO:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
