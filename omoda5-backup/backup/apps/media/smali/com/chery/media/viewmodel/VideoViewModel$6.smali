.class Lcom/chery/media/viewmodel/VideoViewModel$6;
.super Ljava/lang/Object;
.source "VideoViewModel.java"

# interfaces
.implements Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/viewmodel/VideoViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/viewmodel/VideoViewModel;


# direct methods
.method constructor <init>(Lcom/chery/media/viewmodel/VideoViewModel;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel$6;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeedLimitPlayChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSpeedLimitSettingChanged(Z)V
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel$6;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/VideoViewModel;->access$900(Lcom/chery/media/viewmodel/VideoViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSpeedLimitViewChanged(Z)V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel$6;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/VideoViewModel;->access$1000(Lcom/chery/media/viewmodel/VideoViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
