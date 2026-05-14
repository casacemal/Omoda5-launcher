.class Lcom/chery/media/model/service/RadioBrowserService$2;
.super Ljava/lang/Object;
.source "RadioBrowserService.java"

# interfaces
.implements Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/service/RadioBrowserService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/service/RadioBrowserService;


# direct methods
.method constructor <init>(Lcom/chery/media/model/service/RadioBrowserService;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/chery/media/model/service/RadioBrowserService$2;->this$0:Lcom/chery/media/model/service/RadioBrowserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAreaChanged(I)V
    .locals 0

    return-void
.end method

.method public onChannelChanged(Lcom/chery/media/model/business/RadioDef;I)V
    .locals 1

    .line 59
    iget-object p2, p0, Lcom/chery/media/model/service/RadioBrowserService$2;->this$0:Lcom/chery/media/model/service/RadioBrowserService;

    iget p1, p1, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    iput p1, p2, Lcom/chery/media/model/service/RadioBrowserService;->mFrequencyKhz:I

    .line 60
    iget-object p1, p0, Lcom/chery/media/model/service/RadioBrowserService$2;->this$0:Lcom/chery/media/model/service/RadioBrowserService;

    iget p2, p1, Lcom/chery/media/model/service/RadioBrowserService;->mFrequencyKhz:I

    iget-object p0, p0, Lcom/chery/media/model/service/RadioBrowserService$2;->this$0:Lcom/chery/media/model/service/RadioBrowserService;

    iget v0, p0, Lcom/chery/media/model/service/RadioBrowserService;->mTunerState:I

    invoke-virtual {p0, v0}, Lcom/chery/media/model/service/RadioBrowserService;->stateSwitch(I)I

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/chery/media/model/service/RadioBrowserService;->access$100(Lcom/chery/media/model/service/RadioBrowserService;II)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/chery/media/model/service/RadioBrowserService$2;->this$0:Lcom/chery/media/model/service/RadioBrowserService;

    iput p1, v0, Lcom/chery/media/model/service/RadioBrowserService;->mTunerState:I

    .line 71
    iget-object p1, p0, Lcom/chery/media/model/service/RadioBrowserService$2;->this$0:Lcom/chery/media/model/service/RadioBrowserService;

    iget v0, p1, Lcom/chery/media/model/service/RadioBrowserService;->mFrequencyKhz:I

    iget-object p0, p0, Lcom/chery/media/model/service/RadioBrowserService$2;->this$0:Lcom/chery/media/model/service/RadioBrowserService;

    iget v1, p0, Lcom/chery/media/model/service/RadioBrowserService;->mTunerState:I

    invoke-virtual {p0, v1}, Lcom/chery/media/model/service/RadioBrowserService;->stateSwitch(I)I

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/chery/media/model/service/RadioBrowserService;->access$100(Lcom/chery/media/model/service/RadioBrowserService;II)V

    return-void
.end method
