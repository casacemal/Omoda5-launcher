.class Lcom/chery/media/view/dialog/Dialog_UsbConnect$3;
.super Ljava/lang/Object;
.source "Dialog_UsbConnect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/dialog/Dialog_UsbConnect;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/dialog/Dialog_UsbConnect;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/chery/media/view/dialog/Dialog_UsbConnect;Landroid/content/Context;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect$3;->this$0:Lcom/chery/media/view/dialog/Dialog_UsbConnect;

    iput-object p2, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 101
    iget-object p1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect$3;->this$0:Lcom/chery/media/view/dialog/Dialog_UsbConnect;

    invoke-virtual {p1}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->dismiss()V

    .line 103
    new-instance v0, Lcom/chery/common/PageManager;

    iget-object p1, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect$3;->val$context:Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string p1, "MediaPageId"

    const-string v1, "UsbType"

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 p1, 0x2

    new-array v5, p1, [Ljava/lang/String;

    const-string p1, "PAGE_USB_MUSIC_LIST"

    const/4 v6, 0x0

    aput-object p1, v5, v6

    iget-object p0, p0, Lcom/chery/media/view/dialog/Dialog_UsbConnect$3;->this$0:Lcom/chery/media/view/dialog/Dialog_UsbConnect;

    .line 107
    invoke-static {p0}, Lcom/chery/media/view/dialog/Dialog_UsbConnect;->access$000(Lcom/chery/media/view/dialog/Dialog_UsbConnect;)I

    move-result p0

    invoke-static {p0}, Lcom/chery/media/model/business/MediaDef;->getUsbTypePage(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v5, p1

    const-string v1, "com.chery.media"

    const-string v2, "com.chery.media.view.activity.MediaActivity"

    const-string v3, "com.chery.media.ACTION_OPEN"

    .line 103
    invoke-virtual/range {v0 .. v5}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/MediaBusiness;->getCarplayModel()Lcom/chery/carplay/CarplayModel;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/chery/carplay/CarplayModel;->requestVideoResource(Z)V

    return-void
.end method
