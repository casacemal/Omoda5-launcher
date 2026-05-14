.class Lcom/chery/media/model/business/StableMediaPlayer$5;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/StableMediaPlayer;->doAction_setMedia(ILjava/lang/String;)V
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

    .line 828
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$5;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iput p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$5;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 831
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$5;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$5;->val$key:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1000(Lcom/chery/media/model/business/StableMediaPlayer;II)V

    .line 832
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$5;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$5;->val$key:I

    invoke-static {v0, p0, v2}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1100(Lcom/chery/media/model/business/StableMediaPlayer;II)V

    return-void
.end method
