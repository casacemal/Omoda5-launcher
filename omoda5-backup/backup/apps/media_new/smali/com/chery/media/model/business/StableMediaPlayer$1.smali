.class Lcom/chery/media/model/business/StableMediaPlayer$1;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/StableMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/StableMediaPlayer;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/StableMediaPlayer;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$1;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$1;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$400(Lcom/chery/media/model/business/StableMediaPlayer;)V

    return-void
.end method
