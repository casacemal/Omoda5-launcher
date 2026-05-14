.class public Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;
.super Ljava/lang/Object;
.source "ActionSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/libvr/bean/action/ActionSetting;
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 76
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->action:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->value:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->type:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->position:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 6

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 76
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->action:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->value:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->type:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->position:Ljava/lang/String;

    .line 55
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 57
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->action:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v3, v0, :cond_1

    .line 60
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->action:Ljava/lang/String;

    .line 61
    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->value:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v4, v0, :cond_2

    .line 64
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->action:Ljava/lang/String;

    .line 65
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->value:Ljava/lang/String;

    .line 66
    aget-object p1, p1, v3

    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->position:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    if-ne v5, v0, :cond_3

    .line 69
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->action:Ljava/lang/String;

    .line 70
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->value:Ljava/lang/String;

    .line 71
    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->position:Ljava/lang/String;

    .line 72
    aget-object p1, p1, v4

    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->type:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->action:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->value:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->position:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->action:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->position:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->value:Ljava/lang/String;

    return-object p0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->action:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->position:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/chery/libvr/bean/action/ActionSetting$SemanticBean;->value:Ljava/lang/String;

    return-void
.end method
