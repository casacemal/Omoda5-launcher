.class public final Lcom/chery/common/PageConstants$Media;
.super Ljava/lang/Object;
.source "PageConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/common/PageConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/common/PageConstants$Media$UsbType;,
        Lcom/chery/common/PageConstants$Media$PicturePageId;,
        Lcom/chery/common/PageConstants$Media$VideoPageId;,
        Lcom/chery/common/PageConstants$Media$MediaPageId;
    }
.end annotation


# static fields
.field public static final ACTION_OPEN:Ljava/lang/String; = "com.chery.media.ACTION_OPEN"

.field public static final MEDIA_PAGE_ID_KEY:Ljava/lang/String; = "MediaPageId"

.field public static final PICTURE_PAGE_ID_KEY:Ljava/lang/String; = "PicturePageId"

.field public static final USB_TYPE_KEY:Ljava/lang/String; = "UsbType"

.field public static final VIDEO_PAGE_ID_KEY:Ljava/lang/String; = "VideoPageId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
