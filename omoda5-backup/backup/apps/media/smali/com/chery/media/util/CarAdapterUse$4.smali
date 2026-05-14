.class final Lcom/chery/media/util/CarAdapterUse$4;
.super Ljava/lang/Object;
.source "CarAdapterUse.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/IConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigSuccess()V
    .locals 2

    .line 319
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarConfigInfoClient onConfigSuccess:"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarConfigInfoClient onConfigSuccess getRadioArea:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$600()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getRadioArea()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarConfigInfoClient onConfigSuccess getRadioArea2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$600()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getRadioArea2()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarConfigInfoClient onConfigSuccess isPartNumberBrazil:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$600()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isPartNumberBrazil()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
