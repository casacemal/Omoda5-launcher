.class Lcom/chery/media/viewmodel/MediaViewModel$1;
.super Ljava/lang/Object;
.source "MediaViewModel.java"

# interfaces
.implements Lcom/chery/media/model/business/MediaBusiness$OnAudioSourceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/viewmodel/MediaViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/viewmodel/MediaViewModel;


# direct methods
.method constructor <init>(Lcom/chery/media/viewmodel/MediaViewModel;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/chery/media/viewmodel/MediaViewModel$1;->this$0:Lcom/chery/media/viewmodel/MediaViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioSourceChanged(II)V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/chery/media/viewmodel/MediaViewModel$1;->this$0:Lcom/chery/media/viewmodel/MediaViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/MediaViewModel;->access$000(Lcom/chery/media/viewmodel/MediaViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
