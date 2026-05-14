.class Lcom/chery/media/model/service/RadioAIDLService$2;
.super Lcom/chery/media/ITunerInterface$Stub;
.source "RadioAIDLService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/service/RadioAIDLService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/service/RadioAIDLService;


# direct methods
.method constructor <init>(Lcom/chery/media/model/service/RadioAIDLService;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/chery/media/model/service/RadioAIDLService$2;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    invoke-direct {p0}, Lcom/chery/media/ITunerInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public getArea()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getArea()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getBand()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getCurrentBand()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getFreq()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getCurrentChannel()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/RadioDef;

    iget p0, p0, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    return p0
.end method

.method public getRadioSignal()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getSignalStrength()I

    move-result p0

    return p0
.end method

.method public registerCallback(Lcom/chery/media/ITunerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    iget-object p0, p0, Lcom/chery/media/model/service/RadioAIDLService$2;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    iget-object p0, p0, Lcom/chery/media/model/service/RadioAIDLService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public scanbackward()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/chery/media/model/business/RadioBusiness;->seek(IZ)V

    return-void
.end method

.method public scanforward()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/chery/media/model/business/RadioBusiness;->seek(IZ)V

    return-void
.end method

.method public setAera(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->setArea(I)V

    return-void
.end method

.method public setBand(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->setConfigure(I)V

    return-void
.end method

.method public unregisterCallback(Lcom/chery/media/ITunerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-object p0, p0, Lcom/chery/media/model/service/RadioAIDLService$2;->this$0:Lcom/chery/media/model/service/RadioAIDLService;

    iget-object p0, p0, Lcom/chery/media/model/service/RadioAIDLService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
