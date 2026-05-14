.class public abstract Lcom/chery/window/IWindowUiVisibility$Stub;
.super Landroid/os/Binder;
.source "IWindowUiVisibility.java"

# interfaces
.implements Lcom/chery/window/IWindowUiVisibility;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/window/IWindowUiVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/window/IWindowUiVisibility$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.chery.window.IWindowUiVisibility"

.field static final TRANSACTION_isUiVisibility:I = 0x1

.field static final TRANSACTION_registerUiListener:I = 0x4

.field static final TRANSACTION_registerUiTarget:I = 0x6

.field static final TRANSACTION_setTargetUiVisibility:I = 0x3

.field static final TRANSACTION_setUiVisibility:I = 0x2

.field static final TRANSACTION_unregisterUiListener:I = 0x5

.field static final TRANSACTION_unregisterUiTarget:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.chery.window.IWindowUiVisibility"

    .line 48
    invoke-virtual {p0, p0, v0}, Lcom/chery/window/IWindowUiVisibility$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/chery/window/IWindowUiVisibility;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.chery.window.IWindowUiVisibility"

    .line 59
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    instance-of v1, v0, Lcom/chery/window/IWindowUiVisibility;

    if-eqz v1, :cond_1

    .line 61
    check-cast v0, Lcom/chery/window/IWindowUiVisibility;

    return-object v0

    .line 63
    :cond_1
    new-instance v0, Lcom/chery/window/IWindowUiVisibility$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/chery/window/IWindowUiVisibility$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/chery/window/IWindowUiVisibility;
    .locals 1

    .line 368
    sget-object v0, Lcom/chery/window/IWindowUiVisibility$Stub$Proxy;->sDefaultImpl:Lcom/chery/window/IWindowUiVisibility;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/chery/window/IWindowUiVisibility;)Z
    .locals 1

    .line 358
    sget-object v0, Lcom/chery/window/IWindowUiVisibility$Stub$Proxy;->sDefaultImpl:Lcom/chery/window/IWindowUiVisibility;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 362
    sput-object p0, Lcom/chery/window/IWindowUiVisibility$Stub$Proxy;->sDefaultImpl:Lcom/chery/window/IWindowUiVisibility;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 359
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.chery.window.IWindowUiVisibility"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 162
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/window/IUiVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/chery/window/IUiVisibilityListener;

    move-result-object p1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/chery/window/IWindowUiVisibility$Stub;->unregisterUiTarget(Lcom/chery/window/IUiVisibilityListener;I)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 147
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/window/IUiVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/chery/window/IUiVisibilityListener;

    move-result-object p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 156
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/chery/window/IWindowUiVisibility$Stub;->registerUiTarget(Lcom/chery/window/IUiVisibilityListener;ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 136
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/window/IUiVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/chery/window/IUiVisibilityListener;

    move-result-object p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/chery/window/IWindowUiVisibility$Stub;->unregisterUiListener(Lcom/chery/window/IUiVisibilityListener;I)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 121
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/window/IUiVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/chery/window/IUiVisibilityListener;

    move-result-object p1

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 130
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/chery/window/IWindowUiVisibility$Stub;->registerUiListener(Lcom/chery/window/IUiVisibilityListener;ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 106
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 115
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/chery/window/IWindowUiVisibility$Stub;->setTargetUiVisibility(IILjava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 91
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 100
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/chery/window/IWindowUiVisibility$Stub;->setUiVisibility(IILjava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 81
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/chery/window/IWindowUiVisibility$Stub;->isUiVisibility(I)I

    move-result p0

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 76
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
