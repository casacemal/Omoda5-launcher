.class public Lcom/chery/media/viewmodel/UsbScannerViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "UsbScannerViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbScanStatusData;,
        Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;
    }
.end annotation


# instance fields
.field private usbDeviceInfoListener:Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;

.field private usbMountStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;",
            ">;>;"
        }
    .end annotation
.end field

.field private usbScanStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbScanStatusData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 7

    .line 46
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel;->usbMountStatusMap:Ljava/util/Map;

    .line 43
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel;->usbScanStatusMap:Ljava/util/Map;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    if-gtz v0, :cond_2

    .line 49
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel;->usbMountStatusMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;

    if-eqz v1, :cond_0

    iget-boolean v6, v1, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mounted:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, p1

    :goto_1
    invoke-direct {v5, v0, v6}, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;-><init>(IZ)V

    invoke-direct {v4, v5}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v2, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel;->usbScanStatusMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbScanStatusData;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->scanStatus:I

    goto :goto_2

    :cond_1
    const/16 v1, 0x20

    :goto_2
    invoke-direct {v5, v0, v1}, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbScanStatusData;-><init>(II)V

    invoke-direct {v4, v5}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_2
    new-instance p1, Lcom/chery/media/viewmodel/UsbScannerViewModel$1;

    invoke-direct {p1, p0}, Lcom/chery/media/viewmodel/UsbScannerViewModel$1;-><init>(Lcom/chery/media/viewmodel/UsbScannerViewModel;)V

    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel;->usbDeviceInfoListener:Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;

    .line 72
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel;->usbDeviceInfoListener:Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;

    invoke-virtual {p1, p0}, Lcom/chery/media/model/business/UsbScannerBusiness;->addUsbDeviceInfoListener(Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/viewmodel/UsbScannerViewModel;)Ljava/util/Map;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel;->usbMountStatusMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/viewmodel/UsbScannerViewModel;)Ljava/util/Map;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel;->usbScanStatusMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public getFolderInfo(ILjava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;
    .locals 0

    .line 124
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/UsbScannerBusiness;->getFolderInfo(ILjava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMusics(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getMusics(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPictures(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;"
        }
    .end annotation

    .line 120
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getPictures(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;
    .locals 0

    .line 108
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getUsbScanStatus(I)I
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel;->usbScanStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel;->usbScanStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbScanStatusData;

    iget p0, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbScanStatusData;->status:I

    return p0

    :cond_0
    const/16 p0, 0x20

    return p0
.end method

.method public getVideos(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getVideos(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isMounted(I)Z
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel;->usbMountStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel;->usbMountStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;

    iget-boolean p0, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;->mounted:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public observeUsbMountStatusDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbMountStatusData;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel;->usbMountStatusMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 90
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public observeUsbScanStatusDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/chery/media/viewmodel/UsbScannerViewModel$UsbScanStatusData;",
            ">;)V"
        }
    .end annotation

    .line 102
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel;->usbScanStatusMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 103
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 1

    .line 77
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 78
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbScannerViewModel;->usbDeviceInfoListener:Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/UsbScannerBusiness;->removeUsbDeviceInfoListener(Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;)V

    return-void
.end method
