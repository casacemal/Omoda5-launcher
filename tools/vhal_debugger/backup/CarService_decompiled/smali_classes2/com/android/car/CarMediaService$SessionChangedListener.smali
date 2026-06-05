.class Lcom/android/car/CarMediaService$SessionChangedListener;
.super Ljava/lang/Object;
.source "CarMediaService.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarMediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionChangedListener"
.end annotation


# instance fields
.field private final mCurrentUser:I

.field final synthetic this$0:Lcom/android/car/CarMediaService;


# direct methods
.method constructor <init>(Lcom/android/car/CarMediaService;I)V
    .locals 0
    .param p2, "currentUser"    # I

    .line 364
    iput-object p1, p0, Lcom/android/car/CarMediaService$SessionChangedListener;->this$0:Lcom/android/car/CarMediaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput p2, p0, Lcom/android/car/CarMediaService$SessionChangedListener;->mCurrentUser:I

    .line 366
    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 370
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget v1, p0, Lcom/android/car/CarMediaService$SessionChangedListener;->mCurrentUser:I

    if-eq v0, v1, :cond_0

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Active session callback for old user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarMediaService$SessionChangedListener;->mCurrentUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.MEDIA"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarMediaService$SessionChangedListener;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v0}, Lcom/android/car/CarMediaService;->access$1100(Lcom/android/car/CarMediaService;)Lcom/android/car/CarMediaService$MediaSessionUpdater;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/car/CarMediaService$MediaSessionUpdater;->access$1000(Lcom/android/car/CarMediaService$MediaSessionUpdater;Ljava/util/List;)V

    .line 375
    return-void
.end method
