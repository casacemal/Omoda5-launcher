.class Lcom/chery/media/viewmodel/VideoViewModel$3;
.super Ljava/lang/Object;
.source "VideoViewModel.java"

# interfaces
.implements Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;


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

    .line 155
    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel$3;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDurationChanged(IJ)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel$3;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/VideoViewModel;->access$400(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/VideoViewModel$PlayingDurationData;

    .line 166
    iput-wide p2, v0, Lcom/chery/media/viewmodel/VideoViewModel$PlayingDurationData;->duration:J

    .line 167
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel$3;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/VideoViewModel;->access$400(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlayingStateChanged(II)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel$3;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/VideoViewModel;->access$300(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;

    .line 159
    iput p2, v0, Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;->playingState:I

    .line 160
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel$3;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/VideoViewModel;->access$300(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;

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

    .line 172
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel$3;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/VideoViewModel;->access$500(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/VideoViewModel$PlayingPositionData;

    .line 173
    iput-wide p2, v0, Lcom/chery/media/viewmodel/VideoViewModel$PlayingPositionData;->position:J

    .line 174
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel$3;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/VideoViewModel;->access$500(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoSizeNotify(ILandroid/util/Size;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/chery/media/viewmodel/VideoViewModel$3;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/VideoViewModel;->access$600(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/VideoViewModel$VideoSizeData;

    .line 180
    iput-object p2, v0, Lcom/chery/media/viewmodel/VideoViewModel$VideoSizeData;->videoSize:Landroid/util/Size;

    .line 181
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel$3;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/VideoViewModel;->access$600(Lcom/chery/media/viewmodel/VideoViewModel;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
