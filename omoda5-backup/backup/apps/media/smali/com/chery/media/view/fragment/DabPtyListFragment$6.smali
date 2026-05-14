.class Lcom/chery/media/view/fragment/DabPtyListFragment$6;
.super Ljava/lang/Object;
.source "DabPtyListFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/fragment/DabPtyListFragment;
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
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabPtyListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPtyListFragment;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment$6;->this$0:Lcom/chery/media/view/fragment/DabPtyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment$6;->this$0:Lcom/chery/media/view/fragment/DabPtyListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPtyListFragment;->access$300(Lcom/chery/media/view/fragment/DabPtyListFragment;)Lcom/chery/media/view/adapter/DABAllListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/DABAllListAdapter;->setPlayingState(Ljava/lang/Boolean;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 171
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/DabPtyListFragment$6;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
