.class public Lcom/chery/media/model/business/DabProgramInfo;
.super Ljava/lang/Object;
.source "DabProgramInfo.java"


# instance fields
.field public duration:I

.field public ensembleId:I

.field public hasReserved:Z

.field public programName:Ljava/lang/String;

.field public scIds:I

.field public serviceId:I

.field public startTime:Lsw/com/dabdrmradio/DabEPGTime;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/chery/media/model/business/DabProgramInfo;->ensembleId:I

    .line 9
    iput v0, p0, Lcom/chery/media/model/business/DabProgramInfo;->serviceId:I

    .line 10
    iput v0, p0, Lcom/chery/media/model/business/DabProgramInfo;->scIds:I

    .line 12
    new-instance v0, Lsw/com/dabdrmradio/DabEPGTime;

    invoke-direct {v0}, Lsw/com/dabdrmradio/DabEPGTime;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/chery/media/model/business/DabProgramInfo;->hasReserved:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 20
    instance-of v0, p1, Lcom/chery/media/model/business/DabProgramInfo;

    if-eqz v0, :cond_1

    .line 22
    check-cast p1, Lcom/chery/media/model/business/DabProgramInfo;

    .line 23
    iget v0, p0, Lcom/chery/media/model/business/DabProgramInfo;->ensembleId:I

    iget v1, p1, Lcom/chery/media/model/business/DabProgramInfo;->ensembleId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/chery/media/model/business/DabProgramInfo;->serviceId:I

    iget v1, p1, Lcom/chery/media/model/business/DabProgramInfo;->serviceId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/chery/media/model/business/DabProgramInfo;->scIds:I

    iget v1, p1, Lcom/chery/media/model/business/DabProgramInfo;->scIds:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/chery/media/model/business/DabProgramInfo;->programName:Ljava/lang/String;

    iget-object v1, p1, Lcom/chery/media/model/business/DabProgramInfo;->programName:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    iget-object p1, p1, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 27
    invoke-virtual {p0, p1}, Lsw/com/dabdrmradio/DabEPGTime;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 30
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensembleId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/DabProgramInfo;->ensembleId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/DabProgramInfo;->serviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/DabProgramInfo;->scIds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", programName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/media/model/business/DabProgramInfo;->programName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 40
    invoke-virtual {v1}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 41
    invoke-virtual {v1}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMonth()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 42
    invoke-virtual {v2}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeDay()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 43
    invoke-virtual {v2}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeHour()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 44
    invoke-virtual {v1}, Lsw/com/dabdrmradio/DabEPGTime;->getEPGTimeMinute()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/DabProgramInfo;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasReserved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/chery/media/model/business/DabProgramInfo;->hasReserved:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
