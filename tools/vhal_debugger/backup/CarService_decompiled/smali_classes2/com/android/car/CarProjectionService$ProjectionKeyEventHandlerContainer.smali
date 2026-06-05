.class Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;
.super Lcom/android/car/BinderInterfaceContainer;
.source "CarProjectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarProjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProjectionKeyEventHandlerContainer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/BinderInterfaceContainer<",
        "Landroid/car/ICarProjectionKeyEventHandler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/car/CarProjectionService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/car/CarProjectionService;

    .line 871
    invoke-direct {p0, p1}, Lcom/android/car/BinderInterfaceContainer;-><init>(Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;)V

    .line 872
    return-void
.end method


# virtual methods
.method get(Landroid/car/ICarProjectionKeyEventHandler;)Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;
    .locals 1
    .param p1, "projectionCallback"    # Landroid/car/ICarProjectionKeyEventHandler;

    .line 875
    invoke-virtual {p0, p1}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;->getBinderInterface(Landroid/os/IInterface;)Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    move-result-object v0

    check-cast v0, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;

    return-object v0
.end method
