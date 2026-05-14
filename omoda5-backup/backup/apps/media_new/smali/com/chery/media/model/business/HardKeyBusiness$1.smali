.class Lcom/chery/media/model/business/HardKeyBusiness$1;
.super Landroid/content/BroadcastReceiver;
.source "HardKeyBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/HardKeyBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/HardKeyBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/HardKeyBusiness;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/chery/media/model/business/HardKeyBusiness$1;->this$0:Lcom/chery/media/model/business/HardKeyBusiness;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.saic.keyevent.hardkey.report"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p0, p0, Lcom/chery/media/model/business/HardKeyBusiness$1;->this$0:Lcom/chery/media/model/business/HardKeyBusiness;

    invoke-static {p0, p2}, Lcom/chery/media/model/business/HardKeyBusiness;->access$000(Lcom/chery/media/model/business/HardKeyBusiness;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
