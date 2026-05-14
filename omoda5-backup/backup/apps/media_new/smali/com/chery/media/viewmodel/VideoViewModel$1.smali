.class Lcom/chery/media/viewmodel/VideoViewModel$1;
.super Ljava/lang/Object;
.source "VideoViewModel.java"

# interfaces
.implements Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;


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

    .line 129
    iput-object p1, p0, Lcom/chery/media/viewmodel/VideoViewModel$1;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentUsbChanged(I)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/chery/media/viewmodel/VideoViewModel$1;->this$0:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/VideoViewModel;->access$000(Lcom/chery/media/viewmodel/VideoViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
