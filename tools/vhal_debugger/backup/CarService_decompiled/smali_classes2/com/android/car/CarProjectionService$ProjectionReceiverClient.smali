.class Lcom/android/car/CarProjectionService$ProjectionReceiverClient;
.super Ljava/lang/Object;
.source "CarProjectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarProjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProjectionReceiverClient"
.end annotation


# instance fields
.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mProjectionStatus:Landroid/car/projection/ProjectionStatus;


# direct methods
.method constructor <init>(Landroid/os/IBinder$DeathRecipient;)V
    .locals 0
    .param p1, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    iput-object p1, p0, Lcom/android/car/CarProjectionService$ProjectionReceiverClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1049
    return-void
.end method

.method static synthetic access$700(Lcom/android/car/CarProjectionService$ProjectionReceiverClient;)Landroid/car/projection/ProjectionStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarProjectionService$ProjectionReceiverClient;

    .line 1043
    iget-object v0, p0, Lcom/android/car/CarProjectionService$ProjectionReceiverClient;->mProjectionStatus:Landroid/car/projection/ProjectionStatus;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/car/CarProjectionService$ProjectionReceiverClient;Landroid/car/projection/ProjectionStatus;)Landroid/car/projection/ProjectionStatus;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarProjectionService$ProjectionReceiverClient;
    .param p1, "x1"    # Landroid/car/projection/ProjectionStatus;

    .line 1043
    iput-object p1, p0, Lcom/android/car/CarProjectionService$ProjectionReceiverClient;->mProjectionStatus:Landroid/car/projection/ProjectionStatus;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/car/CarProjectionService$ProjectionReceiverClient;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarProjectionService$ProjectionReceiverClient;

    .line 1043
    iget-object v0, p0, Lcom/android/car/CarProjectionService$ProjectionReceiverClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProjectionReceiverClient{mDeathRecipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarProjectionService$ProjectionReceiverClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProjectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarProjectionService$ProjectionReceiverClient;->mProjectionStatus:Landroid/car/projection/ProjectionStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
