.class Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;
.super Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;
.source "CarPlayJAVAClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;


# direct methods
.method constructor <init>(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-direct {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotiftIApAuthStatus(II)V
    .locals 3

    .line 188
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotiftIApAuthStatus:AuthType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 190
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    .line 193
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onNotiftIApAuthStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 197
    sget-object v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNotifyCPReadyToAuth(Ljava/lang/String;I)V
    .locals 3

    .line 173
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyCPReadyToAuth:uniqueInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 175
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    .line 178
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onNotifyCPReadyToAuth(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 182
    sget-object v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNotifyDisableBt(Ljava/lang/String;)V
    .locals 3

    .line 124
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyDisableBt:btMacAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 126
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    .line 129
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onNotifyDisableBt(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    sget-object v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNotifyVideoChange(Z)V
    .locals 3

    .line 140
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyVideoChange:isStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 142
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    .line 145
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onNotifyVideoChange(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 149
    sget-object v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNotifyWifi(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 220
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyWifi:connectType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",uniqueInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 222
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    .line 225
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onNotifyWifi(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 229
    sget-object v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNotifyWirelessCPEnalbe(Z)V
    .locals 3

    .line 156
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyWirelessCPEnalbe:enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 158
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    .line 161
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onNotifyWirelessCPEnalbe(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 165
    sget-object v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUSBIAP2DeviceStsChanged(ZLjava/lang/String;)V
    .locals 3

    .line 204
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUSBIAP2DeviceStsChanged:isDeviceAttatched="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 206
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    .line 209
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onUSBIAP2DeviceStsChanged(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 213
    sget-object v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateCallInfo(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateCallInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 76
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 79
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onUpdateCallInfo(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    sget-object v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateMediaToken(Landroid/media/session/MediaSession$Token;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateMediaToken"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 44
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    .line 47
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onUpdateMediaToken(Landroid/media/session/MediaSession$Token;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    sget-object v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateNaviInfo(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateNaviInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 92
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 95
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onUpdateNaviInfo(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    sget-object v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateSiriSts(Z)V
    .locals 4

    .line 106
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateSiriSts:sts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 108
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    .line 110
    sget-object v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateSiriSts:Listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onUpdateSiriSts(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    sget-object v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_0
    sget-object p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    const-string p1, "onUpdateSiriSts:end"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpdateVideoFocus(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateVideoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 60
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    .line 63
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onSetVideoFocus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    sget-object v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method
