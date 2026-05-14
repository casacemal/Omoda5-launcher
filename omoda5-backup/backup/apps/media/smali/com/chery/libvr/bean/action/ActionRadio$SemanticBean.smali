.class public Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;
.super Ljava/lang/Object;
.source "ActionRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/bean/action/ActionRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemanticBean"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->action:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->position:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->type:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->action:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->value:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->position:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->action:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->position:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->value:Ljava/lang/String;

    return-object p0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->action:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->position:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->value:Ljava/lang/String;

    return-void
.end method
