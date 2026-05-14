.class Lcom/chery/media/model/service/UsbVideoBrowserService$2;
.super Ljava/lang/Object;
.source "UsbVideoBrowserService.java"

# interfaces
.implements Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/service/UsbVideoBrowserService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/service/UsbVideoBrowserService;


# direct methods
.method constructor <init>(Lcom/chery/media/model/service/UsbVideoBrowserService;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/chery/media/model/service/UsbVideoBrowserService$2;->this$0:Lcom/chery/media/model/service/UsbVideoBrowserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentUsbChanged(I)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/chery/media/model/service/UsbVideoBrowserService$2;->this$0:Lcom/chery/media/model/service/UsbVideoBrowserService;

    invoke-static {p0}, Lcom/chery/media/model/service/UsbVideoBrowserService;->access$000(Lcom/chery/media/model/service/UsbVideoBrowserService;)V

    return-void
.end method
