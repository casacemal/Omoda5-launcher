.class final Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;
.super Landroid/car/ICarBugreportCallback$Stub;
.source "CarBugreportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/CarBugreportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CarBugreportManagerCallbackWrapper"
.end annotation


# instance fields
.field private final mWeakCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/CarBugreportManager$CarBugreportManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;Landroid/os/Handler;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Landroid/car/ICarBugreportCallback$Stub;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;->mWeakCallback:Ljava/lang/ref/WeakReference;

    .line 120
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic lambda$onError$1(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;I)V
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Landroid/car/CarBugreportManager$CarBugreportManagerCallback;->onError(I)V

    return-void
.end method

.method static synthetic lambda$onProgress$0(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;F)V
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Landroid/car/CarBugreportManager$CarBugreportManagerCallback;->onProgress(F)V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    .line 134
    iget-object v0, p0, Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;->mWeakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

    .line 135
    iget-object p0, p0, Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 137
    new-instance v1, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$6ynqvb6TW8a-N8urXMTzbjfrmsk;

    invoke-direct {v1, v0, p1}, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$6ynqvb6TW8a-N8urXMTzbjfrmsk;-><init>(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onFinished()V
    .locals 2

    .line 143
    iget-object v0, p0, Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;->mWeakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

    .line 144
    iget-object p0, p0, Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 146
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/car/-$$Lambda$xrCRTzZqIh_Vz-aS3bmIqYgze-s;

    invoke-direct {v1, v0}, Landroid/car/-$$Lambda$xrCRTzZqIh_Vz-aS3bmIqYgze-s;-><init>(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onProgress(F)V
    .locals 2

    .line 125
    iget-object v0, p0, Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;->mWeakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarBugreportManager$CarBugreportManagerCallback;

    .line 126
    iget-object p0, p0, Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 128
    new-instance v1, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$SKlkbH2yc5GbUZezB8cF5ckvnkk;

    invoke-direct {v1, v0, p1}, Landroid/car/-$$Lambda$CarBugreportManager$CarBugreportManagerCallbackWrapper$SKlkbH2yc5GbUZezB8cF5ckvnkk;-><init>(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;F)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
