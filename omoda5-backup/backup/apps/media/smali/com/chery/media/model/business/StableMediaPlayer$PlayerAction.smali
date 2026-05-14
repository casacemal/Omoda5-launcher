.class Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/StableMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayerAction"
.end annotation


# instance fields
.field public action:I

.field public key:I

.field public param1:Ljava/lang/Object;

.field public param2:Ljava/lang/Object;

.field final synthetic this$0:Lcom/chery/media/model/business/StableMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/chery/media/model/business/StableMediaPlayer;II)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    .line 175
    iput p3, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    return-void
.end method

.method public constructor <init>(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/Object;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    .line 179
    iput p3, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    .line 180
    iput-object p4, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->param1:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    .line 184
    iput p3, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    .line 185
    iput-object p4, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->param1:Ljava/lang/Object;

    .line 186
    iput-object p5, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->param2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerAction{key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->action:I

    .line 196
    invoke-static {v1}, Lcom/chery/media/model/business/StableMediaPlayer;->access$000(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", param1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->param1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", param2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerAction;->param2:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
