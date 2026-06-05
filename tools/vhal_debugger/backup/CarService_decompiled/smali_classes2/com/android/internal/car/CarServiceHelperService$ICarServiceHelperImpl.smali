.class Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;
.super Lcom/android/internal/car/ICarServiceHelper$Stub;
.source "CarServiceHelperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/car/CarServiceHelperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ICarServiceHelperImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/car/CarServiceHelperService;


# direct methods
.method private constructor <init>(Lcom/android/internal/car/CarServiceHelperService;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;->this$0:Lcom/android/internal/car/CarServiceHelperService;

    invoke-direct {p0}, Lcom/android/internal/car/ICarServiceHelper$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/car/CarServiceHelperService;Lcom/android/internal/car/CarServiceHelperService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/car/CarServiceHelperService;
    .param p2, "x1"    # Lcom/android/internal/car/CarServiceHelperService$1;

    .line 455
    invoke-direct {p0, p1}, Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;-><init>(Lcom/android/internal/car/CarServiceHelperService;)V

    return-void
.end method


# virtual methods
.method public forceSuspend(I)I
    .locals 3
    .param p1, "timeoutMs"    # I

    .line 462
    iget-object v0, p0, Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;->this$0:Lcom/android/internal/car/CarServiceHelperService;

    invoke-static {v0}, Lcom/android/internal/car/CarServiceHelperService;->access$300(Lcom/android/internal/car/CarServiceHelperService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 465
    .local v0, "ident":J
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/car/CarServiceHelperService;->access$400(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    .local v2, "retVal":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 468
    nop

    .line 469
    return v2

    .line 467
    .end local v2    # "retVal":I
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
