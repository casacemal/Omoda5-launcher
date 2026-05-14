.class Lcom/chery/media/model/business/VrRadioBusiness$4;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/VrRadioBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VrRadioBusiness;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/chery/media/model/business/VrRadioBusiness$4;->this$0:Lcom/chery/media/model/business/VrRadioBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 3

    .line 118
    invoke-static {}, Lcom/chery/media/model/business/VrRadioBusiness;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDabPlaying onChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness$4;->this$0:Lcom/chery/media/model/business/VrRadioBusiness;

    iput-object p1, v0, Lcom/chery/media/model/business/VrRadioBusiness;->mDabPlaying:Ljava/lang/Boolean;

    .line 120
    iget-object p0, p0, Lcom/chery/media/model/business/VrRadioBusiness$4;->this$0:Lcom/chery/media/model/business/VrRadioBusiness;

    invoke-virtual {p0}, Lcom/chery/media/model/business/VrRadioBusiness;->uploadDabStatus()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 115
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VrRadioBusiness$4;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
