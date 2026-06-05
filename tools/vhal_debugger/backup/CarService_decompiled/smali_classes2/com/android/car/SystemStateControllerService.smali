.class public Lcom/android/car/SystemStateControllerService;
.super Ljava/lang/Object;
.source "SystemStateControllerService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# instance fields
.field private final mCarAudioService:Lcom/android/car/audio/CarAudioService;

.field private final mICarImpl:Lcom/android/car/ICarImpl;

.field private final mLockWhenMuting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/audio/CarAudioService;Lcom/android/car/ICarImpl;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carAudioService"    # Lcom/android/car/audio/CarAudioService;
    .param p3, "carImpl"    # Lcom/android/car/ICarImpl;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/android/car/SystemStateControllerService;->mCarAudioService:Lcom/android/car/audio/CarAudioService;

    .line 33
    iput-object p3, p0, Lcom/android/car/SystemStateControllerService;->mICarImpl:Lcom/android/car/ICarImpl;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f040008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/car/SystemStateControllerService;->mLockWhenMuting:Z

    .line 36
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 48
    return-void
.end method

.method public init()V
    .locals 0

    .line 40
    return-void
.end method

.method public release()V
    .locals 0

    .line 44
    return-void
.end method
