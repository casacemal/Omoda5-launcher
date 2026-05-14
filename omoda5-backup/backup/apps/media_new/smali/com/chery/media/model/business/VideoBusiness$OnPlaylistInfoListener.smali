.class public interface abstract Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;
.super Ljava/lang/Object;
.source "VideoBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/VideoBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPlaylistInfoListener"
.end annotation


# virtual methods
.method public abstract onCurrentPlayingChanged(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V
.end method

.method public abstract onPlaylistChanged(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;)V"
        }
    .end annotation
.end method
