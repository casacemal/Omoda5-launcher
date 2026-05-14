.class Lcom/chery/media/model/business/StableMediaPlayer$3;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/StableMediaPlayer;->doAction_addPlayer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/StableMediaPlayer;

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/StableMediaPlayer;I)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$3;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iput p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$3;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 737
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$3;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$900(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$3;->val$key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;

    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$3;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/StableMediaPlayer$PlayerInfo;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
