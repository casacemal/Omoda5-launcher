.class Lcom/chery/media/model/service/EolRadioService$2;
.super Lcom/chery/eol/IEolRadioService$Stub;
.source "EolRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/service/EolRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/service/EolRadioService;


# direct methods
.method constructor <init>(Lcom/chery/media/model/service/EolRadioService;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/chery/media/model/service/EolRadioService$2;->this$0:Lcom/chery/media/model/service/EolRadioService;

    invoke-direct {p0}, Lcom/chery/eol/IEolRadioService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSignalStrength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    invoke-static {}, Lcom/chery/media/model/service/EolRadioService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getSignalStrength "

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getSignalStrength()I

    move-result p0

    return p0
.end method

.method public getTunerCurrentStatus()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getChannel()I

    move-result p0

    .line 43
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/RadioBusiness;->indexOfCollection(I)I

    move-result v0

    .line 44
    invoke-static {}, Lcom/chery/media/model/service/EolRadioService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTunerCurrentStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v1, Lcom/chery/media/model/business/RadioBusiness;->FREQ_DIVIDE_BAND:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le p0, v1, :cond_0

    .line 46
    div-int/lit8 p0, p0, 0xa

    :cond_0
    const/4 v1, 0x6

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 49
    aget-byte v3, v1, v2

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    .line 50
    aget-byte v4, v1, v3

    sget-object v5, Lcom/chery/media/model/business/RadioBusiness;->FREQ_DIVIDE_BAND:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-le p0, v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 51
    aget-byte v3, v1, v6

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v6

    const/4 v0, 0x3

    .line 52
    aget-byte v3, v1, v0

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/4 v0, 0x4

    .line 53
    aget-byte v2, v1, v0

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/4 v0, 0x5

    .line 54
    aget-byte v2, v1, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, v1, v0

    return-object v1
.end method

.method public setBand(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/chery/media/model/service/EolRadioService;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    :goto_0
    return-void
.end method

.method public setFrequency([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/chery/media/model/service/EolRadioService;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFrequency 0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " 1:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    aget-byte p0, p1, v1

    shl-int/lit8 p0, p0, 0x8

    .line 79
    aget-byte p1, p1, v2

    add-int/2addr p0, p1

    .line 80
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p1

    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->FREQ_DIVIDE_BAND:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p0, v0, :cond_0

    mul-int/lit8 p0, p0, 0xa

    :cond_0
    invoke-virtual {p1, p0}, Lcom/chery/media/model/business/RadioBusiness;->tune(I)V

    return-void
.end method

.method public setTunerAutoScanUp(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/chery/media/model/service/EolRadioService;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTunerAutoScanUp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->cancel()V

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/chery/media/model/business/RadioBusiness;->scan(IZ)I

    :goto_0
    return-void
.end method

.method public setTunerAutoStore(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-static {}, Lcom/chery/media/model/service/EolRadioService;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTunerAutoStore "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->cancel()V

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/chery/media/model/business/RadioBusiness;->scan(IZ)I

    :goto_0
    return-void
.end method

.method public setTunerFavorite(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/chery/media/model/service/EolRadioService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTunerFavorite "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 87
    iput v1, v0, Landroid/os/Message;->what:I

    .line 88
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 89
    iget-object p0, p0, Lcom/chery/media/model/service/EolRadioService$2;->this$0:Lcom/chery/media/model/service/EolRadioService;

    invoke-static {p0}, Lcom/chery/media/model/service/EolRadioService;->access$100(Lcom/chery/media/model/service/EolRadioService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setTunerPreset(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/chery/media/model/service/EolRadioService;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTunerPreset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTunerSeek(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/chery/media/model/service/EolRadioService;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTunerSeek "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/RadioBusiness;->step(I)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/chery/media/model/business/RadioBusiness;->step(I)V

    goto :goto_0

    .line 105
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0, v0, v0}, Lcom/chery/media/model/business/RadioBusiness;->seek(IZ)V

    goto :goto_0

    .line 102
    :cond_3
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/chery/media/model/business/RadioBusiness;->seek(IZ)V

    :goto_0
    return-void
.end method

.method public setTunerUpdateStationList(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    invoke-static {}, Lcom/chery/media/model/service/EolRadioService;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTunerUpdateStationList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
