.class public Lcom/chery/libvr/bean/responsedetail/NaviPOIResDetail$Semantic;
.super Ljava/lang/Object;
.source "NaviPOIResDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/bean/responsedetail/NaviPOIResDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Semantic"
.end annotation


# instance fields
.field private NaviPOIInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;",
            ">;"
        }
    .end annotation
.end field

.field private action:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIResDetail$Semantic;->action:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIResDetail$Semantic;->NaviPOIInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIResDetail$Semantic;->action:Ljava/lang/String;

    return-object p0
.end method

.method public getNaviPOIInfos()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIResDetail$Semantic;->NaviPOIInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIResDetail$Semantic;->action:Ljava/lang/String;

    return-void
.end method

.method public setNaviPOIInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/chery/libvr/bean/responsedetail/NaviPOIInfo;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIResDetail$Semantic;->NaviPOIInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Semantic{action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIResDetail$Semantic;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", NaviPOIInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/libvr/bean/responsedetail/NaviPOIResDetail$Semantic;->NaviPOIInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
