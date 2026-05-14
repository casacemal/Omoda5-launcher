.class Lcom/chery/media/viewmodel/UsbMusicViewModel$1;
.super Ljava/lang/Object;
.source "UsbMusicViewModel.java"

# interfaces
.implements Lcom/chery/media/model/business/UsbMusicBusiness$OnCurrentUsbListener;


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

    .line 123
    iput-object p1, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$1;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentUsbChanged(I)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/chery/media/viewmodel/UsbMusicViewModel$1;->this$0:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->access$000(Lcom/chery/media/viewmodel/UsbMusicViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
