.class Lcom/chery/btphone/livedata/AaCallStateLiveData$2;
.super Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;
.source "AaCallStateLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/btphone/livedata/AaCallStateLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/btphone/livedata/AaCallStateLiveData;


# direct methods
.method constructor <init>(Lcom/chery/btphone/livedata/AaCallStateLiveData;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData$2;->this$0:Lcom/chery/btphone/livedata/AaCallStateLiveData;

    invoke-direct {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onTakeOverDilarPage$0$AaCallStateLiveData$2()V
    .locals 1

    .line 50
    iget-object p0, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData$2;->this$0:Lcom/chery/btphone/livedata/AaCallStateLiveData;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chery/btphone/livedata/AaCallStateLiveData;->access$100(Lcom/chery/btphone/livedata/AaCallStateLiveData;I)V

    return-void
.end method

.method public onSessionStatusUpdate(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sessionSts:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",btMac:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",deviceName:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CD.AaCallStateLiveData"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTakeOverDilarPage(Z)V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTakeOverDilarPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CD.AaCallStateLiveData"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p1, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData$2;->this$0:Lcom/chery/btphone/livedata/AaCallStateLiveData;

    invoke-static {p1}, Lcom/chery/btphone/livedata/AaCallStateLiveData;->access$200(Lcom/chery/btphone/livedata/AaCallStateLiveData;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/btphone/livedata/-$$Lambda$AaCallStateLiveData$2$1mMmYrf8Rxa7MwPVs37JwC2X28I;

    invoke-direct {v0, p0}, Lcom/chery/btphone/livedata/-$$Lambda$AaCallStateLiveData$2$1mMmYrf8Rxa7MwPVs37JwC2X28I;-><init>(Lcom/chery/btphone/livedata/AaCallStateLiveData$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
