.class Lcom/android/car/CarInputService$1;
.super Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;
.source "CarInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarInputService;


# direct methods
.method constructor <init>(Lcom/android/car/CarInputService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarInputService;

    .line 125
    iput-object p1, p0, Lcom/android/car/CarInputService$1;->this$0:Lcom/android/car/CarInputService;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .line 128
    const-string v0, "CAR.INPUT"

    const-string v1, "Failed to show VoiceInteractionSession"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public onShown()V
    .locals 0

    .line 136
    return-void
.end method
