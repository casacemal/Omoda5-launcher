.class Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;
.super Ljava/lang/Object;
.source "UsbMusicBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/UsbMusicBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;
    }
.end annotation


# static fields
.field public static final RESTORE_END:I = 0x2

.field public static final RESTORE_NONE:I = 0x0

.field public static final RESTORE_RESET:I = 0x3

.field public static final RESTORE_START:I = 0x1


# instance fields
.field public audioFocus:I

.field public audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public audioFocusRequest:Landroid/media/AudioFocusRequest;

.field public audioFocusSource:I

.field public canPlay:Z

.field public currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

.field public duration:J

.field public errorlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fastPlayRun:Ljava/lang/Runnable;

.field public fastPlayStatus:I

.field public isPlaying:Z

.field public playMode:I

.field public playOnCanPlay:Z

.field public playlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field public playlistKey:Ljava/lang/String;

.field public playlistType:I

.field public position:J

.field public randomPlaylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field public restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

.field public restoreState:I

.field public usbName:Ljava/lang/String;

.field public usbType:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlistType:I

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->randomPlaylist:Ljava/util/List;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->errorlist:Ljava/util/List;

    .line 83
    iput-boolean v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->isPlaying:Z

    const-wide/16 v1, 0x0

    .line 84
    iput-wide v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->duration:J

    .line 85
    iput-wide v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->position:J

    const/4 v1, -0x1

    .line 90
    iput v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->audioFocus:I

    .line 92
    iput-boolean v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->canPlay:Z

    .line 93
    iput-boolean v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playOnCanPlay:Z

    .line 96
    iput v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayStatus:I

    const/4 v1, 0x2

    .line 98
    iput v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playMode:I

    .line 122
    new-instance v1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    invoke-direct {v1}, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    .line 128
    iput v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreState:I

    .line 70
    iput p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbType:I

    .line 71
    invoke-static {p1}, Lcom/chery/media/model/business/MediaDef;->getUsbName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    return-void
.end method
