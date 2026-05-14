.class Lcom/chery/media/model/business/UsbMusicBusiness$1$1;
.super Ljava/lang/Object;
.source "UsbMusicBusiness.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/UsbMusicBusiness$1;->onStateChanged(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/UsbMusicBusiness$1;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/UsbMusicBusiness$1;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1$1;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1$1;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$1;

    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$402(Lcom/chery/media/model/business/UsbMusicBusiness;Lcom/chery/media/view/dialog/Dialog_SingleText;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    return-void
.end method
