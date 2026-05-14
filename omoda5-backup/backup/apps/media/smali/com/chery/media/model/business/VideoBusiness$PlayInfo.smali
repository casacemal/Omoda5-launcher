.class Lcom/chery/media/model/business/VideoBusiness$PlayInfo;
.super Ljava/lang/Object;
.source "VideoBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/VideoBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;
    }
.end annotation


# static fields
.field public static final RESTORE_END:I = 0x2

.field public static final RESTORE_NONE:I = 0x0

.field public static final RESTORE_RESET:I = 0x3

.field public static final RESTORE_START:I = 0x1


# instance fields
.field public canPlay:Z

.field private currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

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

.field public expectedPlay:Z

.field public fastPlayRun:Ljava/lang/Runnable;

.field public fastPlayStatus:I

.field public isPlaying:Z

.field public playOnCanPlay:Z

.field public playingState:I

.field public playlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public playlistKey:Ljava/lang/String;

.field public playlistType:I

.field public position:J

.field public restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

.field public restoreState:I

.field public usbName:Ljava/lang/String;

.field public usbType:I

.field public videoSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlistType:I

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->errorlist:Ljava/util/List;

    .line 93
    iput v0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playingState:I

    .line 94
    iput-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->isPlaying:Z

    const-wide/16 v1, 0x0

    .line 95
    iput-wide v1, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->duration:J

    .line 96
    iput-wide v1, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->position:J

    .line 98
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->videoSize:Landroid/util/Size;

    .line 100
    iput-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->canPlay:Z

    .line 101
    iput-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->expectedPlay:Z

    .line 102
    iput-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playOnCanPlay:Z

    .line 105
    iput v0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayStatus:I

    .line 127
    new-instance v1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    invoke-direct {v1}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    .line 133
    iput v0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreState:I

    .line 81
    iput p1, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbType:I

    .line 82
    invoke-static {p1}, Lcom/chery/media/model/business/MediaDef;->getUsbName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    return-object p0
.end method

.method static synthetic access$402(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    return-object p1
.end method
