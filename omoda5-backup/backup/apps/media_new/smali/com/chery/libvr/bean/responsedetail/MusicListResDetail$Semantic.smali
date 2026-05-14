.class public Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;
.super Ljava/lang/Object;
.source "MusicListResDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/bean/responsedetail/MusicListResDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Semantic"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private musicInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/chery/libvr/bean/responsedetail/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;->action:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;->source:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;->musicInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;->action:Ljava/lang/String;

    return-object p0
.end method

.method public getMusicInfos()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/chery/libvr/bean/responsedetail/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;->musicInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getSource()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;->source:Ljava/lang/String;

    return-object p0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;->action:Ljava/lang/String;

    return-void
.end method

.method public setMusicInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/chery/libvr/bean/responsedetail/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;->musicInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;->source:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Semantic{action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", musicInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/MusicListResDetail$Semantic;->musicInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
