.class Lcom/android/car/pm/VendorServiceController$1;
.super Landroid/os/Handler;
.source "VendorServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/pm/VendorServiceController;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/car/userlib/CarUserManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/pm/VendorServiceController;


# direct methods
.method constructor <init>(Lcom/android/car/pm/VendorServiceController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/pm/VendorServiceController;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 76
    iput-object p1, p0, Lcom/android/car/pm/VendorServiceController$1;->this$0:Lcom/android/car/pm/VendorServiceController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 79
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController$1;->this$0:Lcom/android/car/pm/VendorServiceController;

    invoke-static {v0, p1}, Lcom/android/car/pm/VendorServiceController;->access$000(Lcom/android/car/pm/VendorServiceController;Landroid/os/Message;)V

    .line 80
    return-void
.end method
