.class public Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;
.super Ljava/lang/Object;
.source "CarPlayMusicInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlaybackAttributes"
.end annotation


# instance fields
.field public mbPlaybackAppleMusicRadioAd:Z

.field public mbPlaybackSetElapsedTimeAvailable:Z

.field public mePlaybackRepeatMode:I

.field public mePlaybackShuffleMode:I

.field public mePlaybackStatus:I

.field public mlPlaybackAppleMusicRadioStationMediaPlaylistID:J

.field public mlPlaybackElapsedTimeInMilliseconds:J

.field public mnPlaybackQueueChapterIndex:I

.field public mnPlaybackQueueCount:I

.field public mnPlaybackQueueIndex:I

.field public mnPlaybackSpeed:I

.field public msPlaybackAppBundleID:Ljava/lang/String;

.field public msPlaybackAppName:Ljava/lang/String;

.field public msPlaybackAppleMusicRadioStationName:Ljava/lang/String;

.field public msPlaybackMediaLibraryUniqueIdentifier:Ljava/lang/String;

.field final synthetic this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;


# direct methods
.method public constructor <init>(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
