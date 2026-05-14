.class Lcom/chery/media/view/fragment/RadioPlayerFragment$3;
.super Ljava/lang/Object;
.source "RadioPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/RadioPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$3;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 191
    invoke-static {}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Player Playpause onLongClick"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$3;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$100(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/viewmodel/RadioViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/RadioViewModel;->playPause()V

    const/4 p0, 0x1

    return p0
.end method
