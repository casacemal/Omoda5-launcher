.class public Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;
.super Lcom/chery/media/model/business/MediaDef$FileBaseInfo;
.source "MediaDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/MediaDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsbPictureInfo"
.end annotation


# instance fields
.field public height:I

.field public mimeType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public size:J

.field public width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 187
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/MediaDef$FileBaseInfo;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    .line 180
    iput-object p1, p0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->name:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 181
    iput-wide v0, p0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->size:J

    .line 182
    iput-object p1, p0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->mimeType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 183
    iput p1, p0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->width:I

    .line 184
    iput p1, p0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->height:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbPictureInfo{path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mimeType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
