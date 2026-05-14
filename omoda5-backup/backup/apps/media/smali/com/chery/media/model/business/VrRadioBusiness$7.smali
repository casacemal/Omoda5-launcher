.class Lcom/chery/media/model/business/VrRadioBusiness$7;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/VrRadioBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VrRadioBusiness;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/chery/media/model/business/VrRadioBusiness$7;->this$0:Lcom/chery/media/model/business/VrRadioBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness$7;->this$0:Lcom/chery/media/model/business/VrRadioBusiness;

    iput-object p1, v0, Lcom/chery/media/model/business/VrRadioBusiness;->m_tunerState:Ljava/lang/Integer;

    .line 145
    iget-object p0, p0, Lcom/chery/media/model/business/VrRadioBusiness$7;->this$0:Lcom/chery/media/model/business/VrRadioBusiness;

    invoke-virtual {p0}, Lcom/chery/media/model/business/VrRadioBusiness;->uploadStatus()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 141
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VrRadioBusiness$7;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
