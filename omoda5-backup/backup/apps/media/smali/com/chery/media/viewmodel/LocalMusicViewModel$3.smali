.class Lcom/chery/media/viewmodel/LocalMusicViewModel$3;
.super Ljava/lang/Object;
.source "LocalMusicViewModel.java"

# interfaces
.implements Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayingInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/viewmodel/LocalMusicViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/viewmodel/LocalMusicViewModel;


# direct methods
.method constructor <init>(Lcom/chery/media/viewmodel/LocalMusicViewModel;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel$3;->this$0:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDurationChanged(J)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel$3;->this$0:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->access$400(Lcom/chery/media/viewmodel/LocalMusicViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFastPlayStatusChanged(I)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel$3;->this$0:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->access$600(Lcom/chery/media/viewmodel/LocalMusicViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlayingStateChanged(Z)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel$3;->this$0:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->access$300(Lcom/chery/media/viewmodel/LocalMusicViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onPositionChanged(J)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel$3;->this$0:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->access$500(Lcom/chery/media/viewmodel/LocalMusicViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
