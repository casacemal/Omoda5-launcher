.class Lcom/chery/media/model/business/VrRadioBusiness$5;
.super Ljava/lang/Object;
.source "VrRadioBusiness.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/VrRadioBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/chery/media/model/business/RadioDef;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/VrRadioBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VrRadioBusiness;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/chery/media/model/business/VrRadioBusiness$5;->this$0:Lcom/chery/media/model/business/VrRadioBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/model/business/RadioDef;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness$5;->this$0:Lcom/chery/media/model/business/VrRadioBusiness;

    iput-object p1, v0, Lcom/chery/media/model/business/VrRadioBusiness;->m_radioInfo:Lcom/chery/media/model/business/RadioDef;

    .line 128
    iget-object p0, p0, Lcom/chery/media/model/business/VrRadioBusiness$5;->this$0:Lcom/chery/media/model/business/VrRadioBusiness;

    invoke-virtual {p0}, Lcom/chery/media/model/business/VrRadioBusiness;->uploadStatus()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 124
    check-cast p1, Lcom/chery/media/model/business/RadioDef;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VrRadioBusiness$5;->onChanged(Lcom/chery/media/model/business/RadioDef;)V

    return-void
.end method
