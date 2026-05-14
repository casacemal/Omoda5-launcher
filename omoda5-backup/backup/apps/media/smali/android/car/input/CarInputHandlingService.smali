.class public abstract Landroid/car/input/CarInputHandlingService;
.super Landroid/app/Service;
.source "CarInputHandlingService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/input/CarInputHandlingService$InputFilter;,
        Landroid/car/input/CarInputHandlingService$EventHandler;,
        Landroid/car/input/CarInputHandlingService$InputBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final INPUT_CALLBACK_BINDER_CODE:I = 0x1

.field public static final INPUT_CALLBACK_BINDER_KEY:Ljava/lang/String; = "callback_binder"

.field private static final TAG:Ljava/lang/String; = "CAR.L.INPUT"


# instance fields
.field private final mHandledKeys:[Landroid/car/input/CarInputHandlingService$InputFilter;

.field private mInputBinder:Landroid/car/input/CarInputHandlingService$InputBinder;


# direct methods
.method protected constructor <init>([Landroid/car/input/CarInputHandlingService$InputFilter;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    if-eqz p1, :cond_0

    .line 69
    array-length v0, p1

    new-array v0, v0, [Landroid/car/input/CarInputHandlingService$InputFilter;

    iput-object v0, p0, Landroid/car/input/CarInputHandlingService;->mHandledKeys:[Landroid/car/input/CarInputHandlingService$InputFilter;

    .line 70
    array-length p0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "handledKeys is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private doCallbackIfPossible(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "CAR.L.INPUT"

    if-nez p1, :cond_0

    const-string p0, "doCallbackIfPossible: extras are null"

    .line 91
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "callback_binder"

    .line 94
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "doCallbackIfPossible: callback IBinder is null"

    .line 96
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 100
    iget-object p0, p0, Landroid/car/input/CarInputHandlingService;->mHandledKeys:[Landroid/car/input/CarInputHandlingService$InputFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 p0, 0x0

    const/4 v1, 0x1

    .line 102
    :try_start_0
    invoke-interface {p1, v1, v0, p0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 104
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "**"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "input binder: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/car/input/CarInputHandlingService;->mInputBinder:Landroid/car/input/CarInputHandlingService$InputBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 80
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/car/input/CarInputHandlingService;->doCallbackIfPossible(Landroid/os/Bundle;)V

    .line 82
    iget-object p1, p0, Landroid/car/input/CarInputHandlingService;->mInputBinder:Landroid/car/input/CarInputHandlingService$InputBinder;

    if-nez p1, :cond_0

    .line 83
    new-instance p1, Landroid/car/input/CarInputHandlingService$InputBinder;

    invoke-direct {p1, p0}, Landroid/car/input/CarInputHandlingService$InputBinder;-><init>(Landroid/car/input/CarInputHandlingService;)V

    iput-object p1, p0, Landroid/car/input/CarInputHandlingService;->mInputBinder:Landroid/car/input/CarInputHandlingService$InputBinder;

    .line 86
    :cond_0
    iget-object p0, p0, Landroid/car/input/CarInputHandlingService;->mInputBinder:Landroid/car/input/CarInputHandlingService$InputBinder;

    return-object p0
.end method

.method protected abstract onKeyEvent(Landroid/view/KeyEvent;I)V
.end method
