.class Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$14;
.super Ljava/lang/Object;
.source "UsbMusicPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$14;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 315
    invoke-static {}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ivNext onClick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$14;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1500(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Lcom/chery/media/viewmodel/UsbMusicViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$14;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->playNext(I)V

    return-void
.end method
