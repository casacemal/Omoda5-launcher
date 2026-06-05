.class abstract Lcom/android/car/CarDiagnosticService$DiagnosticRecord;
.super Ljava/lang/Object;
.source "CarDiagnosticService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DiagnosticRecord"
.end annotation


# instance fields
.field protected mEnabled:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 1
    .param p1, "lock"    # Ljava/util/concurrent/locks/ReentrantLock;

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticRecord;->mEnabled:Z

    .line 576
    iput-object p1, p0, Lcom/android/car/CarDiagnosticService$DiagnosticRecord;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 577
    return-void
.end method


# virtual methods
.method abstract disableIfNeeded()Z
.end method

.method enable()V
    .locals 1

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticRecord;->mEnabled:Z

    .line 593
    return-void
.end method

.method isEnabled()Z
    .locals 1

    .line 588
    iget-boolean v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticRecord;->mEnabled:Z

    return v0
.end method

.method lock()V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticRecord;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 581
    return-void
.end method

.method unlock()V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticRecord;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 585
    return-void
.end method

.method abstract update(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;
.end method
