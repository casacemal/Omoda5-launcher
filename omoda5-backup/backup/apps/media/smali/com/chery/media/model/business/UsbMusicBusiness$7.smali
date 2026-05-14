.class Lcom/chery/media/model/business/UsbMusicBusiness$7;
.super Ljava/lang/Object;
.source "UsbMusicBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/UsbMusicBusiness;->fastForward(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

.field final synthetic val$playInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

.field final synthetic val$usbType:I


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/UsbMusicBusiness;Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;I)V
    .locals 0

    .line 1038
    iput-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iput-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->val$playInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    iput p3, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->val$usbType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1041
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->val$playInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    iget-wide v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->position:J

    const-wide/16 v2, 0x1f40

    add-long/2addr v0, v2

    iget-object v4, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->val$playInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    iget-wide v4, v4, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->duration:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->val$usbType:I

    iget-object v4, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->val$playInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    iget-wide v4, v4, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->position:J

    add-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5}, Lcom/chery/media/model/business/UsbMusicBusiness;->seekTo(IJ)V

    .line 1043
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->val$usbType:I

    iget-object v4, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->val$playInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    iget-wide v4, v4, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->position:J

    add-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$800(Lcom/chery/media/model/business/UsbMusicBusiness;IJ)V

    .line 1044
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->val$usbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    .line 1045
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$600(Lcom/chery/media/model/business/UsbMusicBusiness;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->val$playInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    iget v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playMode:I

    if-nez v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->val$usbType:I

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/chery/media/model/business/UsbMusicBusiness;->seekTo(IJ)V

    .line 1050
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->val$usbType:I

    invoke-static {v0, v1, v2, v3}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$800(Lcom/chery/media/model/business/UsbMusicBusiness;IJ)V

    .line 1051
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->val$usbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    goto :goto_0

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->val$usbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->playNext(I)V

    .line 1056
    :goto_0
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->val$usbType:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$1800(Lcom/chery/media/model/business/UsbMusicBusiness;II)V

    .line 1057
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$600(Lcom/chery/media/model/business/UsbMusicBusiness;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1058
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$7;->val$playInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    :goto_1
    return-void
.end method
