.class public Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;
.super Ljava/lang/Object;
.source "ActionNaviCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/bean/action/ActionNaviCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemanticBean"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private index:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->index:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->action:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->name:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->latitude:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->longitude:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->action:Ljava/lang/String;

    return-object p0
.end method

.method public getIndex()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->index:Ljava/lang/String;

    return-object p0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->latitude:Ljava/lang/String;

    return-object p0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->longitude:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->action:Ljava/lang/String;

    return-void
.end method

.method public setIndex(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->index:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemanticBean{index=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->index:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", action=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->action:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", latitude=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->latitude:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", longitude=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->longitude:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionNaviCommon$SemanticBean;->type:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
