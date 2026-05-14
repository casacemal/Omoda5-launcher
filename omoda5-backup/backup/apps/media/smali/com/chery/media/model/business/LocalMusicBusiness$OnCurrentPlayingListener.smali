.class public interface abstract Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/LocalMusicBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCurrentPlayingListener"
.end annotation


# virtual methods
.method public abstract onCurrentPlayingChanged(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V
.end method

.method public abstract onPlaylistChanged(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;)V"
        }
    .end annotation
.end method
