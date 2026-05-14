.class public Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;
.super Ljava/lang/Object;
.source "ActionNaviCategorySearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/bean/action/ActionNaviCategorySearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemanticBean"
.end annotation


# instance fields
.field private naviCategory:Ljava/lang/String;

.field private naviDstAddr:Ljava/lang/String;

.field private naviSearchMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;->naviCategory:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;->naviDstAddr:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;->naviSearchMethod:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNaviCategory()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;->naviCategory:Ljava/lang/String;

    return-object p0
.end method

.method public getNaviDstAddr()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;->naviDstAddr:Ljava/lang/String;

    return-object p0
.end method

.method public getNaviSearchMethod()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;->naviSearchMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setNaviCategory(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;->naviCategory:Ljava/lang/String;

    return-void
.end method

.method public setNaviDstAddr(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;->naviDstAddr:Ljava/lang/String;

    return-void
.end method

.method public setNaviSearchMethod(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;->naviSearchMethod:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemanticBean{naviCategory=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;->naviCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", naviDstAddr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;->naviDstAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", naviSearchMethod=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;->naviSearchMethod:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
