.class Lcom/android/car/pm/VendorServiceController$VendorServiceConnection$1;
.super Landroid/os/Handler;
.source "VendorServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/car/userlib/CarUserManagerHelper;Lcom/android/car/pm/VendorServiceInfo;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 280
    iput-object p1, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection$1;->this$0:Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 283
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection$1;->this$0:Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;

    invoke-static {v0, p1}, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->access$400(Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;Landroid/os/Message;)V

    .line 284
    return-void
.end method
