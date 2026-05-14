.class public Lcom/chery/setting/BtSettingManager$BtDeviceInfo;
.super Ljava/lang/Object;
.source "BtSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/setting/BtSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BtDeviceInfo"
.end annotation


# instance fields
.field public AAConnected:Z

.field public CPConnected:Z

.field public a2dpState:I

.field public bondState:I

.field public connectCarPlay:Z

.field public device:Landroid/bluetooth/BluetoothDevice;

.field public hfpState:I

.field public isCPFirstConnect:Z

.field public isSupportWirelessAA:Z

.field public isSupportWirelessCP:Z

.field public isWirelessCPEnable:Z

.field public serial:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->hfpState:I

    .line 54
    iput v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->a2dpState:I

    const/16 v1, 0xa

    .line 55
    iput v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->bondState:I

    .line 56
    iput-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->connectCarPlay:Z

    const/4 v1, 0x1

    .line 57
    iput-boolean v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isCPFirstConnect:Z

    .line 58
    iput-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isWirelessCPEnable:Z

    const-string v1, ""

    .line 59
    iput-object v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->serial:Ljava/lang/String;

    .line 60
    iput-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isSupportWirelessCP:Z

    .line 61
    iput-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->CPConnected:Z

    .line 62
    iput-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isSupportWirelessAA:Z

    .line 63
    iput-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->AAConnected:Z

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->hfpState:I

    .line 54
    iput v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->a2dpState:I

    const/16 v1, 0xa

    .line 55
    iput v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->bondState:I

    .line 56
    iput-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->connectCarPlay:Z

    const/4 v1, 0x1

    .line 57
    iput-boolean v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isCPFirstConnect:Z

    .line 58
    iput-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isWirelessCPEnable:Z

    const-string v1, ""

    .line 59
    iput-object v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->serial:Ljava/lang/String;

    .line 60
    iput-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isSupportWirelessCP:Z

    .line 61
    iput-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->CPConnected:Z

    .line 62
    iput-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isSupportWirelessAA:Z

    .line 63
    iput-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->AAConnected:Z

    .line 69
    iput-object p1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public deepCopy()Lcom/chery/setting/BtSettingManager$BtDeviceInfo;
    .locals 2

    .line 73
    new-instance v0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;

    invoke-direct {v0}, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->device:Landroid/bluetooth/BluetoothDevice;

    iput-object v1, v0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->device:Landroid/bluetooth/BluetoothDevice;

    .line 75
    iget v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->hfpState:I

    iput v1, v0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->hfpState:I

    .line 76
    iget v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->a2dpState:I

    iput v1, v0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->a2dpState:I

    .line 77
    iget v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->bondState:I

    iput v1, v0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->bondState:I

    .line 78
    iget-boolean v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->connectCarPlay:Z

    iput-boolean v1, v0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->connectCarPlay:Z

    .line 79
    iget-boolean v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isCPFirstConnect:Z

    iput-boolean v1, v0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isCPFirstConnect:Z

    .line 80
    iget-boolean v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isWirelessCPEnable:Z

    iput-boolean v1, v0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isWirelessCPEnable:Z

    .line 81
    iget-object v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->serial:Ljava/lang/String;

    iput-object v1, v0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->serial:Ljava/lang/String;

    .line 82
    iget-boolean v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isSupportWirelessCP:Z

    iput-boolean v1, v0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isSupportWirelessCP:Z

    .line 83
    iget-boolean v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->CPConnected:Z

    iput-boolean v1, v0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->CPConnected:Z

    .line 84
    iget-boolean v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isSupportWirelessAA:Z

    iput-boolean v1, v0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isSupportWirelessAA:Z

    .line 85
    iget-boolean p0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->AAConnected:Z

    iput-boolean p0, v0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->AAConnected:Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Null"

    .line 99
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hfpState = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->hfpState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", a2dpState = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->a2dpState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bondState = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->bondState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n   connectCarPlay = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->connectCarPlay:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isCPFirstConnect = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isCPFirstConnect:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isWirelessCPEnable = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isWirelessCPEnable:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", serial: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->serial:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n   isSupportWirelessCP = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isSupportWirelessCP:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", CPConnection = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->CPConnected:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n   isSupportWirelessAA = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->isSupportWirelessAA:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", AAConnection = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/chery/setting/BtSettingManager$BtDeviceInfo;->AAConnected:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
