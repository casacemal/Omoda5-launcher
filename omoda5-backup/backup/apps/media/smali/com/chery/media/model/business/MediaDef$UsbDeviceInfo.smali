.class public Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;
.super Ljava/lang/Object;
.source "MediaDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/MediaDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsbDeviceInfo"
.end annotation


# instance fields
.field public mountPath:Ljava/lang/String;

.field public mounted:Z

.field public musicsCount:I

.field public picturesCount:I

.field public scanStatus:I

.field public usbName:Ljava/lang/String;

.field public usbType:I

.field public videosCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mounted:Z

    const/16 v1, 0x20

    .line 100
    iput v1, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->scanStatus:I

    const-string v1, ""

    .line 101
    iput-object v1, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mountPath:Ljava/lang/String;

    .line 102
    iput v0, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->musicsCount:I

    .line 103
    iput v0, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->videosCount:I

    .line 104
    iput v0, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->picturesCount:I

    .line 79
    iput p1, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->usbType:I

    .line 80
    invoke-static {p1}, Lcom/chery/media/model/business/MediaDef;->getUsbName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->usbName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbDeviceInfo{usbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->usbType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", usbName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->usbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mounted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mounted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", scanStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->scanStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mountPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mountPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", musicsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->musicsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videosCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->videosCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", picturesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->picturesCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
