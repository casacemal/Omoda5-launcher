.class Lcom/chery/media/model/business/UsbMusicBusiness$3;
.super Ljava/lang/Object;
.source "UsbMusicBusiness.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/UsbMusicBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

.field final synthetic val$finalPlayInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

.field final synthetic val$usbType:I


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/UsbMusicBusiness;Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;I)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$3;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iput-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$3;->val$finalPlayInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    iput p3, p0, Lcom/chery/media/model/business/UsbMusicBusiness$3;->val$usbType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4

    .line 331
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$3;->val$finalPlayInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s onAudioFocusChange %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$3;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$3;->val$usbType:I

    invoke-static {v0, p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$1000(Lcom/chery/media/model/business/UsbMusicBusiness;II)V

    const/4 p0, -0x2

    return-void
.end method
