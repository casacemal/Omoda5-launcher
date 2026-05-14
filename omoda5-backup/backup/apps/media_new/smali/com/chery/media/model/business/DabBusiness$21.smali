.class Lcom/chery/media/model/business/DabBusiness$21;
.super Ljava/lang/Object;
.source "DabBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/DabBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/DabBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/DabBusiness;)V
    .locals 0

    .line 1795
    iput-object p1, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1798
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget-object v0, v0, Lcom/chery/media/model/business/DabBusiness;->dabReserveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1799
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget-object v0, v0, Lcom/chery/media/model/business/DabBusiness;->dabReserveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabProgramInfo;

    .line 1800
    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-virtual {v2, v1}, Lcom/chery/media/model/business/DabBusiness;->isProgramStartInOneMinute(Lcom/chery/media/model/business/DabProgramInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    move v2, v0

    .line 1802
    :goto_0
    iget-object v3, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget-object v3, v3, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1803
    iget-object v3, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget-object v3, v3, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/DabProgramInfo;

    invoke-virtual {v3, v1}, Lcom/chery/media/model/business/DabProgramInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1804
    iget-object v3, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget-object v3, v3, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/DabProgramInfo;

    iput-boolean v0, v2, Lcom/chery/media/model/business/DabProgramInfo;->hasReserved:Z

    .line 1805
    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/DabBusiness;->access$2400(Lcom/chery/media/model/business/DabBusiness;)V

    .line 1806
    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/DabBusiness;->access$2500(Lcom/chery/media/model/business/DabBusiness;)V

    .line 1807
    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/DabBusiness;->access$2200(Lcom/chery/media/model/business/DabBusiness;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1813
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/DabBusiness;->access$2600(Lcom/chery/media/model/business/DabBusiness;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v2, v1}, Lcom/chery/media/model/business/DabBusiness;->access$2700(Lcom/chery/media/model/business/DabBusiness;Lcom/chery/media/model/business/DabProgramInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/DabBusiness;->access$1000(Lcom/chery/media/model/business/DabBusiness;)I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 1814
    :cond_3
    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v2, v1, v3}, Lcom/chery/media/model/business/DabBusiness;->access$2800(Lcom/chery/media/model/business/DabBusiness;Lcom/chery/media/model/business/DabProgramInfo;Z)V

    .line 1818
    :cond_4
    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/DabBusiness;->access$2600(Lcom/chery/media/model/business/DabBusiness;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v2, v1}, Lcom/chery/media/model/business/DabBusiness;->access$2700(Lcom/chery/media/model/business/DabBusiness;Lcom/chery/media/model/business/DabProgramInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/DabBusiness;->access$1000(Lcom/chery/media/model/business/DabBusiness;)I

    move-result v2

    if-ne v2, v3, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-virtual {v2}, Lcom/chery/media/model/business/DabBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1819
    :cond_6
    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v2, v1, v0}, Lcom/chery/media/model/business/DabBusiness;->access$2800(Lcom/chery/media/model/business/DabBusiness;Lcom/chery/media/model/business/DabProgramInfo;Z)V

    .line 1825
    :cond_7
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/DabBusiness;->access$200(Lcom/chery/media/model/business/DabBusiness;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$21;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/DabBusiness;->access$2900(Lcom/chery/media/model/business/DabBusiness;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
