.class Lcom/chery/media/view/fragment/DabAllListFragment$6;
.super Ljava/lang/Object;
.source "DabAllListFragment.java"

# interfaces
.implements Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/fragment/DabAllListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabAllListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabAllListFragment;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabAllListFragment$6;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allListChanged()V
    .locals 1

    .line 202
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabAllListFragment$6;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabAllListFragment;->access$400(Lcom/chery/media/view/fragment/DabAllListFragment;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public favorInfoChanged()V
    .locals 0

    return-void
.end method
