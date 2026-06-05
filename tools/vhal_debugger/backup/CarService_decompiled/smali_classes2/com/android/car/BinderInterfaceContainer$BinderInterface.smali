.class public Lcom/android/car/BinderInterfaceContainer$BinderInterface;
.super Ljava/lang/Object;
.source "BinderInterfaceContainer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BinderInterfaceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field public final binderInterface:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mContainer:Lcom/android/car/BinderInterfaceContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/BinderInterfaceContainer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/car/BinderInterfaceContainer;Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/BinderInterfaceContainer<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<TT;>;"
    .local p1, "container":Lcom/android/car/BinderInterfaceContainer;, "Lcom/android/car/BinderInterfaceContainer<TT;>;"
    .local p2, "binderInterface":Landroid/os/IInterface;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->mContainer:Lcom/android/car/BinderInterfaceContainer;

    .line 39
    iput-object p2, p0, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->binderInterface:Landroid/os/IInterface;

    .line 40
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 44
    .local p0, "this":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<TT;>;"
    iget-object v0, p0, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->binderInterface:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 45
    iget-object v0, p0, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->mContainer:Lcom/android/car/BinderInterfaceContainer;

    invoke-static {v0, p0}, Lcom/android/car/BinderInterfaceContainer;->access$000(Lcom/android/car/BinderInterfaceContainer;Lcom/android/car/BinderInterfaceContainer$BinderInterface;)V

    .line 46
    return-void
.end method
