.class Lcom/android/car/AppFocusService$DispatchHandler;
.super Landroid/os/Handler;
.source "AppFocusService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/AppFocusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DispatchHandler"
.end annotation


# static fields
.field private static final MSG_DISPATCH_FOCUS_CHANGE:I = 0x2

.field private static final MSG_DISPATCH_OWNERSHIP_GRANT:I = 0x1

.field private static final MSG_DISPATCH_OWNERSHIP_LOSS:I


# instance fields
.field final synthetic this$0:Lcom/android/car/AppFocusService;


# direct methods
.method private constructor <init>(Lcom/android/car/AppFocusService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 444
    iput-object p1, p0, Lcom/android/car/AppFocusService$DispatchHandler;->this$0:Lcom/android/car/AppFocusService;

    .line 445
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 446
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/AppFocusService;Landroid/os/Looper;Lcom/android/car/AppFocusService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/AppFocusService;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/car/AppFocusService$1;

    .line 439
    invoke-direct {p0, p1, p2}, Lcom/android/car/AppFocusService$DispatchHandler;-><init>(Lcom/android/car/AppFocusService;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/car/AppFocusService$DispatchHandler;Landroid/car/IAppFocusOwnershipCallback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/AppFocusService$DispatchHandler;
    .param p1, "x1"    # Landroid/car/IAppFocusOwnershipCallback;
    .param p2, "x2"    # I

    .line 439
    invoke-direct {p0, p1, p2}, Lcom/android/car/AppFocusService$DispatchHandler;->requestAppFocusOwnershipGrantDispatch(Landroid/car/IAppFocusOwnershipCallback;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/car/AppFocusService$DispatchHandler;Landroid/car/IAppFocusListener;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/AppFocusService$DispatchHandler;
    .param p1, "x1"    # Landroid/car/IAppFocusListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 439
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/AppFocusService$DispatchHandler;->requestAppFocusChangeDispatch(Landroid/car/IAppFocusListener;IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/car/AppFocusService$DispatchHandler;Landroid/car/IAppFocusOwnershipCallback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/AppFocusService$DispatchHandler;
    .param p1, "x1"    # Landroid/car/IAppFocusOwnershipCallback;
    .param p2, "x2"    # I

    .line 439
    invoke-direct {p0, p1, p2}, Lcom/android/car/AppFocusService$DispatchHandler;->requestAppFocusOwnershipLossDispatch(Landroid/car/IAppFocusOwnershipCallback;I)V

    return-void
.end method

.method private requestAppFocusChangeDispatch(Landroid/car/IAppFocusListener;IZ)V
    .locals 1
    .param p1, "listener"    # Landroid/car/IAppFocusListener;
    .param p2, "appType"    # I
    .param p3, "active"    # Z

    .line 462
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/android/car/AppFocusService$DispatchHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 464
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/AppFocusService$DispatchHandler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    return-void
.end method

.method private requestAppFocusOwnershipGrantDispatch(Landroid/car/IAppFocusOwnershipCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/car/IAppFocusOwnershipCallback;
    .param p2, "appType"    # I

    .line 456
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/android/car/AppFocusService$DispatchHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 457
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/AppFocusService$DispatchHandler;->sendMessage(Landroid/os/Message;)Z

    .line 458
    return-void
.end method

.method private requestAppFocusOwnershipLossDispatch(Landroid/car/IAppFocusOwnershipCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/car/IAppFocusOwnershipCallback;
    .param p2, "appType"    # I

    .line 450
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, v0, p1}, Lcom/android/car/AppFocusService$DispatchHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 451
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/AppFocusService$DispatchHandler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 469
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t dispatch message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.APP_FOCUS"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/car/AppFocusService$DispatchHandler;->this$0:Lcom/android/car/AppFocusService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/car/IAppFocusListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v2, v3, v1}, Lcom/android/car/AppFocusService;->access$1800(Lcom/android/car/AppFocusService;Landroid/car/IAppFocusListener;IZ)V

    .line 478
    goto :goto_1

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/android/car/AppFocusService$DispatchHandler;->this$0:Lcom/android/car/AppFocusService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/car/IAppFocusOwnershipCallback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/car/AppFocusService;->access$1700(Lcom/android/car/AppFocusService;Landroid/car/IAppFocusOwnershipCallback;I)V

    .line 475
    goto :goto_1

    .line 471
    :cond_3
    iget-object v0, p0, Lcom/android/car/AppFocusService$DispatchHandler;->this$0:Lcom/android/car/AppFocusService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/car/IAppFocusOwnershipCallback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/car/AppFocusService;->access$1600(Lcom/android/car/AppFocusService;Landroid/car/IAppFocusOwnershipCallback;I)V

    .line 472
    nop

    .line 482
    :goto_1
    return-void
.end method
