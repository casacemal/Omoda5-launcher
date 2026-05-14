.class Lcom/chery/media/model/business/VrMediaBusiness$9;
.super Ljava/lang/Object;
.source "VrMediaBusiness.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/VrMediaBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/VrMediaBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VrMediaBusiness;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness$9;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;)V
    .locals 1

    .line 217
    iget-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness$9;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/VrMediaBusiness;->access$400(Lcom/chery/media/model/business/VrMediaBusiness;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 218
    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness$9;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/VrMediaBusiness;->access$500(Lcom/chery/media/model/business/VrMediaBusiness;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 214
    check-cast p1, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VrMediaBusiness$9;->onChanged(Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;)V

    return-void
.end method
