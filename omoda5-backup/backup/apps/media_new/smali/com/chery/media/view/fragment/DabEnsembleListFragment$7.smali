.class Lcom/chery/media/view/fragment/DabEnsembleListFragment$7;
.super Ljava/lang/Object;
.source "DabEnsembleListFragment.java"

# interfaces
.implements Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/fragment/DabEnsembleListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$7;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allListChanged()V
    .locals 1

    .line 207
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$7;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabEnsembleListFragment;->access$400(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public favorInfoChanged()V
    .locals 0

    return-void
.end method
