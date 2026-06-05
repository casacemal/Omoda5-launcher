.class public Lcom/android/car/CarInputService;
.super Ljava/lang/Object;
.source "CarInputService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/hal/InputHalService$InputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarInputService$KeyPressTimer;,
        Lcom/android/car/CarInputService$KeyEventListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final EXTRA_CAR_PUSH_TO_TALK:Ljava/lang/String; = "com.android.car.input.EXTRA_CAR_PUSH_TO_TALK"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBluetoothProfileServiceListener"
        }
    .end annotation
.end field

.field private final mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mCallKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;

.field private final mCallback:Landroid/os/Binder;

.field mCarInputListener:Landroid/car/input/ICarInputListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mCarInputListenerBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCustomInputServiceComponent:Landroid/content/ComponentName;

.field private final mHandledKeys:Lcom/android/car/SetMultimap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/SetMultimap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputHalService:Lcom/android/car/hal/InputHalService;

.field private final mInputServiceConnection:Landroid/content/ServiceConnection;

.field private mInstrumentClusterKeyListener:Lcom/android/car/CarInputService$KeyEventListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mLastCalledNumberSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLongPressDelaySupplier:Ljava/util/function/IntSupplier;

.field private final mMainDisplayHandler:Lcom/android/car/CarInputService$KeyEventListener;

.field private mProjectionKeyEventHandler:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mProjectionKeyEventsSubscribed:Ljava/util/BitSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

.field private final mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mVoiceKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/hal/InputHalService;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputHalService"    # Lcom/android/car/hal/InputHalService;

    .line 271
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-class v0, Landroid/telecom/TelecomManager;

    .line 272
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/telecom/TelecomManager;

    new-instance v5, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/android/car/-$$Lambda$CarInputService$7kFnLSFUa9N-3WUMKY8R0WRdzr0;

    invoke-direct {v6, p1}, Lcom/android/car/-$$Lambda$CarInputService$7kFnLSFUa9N-3WUMKY8R0WRdzr0;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/car/-$$Lambda$CarInputService$mhL8qJm8oGLfW887YodbxCIfG6E;

    invoke-direct {v7, p1}, Lcom/android/car/-$$Lambda$CarInputService$mhL8qJm8oGLfW887YodbxCIfG6E;-><init>(Landroid/content/Context;)V

    .line 277
    invoke-static {p1}, Lcom/android/car/CarInputService;->getDefaultInputComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v8

    new-instance v9, Lcom/android/car/-$$Lambda$CarInputService$Z755B13oiPRdxXHhRzBfKCaWYRc;

    invoke-direct {v9, p1}, Lcom/android/car/-$$Lambda$CarInputService$Z755B13oiPRdxXHhRzBfKCaWYRc;-><init>(Landroid/content/Context;)V

    .line 271
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/car/CarInputService;-><init>(Landroid/content/Context;Lcom/android/car/hal/InputHalService;Landroid/os/Handler;Landroid/telecom/TelecomManager;Lcom/android/internal/app/AssistUtils;Lcom/android/car/CarInputService$KeyEventListener;Ljava/util/function/Supplier;Landroid/content/ComponentName;Ljava/util/function/IntSupplier;)V

    .line 279
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/car/hal/InputHalService;Landroid/os/Handler;Landroid/telecom/TelecomManager;Lcom/android/internal/app/AssistUtils;Lcom/android/car/CarInputService$KeyEventListener;Ljava/util/function/Supplier;Landroid/content/ComponentName;Ljava/util/function/IntSupplier;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputHalService"    # Lcom/android/car/hal/InputHalService;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "telecomManager"    # Landroid/telecom/TelecomManager;
    .param p5, "assistUtils"    # Lcom/android/internal/app/AssistUtils;
    .param p6, "mainDisplayHandler"    # Lcom/android/car/CarInputService$KeyEventListener;
    .param p8, "customInputServiceComponent"    # Landroid/content/ComponentName;
    .param p9, "longPressDelaySupplier"    # Ljava/util/function/IntSupplier;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/car/hal/InputHalService;",
            "Landroid/os/Handler;",
            "Landroid/telecom/TelecomManager;",
            "Lcom/android/internal/app/AssistUtils;",
            "Lcom/android/car/CarInputService$KeyEventListener;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/util/function/IntSupplier;",
            ")V"
        }
    .end annotation

    .line 286
    .local p7, "lastCalledNumberSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/android/car/CarInputService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarInputService$1;-><init>(Lcom/android/car/CarInputService;)V

    iput-object v0, p0, Lcom/android/car/CarInputService;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .line 165
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarInputService;->mProjectionKeyEventsSubscribed:Ljava/util/BitSet;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarInputService;->mCarInputListenerBound:Z

    .line 182
    new-instance v0, Lcom/android/car/SetMultimap;

    invoke-direct {v0}, Lcom/android/car/SetMultimap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarInputService;->mHandledKeys:Lcom/android/car/SetMultimap;

    .line 185
    new-instance v0, Lcom/android/car/CarInputService$2;

    invoke-direct {v0, p0}, Lcom/android/car/CarInputService$2;-><init>(Lcom/android/car/CarInputService;)V

    iput-object v0, p0, Lcom/android/car/CarInputService;->mCallback:Landroid/os/Binder;

    .line 201
    new-instance v0, Lcom/android/car/CarInputService$3;

    invoke-direct {v0, p0}, Lcom/android/car/CarInputService$3;-><init>(Lcom/android/car/CarInputService;)V

    iput-object v0, p0, Lcom/android/car/CarInputService;->mInputServiceConnection:Landroid/content/ServiceConnection;

    .line 222
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarInputService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 229
    new-instance v0, Lcom/android/car/CarInputService$4;

    invoke-direct {v0, p0}, Lcom/android/car/CarInputService$4;-><init>(Lcom/android/car/CarInputService;)V

    iput-object v0, p0, Lcom/android/car/CarInputService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 287
    iput-object p1, p0, Lcom/android/car/CarInputService;->mContext:Landroid/content/Context;

    .line 288
    iput-object p2, p0, Lcom/android/car/CarInputService;->mInputHalService:Lcom/android/car/hal/InputHalService;

    .line 289
    iput-object p4, p0, Lcom/android/car/CarInputService;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 290
    iput-object p5, p0, Lcom/android/car/CarInputService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 291
    iput-object p6, p0, Lcom/android/car/CarInputService;->mMainDisplayHandler:Lcom/android/car/CarInputService$KeyEventListener;

    .line 292
    iput-object p7, p0, Lcom/android/car/CarInputService;->mLastCalledNumberSupplier:Ljava/util/function/Supplier;

    .line 293
    iput-object p8, p0, Lcom/android/car/CarInputService;->mCustomInputServiceComponent:Landroid/content/ComponentName;

    .line 294
    iput-object p9, p0, Lcom/android/car/CarInputService;->mLongPressDelaySupplier:Ljava/util/function/IntSupplier;

    .line 296
    new-instance v0, Lcom/android/car/CarInputService$KeyPressTimer;

    new-instance v1, Lcom/android/car/-$$Lambda$CarInputService$L9JhV3ODz0L9p2ms-aiF7bgzD6c;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$CarInputService$L9JhV3ODz0L9p2ms-aiF7bgzD6c;-><init>(Lcom/android/car/CarInputService;)V

    invoke-direct {v0, p3, p9, v1}, Lcom/android/car/CarInputService$KeyPressTimer;-><init>(Landroid/os/Handler;Ljava/util/function/IntSupplier;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/car/CarInputService;->mVoiceKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;

    .line 299
    new-instance v0, Lcom/android/car/CarInputService$KeyPressTimer;

    new-instance v1, Lcom/android/car/-$$Lambda$CarInputService$o3-C1DSyq366z7712pSu54NAEg8;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$CarInputService$o3-C1DSyq366z7712pSu54NAEg8;-><init>(Lcom/android/car/CarInputService;)V

    invoke-direct {v0, p3, p9, v1}, Lcom/android/car/CarInputService$KeyPressTimer;-><init>(Landroid/os/Handler;Ljava/util/function/IntSupplier;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/car/CarInputService;->mCallKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;

    .line 301
    return-void
.end method

.method private acceptCallIfRinging()Z
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/android/car/CarInputService;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "CAR.INPUT"

    const-string v1, "call key while ringing. Answer the call!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/android/car/CarInputService;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 526
    const/4 v0, 0x1

    return v0

    .line 529
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$002(Lcom/android/car/CarInputService;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarInputService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadsetClient;

    .line 66
    iput-object p1, p0, Lcom/android/car/CarInputService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method private bindCarInputService()Z
    .locals 5

    .line 596
    iget-object v0, p0, Lcom/android/car/CarInputService;->mCustomInputServiceComponent:Landroid/content/ComponentName;

    const-string v1, "CAR.INPUT"

    if-nez v0, :cond_0

    .line 597
    const-string v0, "Custom input service was not configured"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v0, 0x0

    return v0

    .line 601
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindCarInputService, component: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarInputService;->mCustomInputServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 604
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 605
    .local v1, "extras":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/car/CarInputService;->mCallback:Landroid/os/Binder;

    const-string v3, "callback_binder"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 606
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 607
    iget-object v2, p0, Lcom/android/car/CarInputService;->mCustomInputServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 608
    iget-object v2, p0, Lcom/android/car/CarInputService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/car/CarInputService;->mInputServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    return v2
.end method

.method private dialLastCallHandler()V
    .locals 5

    .line 511
    const-string v0, "CAR.INPUT"

    const-string v1, "call key, dialing last call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/android/car/CarInputService;->mLastCalledNumberSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 514
    .local v0, "lastNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 515
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    const/4 v2, 0x0

    const-string v3, "tel"

    invoke-static {v3, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v3, 0x10000000

    .line 517
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 518
    .local v1, "callLastNumberIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/car/CarInputService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 520
    .end local v1    # "callLastNumberIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private dispatchProjectionKeyEvent(I)Z
    .locals 2
    .param p1, "event"    # I

    .line 492
    monitor-enter p0

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarInputService;->mProjectionKeyEventHandler:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

    .line 494
    .local v0, "projectionKeyEventHandler":Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/car/CarInputService;->mProjectionKeyEventsSubscribed:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    invoke-interface {v0, p1}, Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;->onKeyEvent(I)V

    .line 501
    const/4 v1, 0x1

    return v1

    .line 496
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    monitor-exit p0

    return v1

    .line 498
    .end local v0    # "projectionKeyEventHandler":Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getDefaultInputComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 254
    const v0, 0x7f0f016c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "carInputService":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const/4 v1, 0x0

    return-object v1

    .line 259
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private static getViewLongPressDelay(Landroid/content/ContentResolver;)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 263
    nop

    .line 266
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    .line 263
    const-string v1, "long_press_timeout"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private handleCallKey(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 451
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 452
    .local v0, "action":I
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/android/car/CarInputService;->mCallKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;

    invoke-virtual {v1}, Lcom/android/car/CarInputService$KeyPressTimer;->keyDown()V

    .line 454
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/car/CarInputService;->dispatchProjectionKeyEvent(I)Z

    goto :goto_0

    .line 455
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 456
    iget-object v1, p0, Lcom/android/car/CarInputService;->mCallKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;

    invoke-virtual {v1}, Lcom/android/car/CarInputService$KeyPressTimer;->keyUp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/car/CarInputService;->dispatchProjectionKeyEvent(I)Z

    .line 460
    return-void

    .line 463
    :cond_1
    invoke-direct {p0}, Lcom/android/car/CarInputService;->acceptCallIfRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 465
    return-void

    .line 468
    :cond_2
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/car/CarInputService;->dispatchProjectionKeyEvent(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 470
    return-void

    .line 473
    :cond_3
    invoke-direct {p0}, Lcom/android/car/CarInputService;->launchDialerHandler()V

    .line 475
    :cond_4
    :goto_0
    return-void
.end method

.method private handleCallLongPress()V
    .locals 1

    .line 479
    invoke-direct {p0}, Lcom/android/car/CarInputService;->acceptCallIfRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    return-void

    .line 483
    :cond_0
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/car/CarInputService;->dispatchProjectionKeyEvent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    return-void

    .line 487
    :cond_1
    invoke-direct {p0}, Lcom/android/car/CarInputService;->dialLastCallHandler()V

    .line 488
    return-void
.end method

.method private handleInstrumentClusterKey(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "listener":Lcom/android/car/CarInputService$KeyEventListener;
    monitor-enter p0

    .line 578
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarInputService;->mInstrumentClusterKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

    move-object v0, v1

    .line 579
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    if-nez v0, :cond_0

    .line 581
    return-void

    .line 583
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/car/CarInputService$KeyEventListener;->onKeyEvent(Landroid/view/KeyEvent;)V

    .line 584
    return-void

    .line 579
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleVoiceAssistKey(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 414
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 415
    .local v0, "action":I
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/car/CarInputService;->mVoiceKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;

    invoke-virtual {v1}, Lcom/android/car/CarInputService$KeyPressTimer;->keyDown()V

    .line 417
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/car/CarInputService;->dispatchProjectionKeyEvent(I)Z

    goto :goto_0

    .line 418
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 419
    iget-object v2, p0, Lcom/android/car/CarInputService;->mVoiceKeyTimer:Lcom/android/car/CarInputService$KeyPressTimer;

    invoke-virtual {v2}, Lcom/android/car/CarInputService$KeyPressTimer;->keyUp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/car/CarInputService;->dispatchProjectionKeyEvent(I)Z

    .line 424
    return-void

    .line 427
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/car/CarInputService;->dispatchProjectionKeyEvent(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    return-void

    .line 432
    :cond_2
    invoke-direct {p0}, Lcom/android/car/CarInputService;->launchDefaultVoiceAssistantHandler()V

    .line 434
    :cond_3
    :goto_0
    return-void
.end method

.method private handleVoiceAssistLongPress()V
    .locals 1

    .line 438
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/car/CarInputService;->dispatchProjectionKeyEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    return-void

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/android/car/CarInputService;->launchBluetoothVoiceRecognition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    return-void

    .line 447
    :cond_1
    invoke-direct {p0}, Lcom/android/car/CarInputService;->launchDefaultVoiceAssistantHandler()V

    .line 448
    return-void
.end method

.method private declared-synchronized isCustomEventHandler(Landroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "targetDisplay"    # I

    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarInputService;->mHandledKeys:Lcom/android/car/SetMultimap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/car/SetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/car/CarInputService;
    .end local p1    # "event":Landroid/view/KeyEvent;
    .end local p2    # "targetDisplay":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic lambda$L9JhV3ODz0L9p2ms-aiF7bgzD6c(Lcom/android/car/CarInputService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/CarInputService;->handleVoiceAssistLongPress()V

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;Landroid/view/KeyEvent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 274
    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 275
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 274
    return-void
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 276
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$2(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/CarInputService;->getViewLongPressDelay(Landroid/content/ContentResolver;)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$o3-C1DSyq366z7712pSu54NAEg8(Lcom/android/car/CarInputService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/CarInputService;->handleCallLongPress()V

    return-void
.end method

.method private launchBluetoothVoiceRecognition()Z
    .locals 7

    .line 533
    iget-object v0, p0, Lcom/android/car/CarInputService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    monitor-enter v0

    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarInputService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 535
    monitor-exit v0

    return v2

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarInputService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 542
    .local v1, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_4

    .line 543
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 544
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/car/CarInputService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v5, v4}, Landroid/bluetooth/BluetoothHeadsetClient;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v5

    .line 545
    .local v5, "bundle":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    const-string v6, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 547
    goto :goto_0

    .line 549
    :cond_2
    iget-object v6, p0, Lcom/android/car/CarInputService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v6, v4}, Landroid/bluetooth/BluetoothHeadsetClient;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 550
    const-string v2, "CAR.INPUT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "started voice recognition on BT device at "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 550
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 554
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_3
    goto :goto_0

    .line 556
    .end local v1    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_4
    monitor-exit v0

    .line 557
    return v2

    .line 556
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private launchDefaultVoiceAssistantHandler()V
    .locals 5

    .line 561
    const-string v0, "CAR.INPUT"

    const-string v1, "voice key, invoke AssistUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v1, p0, Lcom/android/car/CarInputService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 564
    const-string v1, "Unable to retrieve assist component for current user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void

    .line 568
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 569
    .local v0, "args":Landroid/os/Bundle;
    const/4 v1, 0x1

    const-string v2, "com.android.car.input.EXTRA_CAR_PUSH_TO_TALK"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 571
    iget-object v1, p0, Lcom/android/car/CarInputService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const/16 v2, 0x20

    iget-object v3, p0, Lcom/android/car/CarInputService;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    .line 573
    return-void
.end method

.method private launchDialerHandler()V
    .locals 4

    .line 505
    const-string v0, "CAR.INPUT"

    const-string v1, "call key, launch dialer intent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, "dialerIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/car/CarInputService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 508
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 588
    :try_start_0
    const-string v0, "*Input Service*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCustomInputServiceComponent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarInputService;->mCustomInputServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCarInputListenerBound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/CarInputService;->mCarInputListenerBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCarInputListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarInputService;->mCarInputListener:Landroid/car/input/ICarInputListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Long-press delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarInputService;->mLongPressDelaySupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    monitor-exit p0

    return-void

    .line 587
    .end local p0    # "this":Lcom/android/car/CarInputService;
    .end local p1    # "writer":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public init()V
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/android/car/CarInputService;->mInputHalService:Lcom/android/car/hal/InputHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/InputHalService;->isKeyInputSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    const-string v0, "CAR.INPUT"

    const-string v1, "Hal does not support key input."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarInputService;->mInputHalService:Lcom/android/car/hal/InputHalService;

    invoke-virtual {v0, p0}, Lcom/android/car/hal/InputHalService;->setInputListener(Lcom/android/car/hal/InputHalService$InputListener;)V

    .line 343
    monitor-enter p0

    .line 344
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/CarInputService;->bindCarInputService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/CarInputService;->mCarInputListenerBound:Z

    .line 345
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    iget-object v0, p0, Lcom/android/car/CarInputService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 347
    iget-object v1, p0, Lcom/android/car/CarInputService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/CarInputService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 350
    :cond_1
    return-void

    .line 345
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "targetDisplay"    # I

    .line 376
    monitor-enter p0

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarInputService;->mCarInputListener:Landroid/car/input/ICarInputListener;

    .line 378
    .local v0, "carInputListener":Landroid/car/input/ICarInputListener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/car/CarInputService;->isCustomEventHandler(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    :try_start_1
    invoke-interface {v0, p1, p2}, Landroid/car/input/ICarInputListener;->onKeyEvent(Landroid/view/KeyEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 384
    goto :goto_0

    .line 382
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAR.INPUT"

    const-string v3, "Error while calling car input service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0xe7

    if-eq v1, v2, :cond_2

    .line 402
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 403
    invoke-direct {p0, p1}, Lcom/android/car/CarInputService;->handleInstrumentClusterKey(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/android/car/CarInputService;->mMainDisplayHandler:Lcom/android/car/CarInputService$KeyEventListener;

    invoke-interface {v1, p1}, Lcom/android/car/CarInputService$KeyEventListener;->onKeyEvent(Landroid/view/KeyEvent;)V

    .line 407
    :goto_1
    return-void

    .line 392
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/car/CarInputService;->handleVoiceAssistKey(Landroid/view/KeyEvent;)V

    .line 393
    return-void

    .line 378
    .end local v0    # "carInputListener":Landroid/car/input/ICarInputListener;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 5

    .line 354
    monitor-enter p0

    .line 355
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/car/CarInputService;->mProjectionKeyEventHandler:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

    .line 356
    iget-object v1, p0, Lcom/android/car/CarInputService;->mProjectionKeyEventsSubscribed:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 357
    iput-object v0, p0, Lcom/android/car/CarInputService;->mInstrumentClusterKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

    .line 358
    iget-boolean v1, p0, Lcom/android/car/CarInputService;->mCarInputListenerBound:Z

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/android/car/CarInputService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/CarInputService;->mInputServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 360
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/car/CarInputService;->mCarInputListenerBound:Z

    .line 362
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 363
    iget-object v1, p0, Lcom/android/car/CarInputService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    monitor-enter v1

    .line 364
    :try_start_1
    iget-object v2, p0, Lcom/android/car/CarInputService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/android/car/CarInputService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v3, 0x10

    iget-object v4, p0, Lcom/android/car/CarInputService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 367
    iput-object v0, p0, Lcom/android/car/CarInputService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 369
    :cond_1
    monitor-exit v1

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 362
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method declared-synchronized setHandledKeys([Landroid/car/input/CarInputHandlingService$InputFilter;)V
    .locals 6
    .param p1, "handledKeys"    # [Landroid/car/input/CarInputHandlingService$InputFilter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarInputService;->mHandledKeys:Lcom/android/car/SetMultimap;

    invoke-virtual {v0}, Lcom/android/car/SetMultimap;->clear()V

    .line 306
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 307
    .local v2, "handledKey":Landroid/car/input/CarInputHandlingService$InputFilter;
    iget-object v3, p0, Lcom/android/car/CarInputService;->mHandledKeys:Lcom/android/car/SetMultimap;

    iget v4, v2, Landroid/car/input/CarInputHandlingService$InputFilter;->mTargetDisplay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/car/input/CarInputHandlingService$InputFilter;->mKeyCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/car/SetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    nop

    .end local v2    # "handledKey":Landroid/car/input/CarInputHandlingService$InputFilter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local p0    # "this":Lcom/android/car/CarInputService;
    :cond_0
    monitor-exit p0

    return-void

    .line 304
    .end local p1    # "handledKeys":[Landroid/car/input/CarInputHandlingService$InputFilter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setInstrumentClusterKeyListener(Lcom/android/car/CarInputService$KeyEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/car/CarInputService$KeyEventListener;

    .line 327
    monitor-enter p0

    .line 328
    :try_start_0
    iput-object p1, p0, Lcom/android/car/CarInputService;->mInstrumentClusterKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

    .line 329
    monitor-exit p0

    .line 330
    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProjectionKeyEventHandler(Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;Ljava/util/BitSet;)V
    .locals 1
    .param p1, "listener"    # Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;
    .param p2, "events"    # Ljava/util/BitSet;

    .line 317
    monitor-enter p0

    .line 318
    :try_start_0
    iput-object p1, p0, Lcom/android/car/CarInputService;->mProjectionKeyEventHandler:Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

    .line 319
    iget-object v0, p0, Lcom/android/car/CarInputService;->mProjectionKeyEventsSubscribed:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 320
    if-eqz p2, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/car/CarInputService;->mProjectionKeyEventsSubscribed:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 323
    :cond_0
    monitor-exit p0

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
