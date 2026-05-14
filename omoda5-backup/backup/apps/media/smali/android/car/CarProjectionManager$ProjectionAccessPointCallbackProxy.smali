.class Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;
.super Ljava/lang/Object;
.source "CarProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/CarProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProjectionAccessPointCallbackProxy"
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String;


# instance fields
.field private final mCarProjectionManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/CarProjectionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;

    .line 724
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;->LOG_PREFIX:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/car/CarProjectionManager;Landroid/os/Looper;Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;)V
    .locals 1

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;->mCarProjectionManagerRef:Ljava/lang/ref/WeakReference;

    .line 734
    new-instance p1, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy$1;

    invoke-direct {p1, p0, p2, p3}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy$1;-><init>(Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;Landroid/os/Looper;Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;)V

    iput-object p1, p0, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 770
    new-instance p1, Landroid/os/Messenger;

    iget-object p2, p0, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 722
    sget-object v0, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;->LOG_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 722
    iget-object p0, p0, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;->mCarProjectionManagerRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method getMessenger()Landroid/os/Messenger;
    .locals 0

    .line 774
    iget-object p0, p0, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;->mMessenger:Landroid/os/Messenger;

    return-object p0
.end method
