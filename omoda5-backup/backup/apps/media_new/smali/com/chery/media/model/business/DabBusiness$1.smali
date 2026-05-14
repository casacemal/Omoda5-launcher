.class Lcom/chery/media/model/business/DabBusiness$1;
.super Ljava/lang/Object;
.source "DabBusiness.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/DabBusiness;->init(Landroid/content/Context;)V
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

    .line 229
    iput-object p1, p0, Lcom/chery/media/model/business/DabBusiness$1;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvmVersion([B)V
    .locals 0

    return-void
.end method

.method public onCalibrationStatus([B)V
    .locals 0

    return-void
.end method

.method public onDataStorage([B)V
    .locals 0

    return-void
.end method

.method public onEngineerMode([B)V
    .locals 0

    return-void
.end method

.method public onEnterExitState([B)V
    .locals 3

    .line 232
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$1;->this$0:Lcom/chery/media/model/business/DabBusiness;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    array-length v2, p1

    if-lt v2, v1, :cond_0

    aget-byte p1, p1, v0

    if-ne p1, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {p0, v0}, Lcom/chery/media/model/business/DabBusiness;->access$000(Lcom/chery/media/model/business/DabBusiness;Z)V

    return-void
.end method

.method public onLogSettings([B)V
    .locals 0

    return-void
.end method

.method public onSimulateOthers([B)V
    .locals 0

    return-void
.end method

.method public onViewParams([B)V
    .locals 0

    return-void
.end method

.method public onViewStatus([B)V
    .locals 0

    return-void
.end method
