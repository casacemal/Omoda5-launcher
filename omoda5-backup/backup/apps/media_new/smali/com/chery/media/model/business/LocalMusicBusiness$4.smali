.class Lcom/chery/media/model/business/LocalMusicBusiness$4;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/LocalMusicBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/LocalMusicBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$4;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5

    .line 369
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "onAudioFocusChange %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$4;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1400(Lcom/chery/media/model/business/LocalMusicBusiness;I)V

    const/4 p0, -0x2

    return-void
.end method
