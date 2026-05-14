.class public Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;
.super Ljava/lang/Object;
.source "ActionMusicPLay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/bean/action/ActionMusicPLay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemanticBean"
.end annotation


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->name:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->position:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->artist:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->album:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->source:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->position:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->artist:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->album:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->source:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->album:Ljava/lang/String;

    return-object p0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->position:Ljava/lang/String;

    return-object p0
.end method

.method public getSource()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->source:Ljava/lang/String;

    return-object p0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->album:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->artist:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->position:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionMusicPLay$SemanticBean;->source:Ljava/lang/String;

    return-void
.end method
