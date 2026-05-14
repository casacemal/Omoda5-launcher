.class Lcom/chery/androidauto/AAModel$ProxyAAPhoneListener;
.super Lcom/yfve/t19c/projection/androidauto/proxy/AAPhoneCallListener;
.source "AAModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/androidauto/AAModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyAAPhoneListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/androidauto/AAModel;


# direct methods
.method private constructor <init>(Lcom/chery/androidauto/AAModel;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/chery/androidauto/AAModel$ProxyAAPhoneListener;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-direct {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AAPhoneCallListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/androidauto/AAModel;Lcom/chery/androidauto/AAModel$1;)V
    .locals 0

    .line 495
    invoke-direct {p0, p1}, Lcom/chery/androidauto/AAModel$ProxyAAPhoneListener;-><init>(Lcom/chery/androidauto/AAModel;)V

    return-void
.end method


# virtual methods
.method public onUpdateOneCurrentCall(Lcom/yfve/t19c/projection/androidauto/proxy/Call;)V
    .locals 2

    .line 499
    invoke-super {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AAPhoneCallListener;->onUpdateOneCurrentCall(Lcom/yfve/t19c/projection/androidauto/proxy/Call;)V

    .line 500
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateOneCurrentCall: caller_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->caller_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",caller_number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->caller_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",caller_number_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->caller_number_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",caller_thumbnail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->caller_thumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",call_duration_seconds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->call_duration_seconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/yfve/t19c/projection/androidauto/proxy/Call;->status:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
