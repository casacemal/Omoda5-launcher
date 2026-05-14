.class public Lcom/chery/media/model/business/RadioDef;
.super Ljava/lang/Object;
.source "RadioDef.java"


# static fields
.field public static final HMI_TUNER_STATE_AUTO_STORE:I = 0x5

.field public static final HMI_TUNER_STATE_IDLE:I = 0x0

.field public static final HMI_TUNER_STATE_SCAN:I = 0x3

.field public static final HMI_TUNER_STATE_SCAN_PLAYING:I = 0x4

.field public static final HMI_TUNER_STATE_SEEK:I = 0x2

.field public static final HMI_TUNER_STATE_STEP:I = 0x1


# instance fields
.field public band:I

.field public frequencyKhz:I

.field public isCollection:Z

.field public isCurrentFreq:Z

.field public isPlaying:Z

.field public isValid:Z

.field public signalStrength:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/chery/media/model/business/RadioDef;->isCurrentFreq:Z

    const/4 v1, 0x1

    .line 15
    iput v1, p0, Lcom/chery/media/model/business/RadioDef;->band:I

    const v1, 0x155cc

    .line 16
    iput v1, p0, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    const-string v1, ""

    .line 17
    iput-object v1, p0, Lcom/chery/media/model/business/RadioDef;->title:Ljava/lang/String;

    .line 18
    iput-boolean v0, p0, Lcom/chery/media/model/business/RadioDef;->isCollection:Z

    .line 19
    iput-boolean v0, p0, Lcom/chery/media/model/business/RadioDef;->isPlaying:Z

    .line 20
    iput v0, p0, Lcom/chery/media/model/business/RadioDef;->signalStrength:I

    .line 21
    iput-boolean v0, p0, Lcom/chery/media/model/business/RadioDef;->isValid:Z

    return-void
.end method
