.class public Lcom/chery/libvr/bean/action/ActionMusicPLay;
.super Ljava/lang/Object;
.source "ActionMusicPLay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;
    }
.end annotation


# instance fields
.field private semantic:Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay;->user:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;-><init>()V

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay;->semantic:Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;

    return-void
.end method


# virtual methods
.method public getSemantic()Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay;->semantic:Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;

    return-object p0
.end method

.method public getUser()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay;->user:Ljava/lang/String;

    return-object p0
.end method

.method public setSemantic(Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay;->semantic:Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay;->user:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionMusicPLay{user=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay;->semantic:Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;

    .line 21
    invoke-static {v2}, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->access$000(Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay;->semantic:Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;

    .line 22
    invoke-static {v2}, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->access$100(Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", artist="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay;->semantic:Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;

    .line 23
    invoke-static {v2}, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->access$200(Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", album="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay;->semantic:Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;

    .line 24
    invoke-static {v2}, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->access$300(Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", source="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay;->semantic:Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;

    .line 25
    invoke-static {p0}, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->access$400(Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
