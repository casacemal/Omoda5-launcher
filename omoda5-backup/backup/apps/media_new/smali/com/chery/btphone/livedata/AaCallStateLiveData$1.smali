.class Lcom/chery/btphone/livedata/AaCallStateLiveData$1;
.super Ljava/lang/Object;
.source "AaCallStateLiveData.java"

# interfaces
.implements Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;


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

    .line 25
    iput-object p1, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData$1;->this$0:Lcom/chery/btphone/livedata/AaCallStateLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindServiceConnected()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData$1;->this$0:Lcom/chery/btphone/livedata/AaCallStateLiveData;

    invoke-static {v0}, Lcom/chery/btphone/livedata/AaCallStateLiveData;->access$000(Lcom/chery/btphone/livedata/AaCallStateLiveData;)Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->getSessionState()I

    move-result v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindServiceConnected: aa session state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CD.AaCallStateLiveData"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p0, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData$1;->this$0:Lcom/chery/btphone/livedata/AaCallStateLiveData;

    invoke-static {p0, v0}, Lcom/chery/btphone/livedata/AaCallStateLiveData;->access$100(Lcom/chery/btphone/livedata/AaCallStateLiveData;I)V

    return-void
.end method

.method public onBindServiceDisConnected()V
    .locals 1

    const-string p0, "CD.AaCallStateLiveData"

    const-string v0, "onBindServiceDisConnected: "

    .line 35
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
