.class Lcom/android/car/AppFocusService$ClientHolder;
.super Lcom/android/car/BinderInterfaceContainer;
.source "AppFocusService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/AppFocusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/BinderInterfaceContainer<",
        "Landroid/car/IAppFocusListener;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/BinderInterfaceContainer$BinderEventHandler<",
            "Landroid/car/IAppFocusListener;",
            ">;)V"
        }
    .end annotation

    .line 342
    .local p1, "holder":Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;, "Lcom/android/car/BinderInterfaceContainer$BinderEventHandler<Landroid/car/IAppFocusListener;>;"
    invoke-direct {p0, p1}, Lcom/android/car/BinderInterfaceContainer;-><init>(Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;)V

    .line 343
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;Lcom/android/car/AppFocusService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;
    .param p2, "x1"    # Lcom/android/car/AppFocusService$1;

    .line 340
    invoke-direct {p0, p1}, Lcom/android/car/AppFocusService$ClientHolder;-><init>(Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;)V

    return-void
.end method
