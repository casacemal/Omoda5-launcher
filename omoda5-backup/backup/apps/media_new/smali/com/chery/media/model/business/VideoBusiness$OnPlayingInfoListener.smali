.class public interface abstract Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;
.super Ljava/lang/Object;
.source "VideoBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/VideoBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPlayingInfoListener"
.end annotation


# virtual methods
.method public abstract onDurationChanged(IJ)V
.end method

.method public abstract onPlayingStateChanged(II)V
.end method

.method public abstract onPositionChanged(IJ)V
.end method

.method public abstract onVideoSizeNotify(ILandroid/util/Size;)V
.end method
