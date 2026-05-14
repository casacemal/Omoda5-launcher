.class Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

.field final synthetic val$localMusicPath:Ljava/lang/String;

.field final synthetic val$usbMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;Ljava/lang/String;Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iput-object p2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->val$localMusicPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->val$usbMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 584
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2900(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    move-result-object v0

    const/16 v1, 0xbb8

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    new-instance v2, Lcom/chery/media/view/dialog/Dialog_SingleText;

    iget-object v3, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v3, v3, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v3}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$000(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/chery/media/view/dialog/Dialog_SingleText;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2902(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/view/dialog/Dialog_SingleText;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    .line 586
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2900(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    move-result-object v0

    new-instance v2, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4$1;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4$1;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;)V

    invoke-virtual {v0, v2}, Lcom/chery/media/view/dialog/Dialog_SingleText;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 592
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2900(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    move-result-object v0

    iget-object v2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v2, v2, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$000(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0071

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/chery/media/view/dialog/Dialog_SingleText;->showText(Ljava/lang/String;I)V

    goto :goto_0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2900(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chery/media/view/dialog/Dialog_SingleText;->show(I)V

    .line 598
    :goto_0
    new-instance v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->val$localMusicPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;-><init>(Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->val$usbMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iput-object v1, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    .line 601
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v1, v1, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3000(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 602
    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v1, v1, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1700(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3000(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 605
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3100(Lcom/chery/media/model/business/LocalMusicBusiness;)V

    .line 606
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$000(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v1, v1, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$2400(Lcom/chery/media/model/business/LocalMusicBusiness;)J

    move-result-wide v1

    const-string v3, "com.chery.media.localmusic.size"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 607
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3200(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;

    .line 608
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v3, v3, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v3}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1700(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Lcom/chery/media/model/business/LocalMusicBusiness$OnMusicsListener;->onMusicsChanged(Ljava/util/List;)V

    goto :goto_1

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$3300(Lcom/chery/media/model/business/LocalMusicBusiness;)I

    move-result v0

    if-nez v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object v0, v0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask$4;->this$1:Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$AddMusicAsyncTask;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1700(Lcom/chery/media/model/business/LocalMusicBusiness;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->changePlaylist(ILjava/util/List;)V

    :cond_2
    return-void
.end method
