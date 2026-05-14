.class Lcom/chery/setting/BrightnessAIDLTool$2;
.super Lcom/chery/settings/IBrightnessCallback$Stub;
.source "BrightnessAIDLTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/setting/BrightnessAIDLTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/setting/BrightnessAIDLTool;


# direct methods
.method constructor <init>(Lcom/chery/setting/BrightnessAIDLTool;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/chery/setting/BrightnessAIDLTool$2;->this$0:Lcom/chery/setting/BrightnessAIDLTool;

    invoke-direct {p0}, Lcom/chery/settings/IBrightnessCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrightnessChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object p0, p0, Lcom/chery/setting/BrightnessAIDLTool$2;->this$0:Lcom/chery/setting/BrightnessAIDLTool;

    invoke-static {p0}, Lcom/chery/setting/BrightnessAIDLTool;->access$200(Lcom/chery/setting/BrightnessAIDLTool;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/setting/BrightnessAIDLTool$BrightnessListener;

    .line 95
    invoke-interface {v0, p1}, Lcom/chery/setting/BrightnessAIDLTool$BrightnessListener;->onBrightnessChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
