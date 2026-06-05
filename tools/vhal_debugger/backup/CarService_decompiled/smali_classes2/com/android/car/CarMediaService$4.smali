.class Lcom/android/car/CarMediaService$4;
.super Landroid/media/session/MediaController$Callback;
.source "CarMediaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarMediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarMediaService;


# direct methods
.method constructor <init>(Lcom/android/car/CarMediaService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarMediaService;

    .line 509
    iput-object p1, p0, Lcom/android/car/CarMediaService$4;->this$0:Lcom/android/car/CarMediaService;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 512
    iget-object v0, p0, Lcom/android/car/CarMediaService$4;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v0, p1}, Lcom/android/car/CarMediaService;->access$1900(Lcom/android/car/CarMediaService;Landroid/media/session/PlaybackState;)V

    .line 514
    iget-object v0, p0, Lcom/android/car/CarMediaService$4;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v0, p1}, Lcom/android/car/CarMediaService;->access$2000(Lcom/android/car/CarMediaService;Landroid/media/session/PlaybackState;)V

    .line 515
    return-void
.end method
