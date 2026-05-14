.class public Lcom/chery/libvr/bean/responsedetail/MusicListResDetail;
.super Ljava/lang/Object;
.source "MusicListResDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;
    }
.end annotation


# instance fields
.field private semantic:Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail;->user:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;

    invoke-direct {v0}, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;-><init>()V

    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail;->semantic:Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;

    return-void
.end method


# virtual methods
.method public getSemantic()Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail;->semantic:Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;

    return-object p0
.end method

.method public getUser()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail;->user:Ljava/lang/String;

    return-object p0
.end method

.method public setSemantic(Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail;->semantic:Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail;->user:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicListResDetail{user=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", semantic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail;->semantic:Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
