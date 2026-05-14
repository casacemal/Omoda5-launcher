.class public Lcom/chery/libvr/bean/action/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private detail:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/chery/libvr/bean/action/Response;->resultCode:I

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/chery/libvr/bean/action/Response;->detail:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/chery/libvr/bean/action/Response;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/chery/libvr/bean/action/Response;->resultCode:I

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/chery/libvr/bean/action/Response;->detail:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/chery/libvr/bean/action/Response;->pkgName:Ljava/lang/String;

    .line 23
    iput p1, p0, Lcom/chery/libvr/bean/action/Response;->resultCode:I

    .line 24
    iput-object p2, p0, Lcom/chery/libvr/bean/action/Response;->detail:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/chery/libvr/bean/action/Response;->pkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/libvr/bean/action/Response;->detail:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/chery/libvr/bean/action/Response;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getResultCode()I
    .locals 0

    .line 29
    iget p0, p0, Lcom/chery/libvr/bean/action/Response;->resultCode:I

    return p0
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/chery/libvr/bean/action/Response;->detail:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/chery/libvr/bean/action/Response;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/chery/libvr/bean/action/Response;->resultCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/libvr/bean/action/Response;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", detail=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/libvr/bean/action/Response;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pkgName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/libvr/bean/action/Response;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
