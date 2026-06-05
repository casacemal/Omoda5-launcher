.class public Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;
.super Ljava/lang/Object;
.source "DiagnosticHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/DiagnosticHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiagnosticCapabilities"
.end annotation


# instance fields
.field private final mProperties:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->mProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->mProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 92
    return-void
.end method

.method public isFreezeFrameClearSupported()Z
    .locals 1

    .line 83
    const v0, 0x11e00d03

    invoke-virtual {p0, v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isSupported(I)Z

    move-result v0

    return v0
.end method

.method public isFreezeFrameInfoSupported()Z
    .locals 1

    .line 79
    const v0, 0x11e00d02

    invoke-virtual {p0, v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isSupported(I)Z

    move-result v0

    return v0
.end method

.method public isFreezeFrameSupported()Z
    .locals 1

    .line 75
    const v0, 0x11e00d01

    invoke-virtual {p0, v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isSupported(I)Z

    move-result v0

    return v0
.end method

.method public isLiveFrameSupported()Z
    .locals 1

    .line 71
    const v0, 0x11e00d00

    invoke-virtual {p0, v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isSupported(I)Z

    move-result v0

    return v0
.end method

.method public isSelectiveClearFreezeFramesSupported()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isSupported(I)Z

    move-result v0

    return v0
.end method

.method isSupported(I)Z
    .locals 2
    .param p1, "propertyId"    # I

    .line 67
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->mProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method setSupported(I)V
    .locals 2
    .param p1, "propertyId"    # I

    .line 63
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->mProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method
