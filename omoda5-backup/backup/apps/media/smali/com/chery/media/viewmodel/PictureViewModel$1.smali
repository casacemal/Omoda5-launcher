.class Lcom/chery/media/viewmodel/PictureViewModel$1;
.super Ljava/lang/Object;
.source "PictureViewModel.java"

# interfaces
.implements Lcom/chery/media/model/business/PictureBusiness$OnCurrentUsbListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/viewmodel/PictureViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/viewmodel/PictureViewModel;


# direct methods
.method constructor <init>(Lcom/chery/media/viewmodel/PictureViewModel;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/chery/media/viewmodel/PictureViewModel$1;->this$0:Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentUsbChanged(I)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/chery/media/viewmodel/PictureViewModel$1;->this$0:Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/PictureViewModel;->access$000(Lcom/chery/media/viewmodel/PictureViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
