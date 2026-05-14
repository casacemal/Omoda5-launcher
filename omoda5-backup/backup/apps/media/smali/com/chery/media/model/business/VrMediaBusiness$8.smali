.class Lcom/chery/media/model/business/VrMediaBusiness$8;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/VrMediaBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VrMediaBusiness;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness$8;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 1

    .line 211
    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness$8;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "BT"

    invoke-static {p0, v0, p1}, Lcom/chery/media/model/business/VrMediaBusiness;->access$200(Lcom/chery/media/model/business/VrMediaBusiness;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 208
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VrMediaBusiness$8;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
