.class Lcom/chery/media/viewmodel/UsbMusicViewModel$4;
.super Ljava/lang/Object;
.source "UsbMusicViewModel.java"

# interfaces
.implements Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayModeListener;


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

    .line 180
    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$4;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayModeChanged(II)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$4;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {v0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->access$700(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayModeData;

    .line 184
    iput p2, v0, Lcom/chery/media/viewmodel/UsbMusicViewModel$PlayModeData;->playMode:I

    .line 185
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$4;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->access$700(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
