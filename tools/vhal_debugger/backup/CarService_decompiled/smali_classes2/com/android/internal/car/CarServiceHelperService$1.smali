.class Lcom/android/internal/car/CarServiceHelperService$1;
.super Ljava/lang/Object;
.source "CarServiceHelperService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/car/CarServiceHelperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/car/CarServiceHelperService;


# direct methods
.method constructor <init>(Lcom/android/internal/car/CarServiceHelperService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/car/CarServiceHelperService;

    .line 91
    iput-object p1, p0, Lcom/android/internal/car/CarServiceHelperService$1;->this$0:Lcom/android/internal/car/CarServiceHelperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/internal/car/CarServiceHelperService$1;->this$0:Lcom/android/internal/car/CarServiceHelperService;

    invoke-static {v0, p2}, Lcom/android/internal/car/CarServiceHelperService;->access$100(Lcom/android/internal/car/CarServiceHelperService;Landroid/os/IBinder;)V

    .line 99
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 103
    iget-object v0, p0, Lcom/android/internal/car/CarServiceHelperService$1;->this$0:Lcom/android/internal/car/CarServiceHelperService;

    invoke-static {v0}, Lcom/android/internal/car/CarServiceHelperService;->access$200(Lcom/android/internal/car/CarServiceHelperService;)V

    .line 104
    return-void
.end method
