.class Lcom/chery/media/view/fragment/DabAllListFragment$5;
.super Ljava/lang/Object;
.source "DabAllListFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/fragment/DabAllListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabAllListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabAllListFragment;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabAllListFragment$5;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabAllListFragment$5;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabAllListFragment;->access$300(Lcom/chery/media/view/fragment/DabAllListFragment;)Lcom/chery/media/view/adapter/DABAllListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/DABAllListAdapter;->setPlayingState(Ljava/lang/Boolean;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/DabAllListFragment$5;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
