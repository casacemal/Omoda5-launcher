.class public final Lcom/android/car/systeminterface/SystemInterface$Builder;
.super Ljava/lang/Object;
.source "SystemInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/systeminterface/SystemInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDisplayInterface:Lcom/android/car/systeminterface/DisplayInterface;

.field private mIOInterface:Lcom/android/car/systeminterface/IOInterface;

.field private mStorageMonitoringInterface:Lcom/android/car/systeminterface/StorageMonitoringInterface;

.field private mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

.field private mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

.field private mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultSystemInterface(Landroid/content/Context;)Lcom/android/car/systeminterface/SystemInterface$Builder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 200
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {}, Lcom/android/car/systeminterface/SystemInterface$Builder;->newSystemInterface()Lcom/android/car/systeminterface/SystemInterface$Builder;

    move-result-object v0

    .line 202
    .local v0, "builder":Lcom/android/car/systeminterface/SystemInterface$Builder;
    new-instance v1, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;

    invoke-direct {v1, p0}, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface$Builder;->withWakeLockInterface(Lcom/android/car/systeminterface/WakeLockInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;

    .line 203
    new-instance v1, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;

    iget-object v2, v0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;

    invoke-direct {v1, p0, v2}, Lcom/android/car/systeminterface/DisplayInterface$DefaultImpl;-><init>(Landroid/content/Context;Lcom/android/car/systeminterface/WakeLockInterface;)V

    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface$Builder;->withDisplayInterface(Lcom/android/car/systeminterface/DisplayInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;

    .line 205
    new-instance v1, Lcom/android/car/systeminterface/IOInterface$DefaultImpl;

    invoke-direct {v1, p0}, Lcom/android/car/systeminterface/IOInterface$DefaultImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface$Builder;->withIOInterface(Lcom/android/car/systeminterface/IOInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;

    .line 206
    new-instance v1, Lcom/android/car/systeminterface/StorageMonitoringInterface$DefaultImpl;

    invoke-direct {v1}, Lcom/android/car/systeminterface/StorageMonitoringInterface$DefaultImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface$Builder;->withStorageMonitoringInterface(Lcom/android/car/systeminterface/StorageMonitoringInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;

    .line 207
    new-instance v1, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;

    invoke-direct {v1, p0}, Lcom/android/car/systeminterface/SystemStateInterface$DefaultImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface$Builder;->withSystemStateInterface(Lcom/android/car/systeminterface/SystemStateInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;

    .line 208
    new-instance v1, Lcom/android/car/systeminterface/TimeInterface$DefaultImpl;

    invoke-direct {v1}, Lcom/android/car/systeminterface/TimeInterface$DefaultImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface$Builder;->withTimeInterface(Lcom/android/car/systeminterface/TimeInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;

    move-result-object v1

    return-object v1
.end method

.method public static fromBuilder(Lcom/android/car/systeminterface/SystemInterface$Builder;)Lcom/android/car/systeminterface/SystemInterface$Builder;
    .locals 2
    .param p0, "otherBuilder"    # Lcom/android/car/systeminterface/SystemInterface$Builder;

    .line 212
    invoke-static {}, Lcom/android/car/systeminterface/SystemInterface$Builder;->newSystemInterface()Lcom/android/car/systeminterface/SystemInterface$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mDisplayInterface:Lcom/android/car/systeminterface/DisplayInterface;

    .line 213
    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface$Builder;->withDisplayInterface(Lcom/android/car/systeminterface/DisplayInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mIOInterface:Lcom/android/car/systeminterface/IOInterface;

    .line 214
    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface$Builder;->withIOInterface(Lcom/android/car/systeminterface/IOInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mStorageMonitoringInterface:Lcom/android/car/systeminterface/StorageMonitoringInterface;

    .line 215
    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface$Builder;->withStorageMonitoringInterface(Lcom/android/car/systeminterface/StorageMonitoringInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

    .line 216
    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface$Builder;->withSystemStateInterface(Lcom/android/car/systeminterface/SystemStateInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    .line 217
    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface$Builder;->withTimeInterface(Lcom/android/car/systeminterface/TimeInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;

    .line 218
    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface$Builder;->withWakeLockInterface(Lcom/android/car/systeminterface/WakeLockInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;

    move-result-object v0

    .line 212
    return-object v0
.end method

.method public static newSystemInterface()Lcom/android/car/systeminterface/SystemInterface$Builder;
    .locals 1

    .line 196
    new-instance v0, Lcom/android/car/systeminterface/SystemInterface$Builder;

    invoke-direct {v0}, Lcom/android/car/systeminterface/SystemInterface$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/car/systeminterface/SystemInterface;
    .locals 8

    .line 253
    new-instance v7, Lcom/android/car/systeminterface/SystemInterface;

    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mDisplayInterface:Lcom/android/car/systeminterface/DisplayInterface;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/car/systeminterface/DisplayInterface;

    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mIOInterface:Lcom/android/car/systeminterface/IOInterface;

    .line 254
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/car/systeminterface/IOInterface;

    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mStorageMonitoringInterface:Lcom/android/car/systeminterface/StorageMonitoringInterface;

    .line 255
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/car/systeminterface/StorageMonitoringInterface;

    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

    .line 256
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/car/systeminterface/SystemStateInterface;

    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    .line 257
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/car/systeminterface/TimeInterface;

    iget-object v0, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;

    .line 258
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/car/systeminterface/WakeLockInterface;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/car/systeminterface/SystemInterface;-><init>(Lcom/android/car/systeminterface/DisplayInterface;Lcom/android/car/systeminterface/IOInterface;Lcom/android/car/systeminterface/StorageMonitoringInterface;Lcom/android/car/systeminterface/SystemStateInterface;Lcom/android/car/systeminterface/TimeInterface;Lcom/android/car/systeminterface/WakeLockInterface;)V

    .line 253
    return-object v7
.end method

.method public withDisplayInterface(Lcom/android/car/systeminterface/DisplayInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;
    .locals 0
    .param p1, "displayInterface"    # Lcom/android/car/systeminterface/DisplayInterface;

    .line 222
    iput-object p1, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mDisplayInterface:Lcom/android/car/systeminterface/DisplayInterface;

    .line 223
    return-object p0
.end method

.method public withIOInterface(Lcom/android/car/systeminterface/IOInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;
    .locals 0
    .param p1, "ioInterface"    # Lcom/android/car/systeminterface/IOInterface;

    .line 227
    iput-object p1, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mIOInterface:Lcom/android/car/systeminterface/IOInterface;

    .line 228
    return-object p0
.end method

.method public withStorageMonitoringInterface(Lcom/android/car/systeminterface/StorageMonitoringInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;
    .locals 0
    .param p1, "storageMonitoringInterface"    # Lcom/android/car/systeminterface/StorageMonitoringInterface;

    .line 233
    iput-object p1, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mStorageMonitoringInterface:Lcom/android/car/systeminterface/StorageMonitoringInterface;

    .line 234
    return-object p0
.end method

.method public withSystemStateInterface(Lcom/android/car/systeminterface/SystemStateInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;
    .locals 0
    .param p1, "systemStateInterface"    # Lcom/android/car/systeminterface/SystemStateInterface;

    .line 238
    iput-object p1, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

    .line 239
    return-object p0
.end method

.method public withTimeInterface(Lcom/android/car/systeminterface/TimeInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;
    .locals 0
    .param p1, "timeInterface"    # Lcom/android/car/systeminterface/TimeInterface;

    .line 243
    iput-object p1, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    .line 244
    return-object p0
.end method

.method public withWakeLockInterface(Lcom/android/car/systeminterface/WakeLockInterface;)Lcom/android/car/systeminterface/SystemInterface$Builder;
    .locals 0
    .param p1, "wakeLockInterface"    # Lcom/android/car/systeminterface/WakeLockInterface;

    .line 248
    iput-object p1, p0, Lcom/android/car/systeminterface/SystemInterface$Builder;->mWakeLockInterface:Lcom/android/car/systeminterface/WakeLockInterface;

    .line 249
    return-object p0
.end method
