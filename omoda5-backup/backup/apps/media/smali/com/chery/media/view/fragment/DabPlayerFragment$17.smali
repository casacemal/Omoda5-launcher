.class Lcom/chery/media/view/fragment/DabPlayerFragment$17;
.super Ljava/lang/Object;
.source "DabPlayerFragment.java"

# interfaces
.implements Lcom/chery/media/view/adapter/DABPlayListAdapter$onItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/DabPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollectionClicked(Lcom/chery/media/model/business/DabInfo;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 328
    iget-object p2, p1, Lcom/chery/media/model/business/DabInfo;->serviceName:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 329
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/viewmodel/DabViewModel;->addFavor(Lcom/chery/media/model/business/DabInfo;)V

    goto :goto_0

    .line 332
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/viewmodel/DabViewModel;->cancelFavor(Lcom/chery/media/model/business/DabInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemClicked(Lcom/chery/media/model/business/DabInfo;)V
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/viewmodel/DabViewModel;->playChannel(Lcom/chery/media/model/business/DabInfo;)V

    return-void
.end method
