.class public Lcom/chery/libvr/bean/responsedetail/MediaSourceStateResDetail;
.super Ljava/lang/Object;
.source "MediaSourceStateResDetail.java"


# instance fields
.field private available:Z

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/MediaSourceStateResDetail;->source:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/chery/libvr/bean/responsedetail/MediaSourceStateResDetail;->available:Z

    return-void
.end method


# virtual methods
.method public getSource()Ljava/lang/String;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/MediaSourceStateResDetail;->source:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/chery/libvr/bean/responsedetail/MediaSourceStateResDetail;->available:Z

    return p0
.end method

.method public setAvailable(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/chery/libvr/bean/responsedetail/MediaSourceStateResDetail;->available:Z

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/MediaSourceStateResDetail;->source:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaSourceStateResDetail{source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/libvr/bean/responsedetail/MediaSourceStateResDetail;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/chery/libvr/bean/responsedetail/MediaSourceStateResDetail;->available:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
