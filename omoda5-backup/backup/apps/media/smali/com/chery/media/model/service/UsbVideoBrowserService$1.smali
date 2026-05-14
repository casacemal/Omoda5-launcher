.class Lcom/chery/media/model/service/UsbVideoBrowserService$1;
.super Landroid/media/session/MediaSession$Callback;
.source "UsbVideoBrowserService.java"


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

    .line 37
    iput-object p1, p0, Lcom/chery/media/model/service/UsbVideoBrowserService$1;->this$0:Lcom/chery/media/model/service/UsbVideoBrowserService;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method
