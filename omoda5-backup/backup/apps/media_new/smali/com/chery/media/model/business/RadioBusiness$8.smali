.class Lcom/chery/media/model/business/RadioBusiness$8;
.super Ljava/lang/Object;
.source "RadioBusiness.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/RadioBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/RadioBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/RadioBusiness;)V
    .locals 0

    .line 958
    iput-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$8;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5

    .line 961
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->access$200()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "onFMAudioFocusChange %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 973
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness$8;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->setFmAudioFocus(I)V

    goto :goto_0

    .line 967
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness$8;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->setFmAudioFocus(I)V

    goto :goto_0

    .line 970
    :cond_1
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness$8;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/RadioBusiness;->setFmAudioFocus(I)V

    :goto_0
    return-void
.end method
