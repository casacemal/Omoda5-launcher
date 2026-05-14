.class Lcom/chery/media/model/business/UsbMusicBusiness$8$1;
.super Ljava/lang/Object;
.source "UsbMusicBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/UsbMusicBusiness$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/UsbMusicBusiness$8;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/UsbMusicBusiness$8;)V
    .locals 0

    .line 1176
    iput-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$8$1;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1179
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/chery/media/model/business/UsbMusicBusiness$8$1;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$8;

    iget-object v3, v3, Lcom/chery/media/model/business/UsbMusicBusiness$8;->val$playInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "do saveRestoreInfo %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chery/media/model/business/UsbMusicBusiness$8$1;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$8;

    iget-object v3, v3, Lcom/chery/media/model/business/UsbMusicBusiness$8;->val$infoString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$8$1;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$8;

    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$8;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$500(Lcom/chery/media/model/business/UsbMusicBusiness;)Landroid/content/Context;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$8$1;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$8;

    iget-object v2, v2, Lcom/chery/media/model/business/UsbMusicBusiness$8;->val$playInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "%s_music_restore_info.txt"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$8$1;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$8;

    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$8;->val$infoString:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, v1, p0, v4}, Lcom/chery/media/util/Utils;->writeToInternalFile(Landroid/content/Context;Ljava/lang/String;[BZ)Z

    return-void
.end method
