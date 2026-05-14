.class Lcom/chery/media/model/business/MediaBusiness$1$1;
.super Ljava/lang/Object;
.source "MediaBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/MediaBusiness$1;->onSourceChanged(Landroid/media/AudioAttributes;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/MediaBusiness$1;

.field final synthetic val$aa:Landroid/media/AudioAttributes;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/MediaBusiness$1;Ljava/lang/String;Landroid/media/AudioAttributes;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$1;

    iput-object p2, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->val$s:Ljava/lang/String;

    iput-object p3, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->val$aa:Landroid/media/AudioAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 101
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSourceChanged Package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->val$s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSourceChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->val$aa:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->val$aa:Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->val$aa:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_4

    const/16 v3, 0x10

    if-eq v2, v3, :cond_2

    const-string v3, "key_car_source_type"

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 147
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$1;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-static {p0, v1}, Lcom/chery/media/model/business/MediaBusiness;->access$100(Lcom/chery/media/model/business/MediaBusiness;I)V

    goto/16 :goto_0

    .line 144
    :pswitch_0
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$1;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-static {p0, v1}, Lcom/chery/media/model/business/MediaBusiness;->access$100(Lcom/chery/media/model/business/MediaBusiness;I)V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$1;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    const/16 v0, 0x2e

    invoke-static {p0, v0}, Lcom/chery/media/model/business/MediaBusiness;->access$100(Lcom/chery/media/model/business/MediaBusiness;I)V

    goto :goto_0

    :pswitch_2
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$1;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/chery/media/model/business/MediaBusiness;->access$100(Lcom/chery/media/model/business/MediaBusiness;I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$1;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/chery/media/model/business/MediaBusiness;->access$100(Lcom/chery/media/model/business/MediaBusiness;I)V

    goto :goto_0

    .line 141
    :pswitch_3
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$1;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    const/16 v0, 0x2a

    invoke-static {p0, v0}, Lcom/chery/media/model/business/MediaBusiness;->access$100(Lcom/chery/media/model/business/MediaBusiness;I)V

    goto :goto_0

    .line 138
    :pswitch_4
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$1;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    const/16 v0, 0x28

    invoke-static {p0, v0}, Lcom/chery/media/model/business/MediaBusiness;->access$100(Lcom/chery/media/model/business/MediaBusiness;I)V

    goto :goto_0

    :pswitch_5
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$1;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/chery/media/model/business/MediaBusiness;->access$100(Lcom/chery/media/model/business/MediaBusiness;I)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$1;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-static {p0, v1}, Lcom/chery/media/model/business/MediaBusiness;->access$100(Lcom/chery/media/model/business/MediaBusiness;I)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$1;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    const/16 v0, 0x1f

    invoke-static {p0, v0}, Lcom/chery/media/model/business/MediaBusiness;->access$100(Lcom/chery/media/model/business/MediaBusiness;I)V

    goto :goto_0

    .line 151
    :cond_3
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1$1;->this$1:Lcom/chery/media/model/business/MediaBusiness$1;

    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness$1;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-static {p0, v1}, Lcom/chery/media/model/business/MediaBusiness;->access$100(Lcom/chery/media/model/business/MediaBusiness;I)V

    :cond_4
    :goto_0
    :pswitch_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e5
        :pswitch_6
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method
