.class public interface abstract Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/StableMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallbackListener"
.end annotation


# virtual methods
.method public abstract onDurationChanged(IJ)V
.end method

.method public abstract onMediaChanged(ILjava/lang/String;)V
.end method

.method public abstract onPositionChanged(IJ)V
.end method

.method public abstract onStateChanged(IILjava/lang/String;)V
.end method

.method public abstract onVideoSizeNotify(III)V
.end method
