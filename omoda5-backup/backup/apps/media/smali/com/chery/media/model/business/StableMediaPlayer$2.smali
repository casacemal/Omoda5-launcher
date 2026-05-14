.class Lcom/chery/media/model/business/StableMediaPlayer$2;
.super Ljava/lang/Thread;
.source "StableMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/StableMediaPlayer;->init()V
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

    .line 270
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$2;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$2;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$500(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "thread run"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 276
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 277
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$2;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$200(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 278
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$2;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v2}, Lcom/chery/media/model/business/StableMediaPlayer;->access$302(Lcom/chery/media/model/business/StableMediaPlayer;Landroid/os/Handler;)Landroid/os/Handler;

    move v0, v1

    .line 279
    :goto_0
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer$2;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v2}, Lcom/chery/media/model/business/StableMediaPlayer;->access$600(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer$2;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v2}, Lcom/chery/media/model/business/StableMediaPlayer;->access$300(Lcom/chery/media/model/business/StableMediaPlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/chery/media/model/business/StableMediaPlayer$2;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v3}, Lcom/chery/media/model/business/StableMediaPlayer;->access$600(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$2;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$600(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 283
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$2;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$200(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 284
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 286
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$2;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$700(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 287
    iget-object v3, p0, Lcom/chery/media/model/business/StableMediaPlayer$2;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/chery/media/model/business/StableMediaPlayer;->access$800(Lcom/chery/media/model/business/StableMediaPlayer;I)V

    goto :goto_1

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$2;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$700(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 291
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$2;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$500(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "thread end"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
