.class public Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;
.super Ljava/lang/Object;
.source "ActionCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/bean/action/ActionCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemanticBean"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->action:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->value:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->position:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->type:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->name:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 7

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->action:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->value:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->position:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->type:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->name:Ljava/lang/String;

    .line 58
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 60
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->action:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v3, v0, :cond_1

    .line 63
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->action:Ljava/lang/String;

    .line 64
    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->value:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v4, v0, :cond_2

    .line 67
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->action:Ljava/lang/String;

    .line 68
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->value:Ljava/lang/String;

    .line 69
    aget-object p1, p1, v3

    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->position:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    if-ne v5, v0, :cond_3

    .line 72
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->action:Ljava/lang/String;

    .line 73
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->value:Ljava/lang/String;

    .line 74
    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->position:Ljava/lang/String;

    .line 75
    aget-object p1, p1, v4

    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->type:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v6, 0x5

    if-ne v6, v0, :cond_4

    .line 78
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->action:Ljava/lang/String;

    .line 79
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->value:Ljava/lang/String;

    .line 80
    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->position:Ljava/lang/String;

    .line 81
    aget-object v0, p1, v4

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->type:Ljava/lang/String;

    .line 82
    aget-object p1, p1, v5

    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->name:Ljava/lang/String;

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->action:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->position:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->value:Ljava/lang/String;

    return-object p0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->action:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->position:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemanticBean{action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", value=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", position=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->position:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
