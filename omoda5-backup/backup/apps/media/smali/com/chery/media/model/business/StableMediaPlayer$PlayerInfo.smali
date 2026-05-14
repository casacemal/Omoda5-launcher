.class Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/StableMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayerInfo"
.end annotation


# instance fields
.field public duration:J

.field public height:I

.field public position:J

.field public state:I

.field final synthetic this$0:Lcom/chery/media/model/business/StableMediaPlayer;

.field public width:I


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/StableMediaPlayer;)V
    .locals 2

    .line 73
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->state:I

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->duration:J

    .line 76
    iput-wide v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->position:J

    .line 77
    iput p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->width:I

    .line 78
    iput p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;->height:I

    return-void
.end method
