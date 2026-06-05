.class Lcom/android/car/CarTestService$TokenDeathRecipient;
.super Ljava/lang/Object;
.source "CarTestService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TokenDeathRecipient"
.end annotation


# instance fields
.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/car/CarTestService;


# direct methods
.method constructor <init>(Lcom/android/car/CarTestService;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/android/car/CarTestService$TokenDeathRecipient;->this$0:Lcom/android/car/CarTestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Lcom/android/car/CarTestService$TokenDeathRecipient;->mToken:Landroid/os/IBinder;

    .line 112
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/car/CarTestService$TokenDeathRecipient;->this$0:Lcom/android/car/CarTestService;

    iget-object v1, p0, Lcom/android/car/CarTestService$TokenDeathRecipient;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/car/CarTestService;->access$000(Lcom/android/car/CarTestService;Landroid/os/IBinder;)V

    .line 117
    return-void
.end method
