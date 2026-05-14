.class Lcom/chery/media/util/CarAdapterUse$3$1;
.super Ljava/lang/Object;
.source "CarAdapterUse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/util/CarAdapterUse$3;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/util/CarAdapterUse$3;

.field final synthetic val$var1:I


# direct methods
.method constructor <init>(Lcom/chery/media/util/CarAdapterUse$3;I)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/chery/media/util/CarAdapterUse$3$1;->this$0:Lcom/chery/media/util/CarAdapterUse$3;

    iput p2, p0, Lcom/chery/media/util/CarAdapterUse$3$1;->val$var1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 291
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/chery/media/util/CarAdapterUse$3$1;->val$var1:I

    invoke-static {v2}, Lcom/chery/media/util/CarAdapterUse;->access$300(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/chery/media/util/CarAdapterUse$3$1;->val$var1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "CarPowerClient onStateChanged %s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$400()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/caradapter/carapi/interfaces/IPowerListener;

    .line 293
    iget v2, p0, Lcom/chery/media/util/CarAdapterUse$3$1;->val$var1:I

    invoke-interface {v1, v2}, Lcom/chery/caradapter/carapi/interfaces/IPowerListener;->onStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
