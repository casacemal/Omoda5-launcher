.class public Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;
.super Ljava/lang/Object;
.source "SystemResDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/bean/responsedetail/SystemResDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Semantic"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;->action:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;->state:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;->position:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;->action:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;->position:Ljava/lang/String;

    return-object p0
.end method

.method public getState()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;->state:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;->action:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;->position:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;->state:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Semantic{action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", state=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;->state:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", position=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;->position:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/SystemResDetail$Semantic;->type:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
