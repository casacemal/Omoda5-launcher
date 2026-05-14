.class public Landroid/car/test/CarTestManagerBinderWrapper;
.super Ljava/lang/Object;
.source "CarTestManagerBinderWrapper.java"

# interfaces
.implements Landroid/car/CarManagerBase;


# instance fields
.field public final binder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/car/test/CarTestManagerBinderWrapper;->binder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    return-void
.end method
