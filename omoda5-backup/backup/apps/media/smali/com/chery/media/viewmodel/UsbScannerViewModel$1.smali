.class Lcom/chery/media/viewmodel/UsbScannerViewModel$1;
.super Ljava/lang/Object;
.source "UsbScannerViewModel.java"

# interfaces
.implements Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/viewmodel/UsbScannerViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/viewmodel/UsbScannerViewModel;


# direct methods
.method constructor <init>(Lcom/chery/media/viewmodel/UsbScannerViewModel;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel$1;->this$0:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMountStatusChanged(IZ)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel$1;->this$0:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->access$000(Lcom/chery/media/viewmodel/UsbScannerViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;

    .line 61
    iput-boolean p2, v0, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;->mounted:Z

    .line 62
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel$1;->this$0:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->access$000(Lcom/chery/media/viewmodel/UsbScannerViewModel;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onScanInfoUpdate(II)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel$1;->this$0:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->access$100(Lcom/chery/media/viewmodel/UsbScannerViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbScanStatusData;

    .line 68
    iput p2, v0, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbScanStatusData;->status:I

    .line 69
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel$1;->this$0:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->access$100(Lcom/chery/media/viewmodel/UsbScannerViewModel;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
