.class Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

.field final synthetic val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iput-object p2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 717
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3000(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 718
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1700(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 719
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3000(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 721
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3100(Lcom/chery/media/model/business/LocalMusicBusiness;)V

    .line 722
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$000(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v1, v1, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2400(Lcom/chery/media/model/business/LocalMusicBusiness;)J

    move-result-wide v1

    const-string v3, "com.chery.media.localmusic.size"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 723
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3200(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;

    .line 724
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v3, v3, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v3}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1700(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;->onMusicsChanged(Ljava/util/List;)V

    goto :goto_0

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$800(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$800(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 729
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v1, v1, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$800(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/chery/media/util/Utils;->generateRandomList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3702(Lcom/chery/media/model/business/LocalMusicBusiness;Ljava/util/List;)Ljava/util/List;

    .line 730
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness;->errorlist:Ljava/util/List;

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->val$localMusicInfo:Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 731
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3800(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;

    .line 732
    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v2, v2, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3300(Lcom/chery/media/model/business/LocalMusicBusiness;)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask$3;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;

    iget-object v4, v4, Lcom/chery/media/model/business/LocalMusicBusiness$DeleteMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v4}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$800(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2, v3}, Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;->onPlaylistChanged(ILjava/util/List;)V

    goto :goto_1

    :cond_1
    return-void
.end method
