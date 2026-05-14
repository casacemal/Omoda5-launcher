.class public Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;
.super Ljava/lang/Object;
.source "NaviPOIInfo.java"


# instance fields
.field private address:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private distanceUnit:Ljava/lang/String;

.field private index:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->index:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->name:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->address:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->distance:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->distanceUnit:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->latitude:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->longitude:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->address:Ljava/lang/String;

    return-object p0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->distance:Ljava/lang/String;

    return-object p0
.end method

.method public getDistanceUnit()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->distanceUnit:Ljava/lang/String;

    return-object p0
.end method

.method public getIndex()Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->index:Ljava/lang/String;

    return-object p0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->latitude:Ljava/lang/String;

    return-object p0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->longitude:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->address:Ljava/lang/String;

    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->distance:Ljava/lang/String;

    return-void
.end method

.method public setDistanceUnit(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->distanceUnit:Ljava/lang/String;

    return-void
.end method

.method public setIndex(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->index:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NaviPOIInfo{index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->index:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", address=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", distance=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->distance:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", distanceUnit=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->distanceUnit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", latitude=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->latitude:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", longitude=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;->longitude:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
