.class Lcom/chery/media/view/fragment/DabFavorListFragment$4;
.super Ljava/lang/Object;
.source "DabFavorListFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/fragment/DabFavorListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/chery/media/model/business/DabInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabFavorListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabFavorListFragment;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabFavorListFragment$4;->this$0:Lcom/chery/media/view/fragment/DabFavorListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/model/business/DabInfo;)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment$4;->this$0:Lcom/chery/media/view/fragment/DabFavorListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabFavorListFragment;->access$300(Lcom/chery/media/view/fragment/DabFavorListFragment;)Lcom/chery/media/view/adapter/DABAllListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/DABAllListAdapter;->setCurPlayInfo(Lcom/chery/media/model/business/DabInfo;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 143
    check-cast p1, Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/DabFavorListFragment$4;->onChanged(Lcom/chery/media/model/business/DabInfo;)V

    return-void
.end method
