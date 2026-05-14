.class Landroid/car/media/CarMediaManager$1;
.super Landroid/car/media/ICarMediaSourceListener$Stub;
.source "CarMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/media/CarMediaManager;->registerMediaSourceListener(Landroid/car/media/CarMediaManager$MediaSourceChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/media/CarMediaManager;

.field final synthetic val$callback:Landroid/car/media/CarMediaManager$MediaSourceChangedListener;


# direct methods
.method constructor <init>(Landroid/car/media/CarMediaManager;Landroid/car/media/CarMediaManager$MediaSourceChangedListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Landroid/car/media/CarMediaManager$1;->this$0:Landroid/car/media/CarMediaManager;

    iput-object p2, p0, Landroid/car/media/CarMediaManager$1;->val$callback:Landroid/car/media/CarMediaManager$MediaSourceChangedListener;

    invoke-direct {p0}, Landroid/car/media/ICarMediaSourceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSourceChanged(Landroid/content/ComponentName;)V
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/car/media/CarMediaManager$1;->val$callback:Landroid/car/media/CarMediaManager$MediaSourceChangedListener;

    invoke-interface {p0, p1}, Landroid/car/media/CarMediaManager$MediaSourceChangedListener;->onMediaSourceChanged(Landroid/content/ComponentName;)V

    return-void
.end method
