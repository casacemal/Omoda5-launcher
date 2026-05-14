.class Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$2;
.super Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener$Stub;
.source "AndroidAutoClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;


# direct methods
.method constructor <init>(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$2;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-direct {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateCallStatus(Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;)V
    .locals 7

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$2;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v2}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " onUpdateCallStatus in"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AndroidAutoClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$2;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " onUpdateCallStatus status is null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 312
    invoke-virtual {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/ICallStatus;->getCallStatus()Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;

    move-result-object p1

    .line 313
    iget-object p1, p1, Lcom/yfve/t19c/projection/androidauto/proxy/CallStatus;->mCallData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 314
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 315
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yfve/t19c/projection/androidauto/proxy/Call;

    .line 316
    iget v4, v3, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->status:I

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    iget v5, v3, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->status:I

    if-eq v4, v5, :cond_1

    move-object v0, v3

    :cond_2
    if-eqz v0, :cond_4

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$2;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v3}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " onUpdateCallStatus state:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->status:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " duration:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->call_duration_seconds:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " number:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->caller_number:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " id:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->caller_id:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->caller_number_type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " thumbnail not output."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object p1, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$2;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$300(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 335
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 336
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yfve/t19c/projection/androidauto/proxy/AAPhoneCallListener;

    .line 338
    :try_start_0
    invoke-virtual {v3, v0}, Lcom/yfve/t19c/projection/androidauto/proxy/AAPhoneCallListener;->onUpdateOneCurrentCall(Lcom/yfve/t19c/projection/androidauto/proxy/Call;)V

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$2;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {v5}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " onUpdateCallStatus notify "

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

    .line 342
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$2;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " onUpdateCallStatus end"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 331
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$2;->this$0:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->access$000(Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " onUpdateCallStatus no active call"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
