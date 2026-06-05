.class Lcom/android/car/FastPairProvider$FastPairAdvertiseCallback;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source "FastPairProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/FastPairProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FastPairAdvertiseCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/FastPairProvider;


# direct methods
.method private constructor <init>(Lcom/android/car/FastPairProvider;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/car/FastPairProvider$FastPairAdvertiseCallback;->this$0:Lcom/android/car/FastPairProvider;

    invoke-direct {p0}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/FastPairProvider;Lcom/android/car/FastPairProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/FastPairProvider;
    .param p2, "x1"    # Lcom/android/car/FastPairProvider$1;

    .line 112
    invoke-direct {p0, p1}, Lcom/android/car/FastPairProvider$FastPairAdvertiseCallback;-><init>(Lcom/android/car/FastPairProvider;)V

    return-void
.end method


# virtual methods
.method public onStartFailure(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .line 115
    invoke-super {p0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartFailure(I)V

    .line 116
    invoke-static {}, Lcom/android/car/FastPairProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FastPairProvider"

    const-string v1, "Advertising failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    return-void
.end method

.method public onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 2
    .param p1, "settingsInEffect"    # Landroid/bluetooth/le/AdvertiseSettings;

    .line 121
    invoke-super {p0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 122
    invoke-static {}, Lcom/android/car/FastPairProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FastPairProvider"

    const-string v1, "Advertising successfully started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    return-void
.end method
