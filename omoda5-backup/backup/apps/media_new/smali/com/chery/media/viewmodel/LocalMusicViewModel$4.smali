.class Lcom/chery/media/viewmodel/LocalMusicViewModel$4;
.super Ljava/lang/Object;
.source "LocalMusicViewModel.java"

# interfaces
.implements Lcom/chery/media/model/business/LocalMusicBusiness$OnPlayModeListener;


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

    .line 87
    iput-object p1, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel$4;->this$0:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayModeChanged(I)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/chery/media/viewmodel/LocalMusicViewModel$4;->this$0:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-static {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->access$700(Lcom/chery/media/viewmodel/LocalMusicViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
