.class Lcom/chery/media/model/business/UsbMusicBusiness$2;
.super Ljava/lang/Object;
.source "UsbMusicBusiness.java"

# interfaces
.implements Lcom/chery/media/model/business/StableMediaPlayer$OnSeekCompleteListener;


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


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/UsbMusicBusiness;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$2;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(IJ)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$2;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v0, p1, p2, p3}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$800(Lcom/chery/media/model/business/UsbMusicBusiness;IJ)V

    .line 304
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$2;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p2, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$000(Lcom/chery/media/model/business/UsbMusicBusiness;I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p2

    iget p2, p2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayStatus:I

    if-nez p2, :cond_0

    .line 306
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$2;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$900(Lcom/chery/media/model/business/UsbMusicBusiness;IZ)V

    :cond_0
    return-void
.end method
