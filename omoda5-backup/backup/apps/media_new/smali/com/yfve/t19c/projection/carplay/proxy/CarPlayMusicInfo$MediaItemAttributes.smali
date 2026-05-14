.class public Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;
.super Ljava/lang/Object;
.source "CarPlayMusicInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaItemAttributes"
.end annotation


# instance fields
.field public mbMediaItemIsBanSupported:Z

.field public mbMediaItemIsBanned:Z

.field public mbMediaItemIsLikeSupported:Z

.field public mbMediaItemIsLiked:Z

.field public mbMediaItemIsResidentOnDevice:Z

.field public meMediaItemMediaType:I

.field public mlMediaItemAlbumArtistPersistentIdentifier:J

.field public mlMediaItemAlbumPersistentIdentifier:J

.field public mlMediaItemArtistPersistentIdentifier:J

.field public mlMediaItemComposerPersistentIdentifier:J

.field public mlMediaItemGenrePersistentIdentifier:J

.field public mlMediaItemPersistentIdentifier:J

.field public mlMediaItemPlaybackDurationInMilliseconds:J

.field public mnMediaItemAlbumDiscCount:I

.field public mnMediaItemAlbumDiscNumber:I

.field public mnMediaItemAlbumTrackCount:I

.field public mnMediaItemAlbumTrackNumber:I

.field public mnMediaItemArtworkFileTransferIdentifier:I

.field public mnMediaItemChapterCount:I

.field public msMediaItemAlbumArtist:Ljava/lang/String;

.field public msMediaItemAlbumTitle:Ljava/lang/String;

.field public msMediaItemArtist:Ljava/lang/String;

.field public msMediaItemComposer:Ljava/lang/String;

.field public msMediaItemGenre:Ljava/lang/String;

.field public msMediaItemRating:Ljava/lang/String;

.field public msMediaItemTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;


# direct methods
.method public constructor <init>(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
