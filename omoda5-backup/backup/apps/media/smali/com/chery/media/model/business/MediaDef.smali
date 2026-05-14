.class public Lcom/chery/media/model/business/MediaDef;
.super Ljava/lang/Object;
.source "MediaDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;,
        Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;,
        Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;,
        Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;,
        Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;,
        Lcom/chery/media/model/business/MediaDef$FileBaseInfo;,
        Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;
    }
.end annotation


# static fields
.field public static final USB_TYPE_1:I = 0x0

.field public static final USB_TYPE_2:I = 0x1

.field public static final USB_TYPE_END:I = 0x0

.field public static final USB_TYPE_NUM:I = 0x1

.field public static final USB_TYPE_None:I = -0x1

.field public static final USB_TYPE_START:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFolderAllMusicsCount(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)I
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->musicInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 216
    iget-object p0, p0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->subFolderInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    .line 217
    invoke-static {v1}, Lcom/chery/media/model/business/MediaDef;->getFolderAllMusicsCount(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static getFolderAllPicturesCount(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)I
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->pictureInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 232
    iget-object p0, p0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->subFolderInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    .line 233
    invoke-static {v1}, Lcom/chery/media/model/business/MediaDef;->getFolderAllPicturesCount(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static getFolderAllVideosCount(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)I
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->videoInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 224
    iget-object p0, p0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->subFolderInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    .line 225
    invoke-static {v1}, Lcom/chery/media/model/business/MediaDef;->getFolderAllVideosCount(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static getPageUsbType(Ljava/lang/String;)I
    .locals 4

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "USB2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :pswitch_1
    const-string v0, "USB1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    if-eq p0, v3, :cond_1

    return v2

    :cond_1
    return v3

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x27e34d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getUsbMusicAudioSource(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0
.end method

.method public static getUsbMusicTypeOfAudioSource(I)I
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getUsbName(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "none"

    goto :goto_0

    :cond_0
    const-string p0, "usb2"

    goto :goto_0

    :cond_1
    const-string p0, "usb1"

    :goto_0
    return-object p0
.end method

.method public static getUsbTypePage(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "USB_NONE"

    return-object p0

    :cond_0
    const-string p0, "USB2"

    return-object p0

    :cond_1
    const-string p0, "USB1"

    return-object p0
.end method
