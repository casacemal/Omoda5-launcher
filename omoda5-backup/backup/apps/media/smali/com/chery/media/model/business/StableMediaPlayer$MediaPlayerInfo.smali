.class Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/StableMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaPlayerInfo"
.end annotation


# instance fields
.field public mCheckPosition:Ljava/lang/Runnable;

.field public mMedia:Ljava/lang/String;

.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field public mMediaPlayerState:I

.field public mReactivatedPosition:J

.field final synthetic this$0:Lcom/chery/media/model/business/StableMediaPlayer;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/StableMediaPlayer;I)V
    .locals 2

    .line 208
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const-wide/16 v0, -0x1

    .line 227
    iput-wide v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mReactivatedPosition:J

    .line 209
    new-instance v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo$1;-><init>(Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;Lcom/chery/media/model/business/StableMediaPlayer;I)V

    iput-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mCheckPosition:Ljava/lang/Runnable;

    return-void
.end method
