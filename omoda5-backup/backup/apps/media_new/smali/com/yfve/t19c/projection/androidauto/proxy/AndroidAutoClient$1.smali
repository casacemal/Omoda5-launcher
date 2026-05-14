.class Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;
.super Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;
.source "AndroidAutoClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final FocusMode_Native:I = 0x2

.field public static final FocusMode_Project:I = 0x1

.field public static final FocusMode_Transient:I = 0x3

.field private static final TAG:Ljava/lang/String; = "IAndroidAutoListener"


# instance fields
.field final synthetic this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;


# direct methods
.method constructor <init>(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-direct {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/IAndroidAutoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPrepareRemoteHfpDevice(Ljava/lang/String;)V
    .locals 7

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v2}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " OnPrepareRemoteHfpDevice in"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IAndroidAutoListener"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 231
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    .line 234
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;->OnPrepareRemoteHfpDevice(Ljava/lang/String;)V

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v5}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " OnPrepareRemoteHfpDevice notify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 237
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAAMediaSourceResponse(I)V
    .locals 7

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v2}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " onAAMediaSourceResponse in"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IAndroidAutoListener"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 276
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    .line 279
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;->onAAMediaSourceResponse(I)V

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v5}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " onAAMediaSourceResponse notify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 282
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAuthenticationResult(I)V
    .locals 7

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v2}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " onAuthenticationResult in"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IAndroidAutoListener"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 246
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    .line 249
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;->onAuthenticationResult(I)V

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v5}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " onAuthenticationResult notify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 252
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onHidePermissionPrompt()V
    .locals 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " onHidePermissionPrompt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAndroidAutoListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 186
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    .line 189
    :try_start_0
    invoke-virtual {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;->onHidePermissionPrompt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNotification(Ljava/lang/String;)V
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " onNotification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAndroidAutoListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 144
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    .line 147
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;->onNotification(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNotifyDevTransport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " onNotifyDevTransport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAndroidAutoListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 101
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    .line 104
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;->onNotifyDevTransport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResizeSurfaceView(III)V
    .locals 7

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v2}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " onResizeSurfaceView in"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IAndroidAutoListener"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 216
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    .line 219
    :try_start_0
    invoke-virtual {v3, p1, p2, p3}, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;->onResizeSurfaceView(III)V

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v5}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " onResizeSurfaceView notify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 222
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSessionStatusUpdate(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v2}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " onSessionStatusUpdate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IAndroidAutoListener"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 129
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v5}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " onSessionStatusUpdate cb listener"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_0
    invoke-virtual {v3, p1, p2, p3}, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;->onSessionStatusUpdate(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 135
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSetVideoFocus(I)V
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " onSetVideoFocus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAndroidAutoListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 115
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    .line 118
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;->onSetVideoFocus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onShowPermissionPrompt()V
    .locals 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " onShowPermissionPrompt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAndroidAutoListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 172
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    .line 175
    :try_start_0
    invoke-virtual {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;->onShowPermissionPrompt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTakeOverDilarPage(Z)V
    .locals 7

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v2}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " onTakeOverDilarPage in"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IAndroidAutoListener"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 261
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    .line 264
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;->onTakeOverDilarPage(Z)V

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v5}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " onTakeOverDilarPage notify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 267
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateActivityState(I)V
    .locals 7

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v2}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " onUpdateActivityState state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IAndroidAutoListener"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 291
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    .line 294
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;->onUpdateActivityState(I)V

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v5}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " onUpdateActivityState notify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 297
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateMediaToken(Landroid/media/session/MediaSession$Token;)V
    .locals 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " onUpdateMediaToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAndroidAutoListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

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

    check-cast v0, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    .line 161
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;->onUpdateMediaToken(Landroid/media/session/MediaSession$Token;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateVoiceSessionState(I)V
    .locals 7

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v2}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " onUpdateVoiceSessionState in"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IAndroidAutoListener"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$202(I)I

    .line 200
    iget-object v0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$100(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 201
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    .line 204
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;->onUpdateVoiceSessionState(I)V

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$1;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v5}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " onUpdateVoiceSessionState notify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 207
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method
