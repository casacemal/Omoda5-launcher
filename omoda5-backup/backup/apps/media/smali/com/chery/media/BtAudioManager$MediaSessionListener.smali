.class public interface abstract Lcom/chery/media/BtAudioManager$MediaSessionListener;
.super Ljava/lang/Object;
.source "BtAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/BtAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaSessionListener"
.end annotation


# virtual methods
.method public abstract onConnectState(Z)V
.end method

.method public abstract updateMetadata(Landroid/media/MediaMetadata;)V
.end method

.method public abstract updatePlaybackState(Landroid/media/session/PlaybackState;)V
.end method
