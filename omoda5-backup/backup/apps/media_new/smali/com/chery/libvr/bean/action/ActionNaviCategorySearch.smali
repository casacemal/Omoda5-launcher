.class public Lcom/chery/libvr/bean/action/ActionNaviCategorySearch;
.super Ljava/lang/Object;
.source "ActionNaviCategorySearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;
    }
.end annotation


# instance fields
.field private semantic:Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;-><init>()V

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch;->semantic:Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch;->user:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;-><init>()V

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch;->semantic:Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch;->user:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch;->user:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch;->semantic:Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;

    return-void
.end method


# virtual methods
.method public getSemantic()Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch;->semantic:Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;

    return-object p0
.end method

.method public getUser()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch;->user:Ljava/lang/String;

    return-object p0
.end method

.method public setSemantic(Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch;->semantic:Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch;->user:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionNaviCategorySearch{semantic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch;->semantic:Lcom/chery/libvr/bean/action/ActionNaviCategorySearch$SemanticBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionNaviCategorySearch;->user:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
