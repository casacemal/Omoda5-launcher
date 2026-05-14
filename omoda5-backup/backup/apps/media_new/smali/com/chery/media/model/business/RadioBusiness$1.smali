.class Lcom/chery/media/model/business/RadioBusiness$1;
.super Ljava/lang/Object;
.source "RadioBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/RadioBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/RadioBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/RadioBusiness;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {v0}, Lcom/chery/media/model/business/RadioBusiness;->getAreaParam()I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v1, 0x4

    if-gt v0, v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$000(Lcom/chery/media/model/business/RadioBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 164
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$100(Lcom/chery/media/model/business/RadioBusiness;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 165
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "area changed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$300(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 167
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$400(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 168
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$500(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 169
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$600(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 170
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {v1}, Lcom/chery/media/model/business/RadioBusiness;->isAmAudioFocus()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {v1}, Lcom/chery/media/model/business/RadioBusiness;->isFmAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {v1, v2}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1, v2}, Lcom/chery/media/model/business/RadioBusiness;->access$702(Lcom/chery/media/model/business/RadioBusiness;I)I

    .line 174
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$800(Lcom/chery/media/model/business/RadioBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    iget-object v3, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v3}, Lcom/chery/media/model/business/RadioBusiness;->access$700(Lcom/chery/media/model/business/RadioBusiness;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 175
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1, v2}, Lcom/chery/media/model/business/RadioBusiness;->access$900(Lcom/chery/media/model/business/RadioBusiness;I)V

    .line 176
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chery/media/model/business/RadioBusiness;->access$102(Lcom/chery/media/model/business/RadioBusiness;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 177
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$1000(Lcom/chery/media/model/business/RadioBusiness;)V

    .line 179
    :cond_2
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness$1;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/RadioBusiness;->access$1100(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;

    .line 180
    invoke-interface {v1, v0}, Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;->onAreaChanged(I)V

    goto :goto_0

    :cond_3
    return-void
.end method
