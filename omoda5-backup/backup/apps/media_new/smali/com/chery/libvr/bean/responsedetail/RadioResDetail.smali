.class public Lcom/chery/libvr/bean/responsedetail/RadioResDetail;
.super Ljava/lang/Object;
.source "RadioResDetail.java"


# instance fields
.field private band:Ljava/lang/String;

.field private frequency:Ljava/lang/String;

.field private playState:Ljava/lang/String;

.field private resResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->playState:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->band:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->frequency:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->resResult:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBand()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->band:Ljava/lang/String;

    return-object p0
.end method

.method public getFrequency()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->frequency:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayState()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->playState:Ljava/lang/String;

    return-object p0
.end method

.method public getResResult()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->resResult:Ljava/lang/String;

    return-object p0
.end method

.method public setBand(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->band:Ljava/lang/String;

    return-void
.end method

.method public setFrequency(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->frequency:Ljava/lang/String;

    return-void
.end method

.method public setPlayState(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->playState:Ljava/lang/String;

    return-void
.end method

.method public setResResult(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->resResult:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioResDetail{playState=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->playState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", band=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->band:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", frequence=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->frequency:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resResult=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->resResult:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
