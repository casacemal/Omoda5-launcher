.class Lcom/chery/media/viewmodel/UsbMusicViewModel$3;
.super Ljava/lang/Object;
.source "UsbMusicViewModel.java"

# interfaces
.implements Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/viewmodel/UsbMusicViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;


# direct methods
.method constructor <init>(Lcom/chery/media/viewmodel/UsbMusicViewModel;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$3;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDurationChanged(IJ)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$3;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->access$400(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingDurationData;

    .line 160
    iput-wide p2, v0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingDurationData;->duration:J

    .line 161
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$3;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->access$400(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFastPlayStatusChanged(II)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$3;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->access$600(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/UsbMusicViewModel$FastPlayStatusData;

    .line 174
    iput p2, v0, Lcom/chery/media/viewmodel/UsbMusicViewModel$FastPlayStatusData;->fastPlayStatus:I

    .line 175
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$3;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->access$600(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlayingStateChanged(IZ)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$3;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->access$300(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;

    .line 153
    iput-boolean p2, v0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingStateData;->isPlaying:Z

    .line 154
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$3;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->access$300(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onPositionChanged(IJ)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$3;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->access$500(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;

    .line 167
    iput-wide p2, v0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayingPositionData;->position:J

    .line 168
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$3;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->access$500(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
