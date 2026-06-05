.class Lcom/android/car/CarPowerManagementService$1;
.super Ljava/lang/Object;
.source "CarPowerManagementService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/CarPowerManagementService;-><init>(Landroid/content/Context;Lcom/android/car/hal/PowerHalService;Lcom/android/car/systeminterface/SystemInterface;Landroid/car/userlib/CarUserManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarPowerManagementService;


# direct methods
.method constructor <init>(Lcom/android/car/CarPowerManagementService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarPowerManagementService;

    .line 190
    iput-object p1, p0, Lcom/android/car/CarPowerManagementService$1;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .line 194
    const-string v0, "CAR.POWER"

    const-string v1, "cpms receive focus change"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method
