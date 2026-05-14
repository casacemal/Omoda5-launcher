.class Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;
.super Landroid/car/ICarProjectionStatusListener$Stub;
.source "CarProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/CarProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarProjectionStatusListenerImpl"
.end annotation


# instance fields
.field private mCurrentPackageName:Ljava/lang/String;

.field private mCurrentState:I

.field private mDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/projection/ProjectionStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/CarProjectionManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/car/CarProjectionManager;)V
    .locals 2

    .line 831
    invoke-direct {p0}, Landroid/car/ICarProjectionStatusListener$Stub;-><init>()V

    .line 827
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;->mDetails:Ljava/util/List;

    .line 832
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;->mManagerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/CarProjectionManager;Landroid/car/CarProjectionManager$1;)V
    .locals 0

    .line 822
    invoke-direct {p0, p1}, Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;-><init>(Landroid/car/CarProjectionManager;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;)Ljava/lang/String;
    .locals 0

    .line 822
    iget-object p0, p0, Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;->mCurrentPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;)Ljava/util/List;
    .locals 0

    .line 822
    iget-object p0, p0, Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;->mDetails:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;)I
    .locals 0

    .line 822
    iget p0, p0, Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;->mCurrentState:I

    return p0
.end method


# virtual methods
.method public synthetic lambda$onProjectionStatusChanged$0$CarProjectionManager$CarProjectionStatusListenerImpl(ILjava/lang/String;Ljava/util/List;Landroid/car/CarProjectionManager;)V
    .locals 0

    .line 842
    iput p1, p0, Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;->mCurrentState:I

    .line 843
    iput-object p2, p0, Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;->mCurrentPackageName:Ljava/lang/String;

    .line 844
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;->mDetails:Ljava/util/List;

    .line 846
    invoke-static {p4, p1, p2, p3}, Landroid/car/CarProjectionManager;->access$800(Landroid/car/CarProjectionManager;ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onProjectionStatusChanged(ILjava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/car/projection/ProjectionStatus;",
            ">;)V"
        }
    .end annotation

    .line 839
    iget-object v0, p0, Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;->mManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/car/CarProjectionManager;

    if-eqz v6, :cond_0

    .line 841
    invoke-static {v6}, Landroid/car/CarProjectionManager;->access$700(Landroid/car/CarProjectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Landroid/car/-$$Lambda$CarProjectionManager$CarProjectionStatusListenerImpl$pKBrFkhSPUT8gyMVXjB6LFXBIOM;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/car/-$$Lambda$CarProjectionManager$CarProjectionStatusListenerImpl$pKBrFkhSPUT8gyMVXjB6LFXBIOM;-><init>(Landroid/car/CarProjectionManager$CarProjectionStatusListenerImpl;ILjava/lang/String;Ljava/util/List;Landroid/car/CarProjectionManager;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
