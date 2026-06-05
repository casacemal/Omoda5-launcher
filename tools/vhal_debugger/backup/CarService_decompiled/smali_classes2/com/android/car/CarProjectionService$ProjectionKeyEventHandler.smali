.class Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;
.super Lcom/android/car/BinderInterfaceContainer$BinderInterface;
.source "CarProjectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarProjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProjectionKeyEventHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/BinderInterfaceContainer$BinderInterface<",
        "Landroid/car/ICarProjectionKeyEventHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private mHandledEvents:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;Landroid/car/ICarProjectionKeyEventHandler;Ljava/util/BitSet;)V
    .locals 0
    .param p1, "holder"    # Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;
    .param p2, "binder"    # Landroid/car/ICarProjectionKeyEventHandler;
    .param p3, "handledEvents"    # Ljava/util/BitSet;

    .line 887
    invoke-direct {p0, p1, p2}, Lcom/android/car/BinderInterfaceContainer$BinderInterface;-><init>(Lcom/android/car/BinderInterfaceContainer;Landroid/os/IInterface;)V

    .line 888
    iput-object p3, p0, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;->mHandledEvents:Ljava/util/BitSet;

    .line 889
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;Landroid/car/ICarProjectionKeyEventHandler;Ljava/util/BitSet;Lcom/android/car/CarProjectionService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;
    .param p2, "x1"    # Landroid/car/ICarProjectionKeyEventHandler;
    .param p3, "x2"    # Ljava/util/BitSet;
    .param p4, "x3"    # Lcom/android/car/CarProjectionService$1;

    .line 879
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;-><init>(Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;Landroid/car/ICarProjectionKeyEventHandler;Ljava/util/BitSet;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;
    .param p1, "x1"    # I

    .line 879
    invoke-direct {p0, p1}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;->canHandleEvent(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;)Ljava/util/BitSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;

    .line 879
    iget-object v0, p0, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;->mHandledEvents:Ljava/util/BitSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;Ljava/util/BitSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;
    .param p1, "x1"    # Ljava/util/BitSet;

    .line 879
    invoke-direct {p0, p1}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;->setHandledEvents(Ljava/util/BitSet;)V

    return-void
.end method

.method private canHandleEvent(I)Z
    .locals 1
    .param p1, "event"    # I

    .line 892
    iget-object v0, p0, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;->mHandledEvents:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method private setHandledEvents(Ljava/util/BitSet;)V
    .locals 0
    .param p1, "handledEvents"    # Ljava/util/BitSet;

    .line 896
    iput-object p1, p0, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;->mHandledEvents:Ljava/util/BitSet;

    .line 897
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProjectionKeyEventHandler{events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;->mHandledEvents:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
