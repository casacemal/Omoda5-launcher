.class Lcom/android/car/AppFocusService$OwnershipClientHolder;
.super Lcom/android/car/BinderInterfaceContainer;
.source "AppFocusService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/AppFocusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OwnershipClientHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/BinderInterfaceContainer<",
        "Landroid/car/IAppFocusOwnershipCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/car/AppFocusService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/car/AppFocusService;

    .line 349
    invoke-direct {p0, p1}, Lcom/android/car/BinderInterfaceContainer;-><init>(Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;)V

    .line 350
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/AppFocusService;Lcom/android/car/AppFocusService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/AppFocusService;
    .param p2, "x1"    # Lcom/android/car/AppFocusService$1;

    .line 346
    invoke-direct {p0, p1}, Lcom/android/car/AppFocusService$OwnershipClientHolder;-><init>(Lcom/android/car/AppFocusService;)V

    return-void
.end method
