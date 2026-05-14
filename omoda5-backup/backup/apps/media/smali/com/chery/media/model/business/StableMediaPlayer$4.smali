.class Lcom/chery/media/model/business/StableMediaPlayer$4;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/StableMediaPlayer;->doAction_removePlayer(I)V
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

    .line 752
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$4;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iput p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$4;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$4;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$900(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/HashMap;

    move-result-object v0

    iget p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$4;->val$key:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
