.class Lcom/chery/media/view/activity/DabEpgActivity$2;
.super Ljava/lang/Object;
.source "DabEpgActivity.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/activity/DabEpgActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/activity/DabEpgActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/DabEpgActivity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/chery/media/view/activity/DabEpgActivity$2;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChildViewAttachedToWindow$0$DabEpgActivity$2()V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity$2;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-static {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->access$100(Lcom/chery/media/view/activity/DabEpgActivity;)V

    return-void
.end method

.method public synthetic lambda$onChildViewDetachedFromWindow$1$DabEpgActivity$2()V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity$2;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-static {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->access$100(Lcom/chery/media/view/activity/DabEpgActivity;)V

    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/chery/media/view/activity/DabEpgActivity$2;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-static {p1}, Lcom/chery/media/view/activity/DabEpgActivity;->access$000(Lcom/chery/media/view/activity/DabEpgActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/activity/-$$Lambda$DabEpgActivity$2$mlm4XP26hk9YGqNIFTR-g6RtrRE;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/-$$Lambda$DabEpgActivity$2$mlm4XP26hk9YGqNIFTR-g6RtrRE;-><init>(Lcom/chery/media/view/activity/DabEpgActivity$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/chery/media/view/activity/DabEpgActivity$2;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-static {p1}, Lcom/chery/media/view/activity/DabEpgActivity;->access$000(Lcom/chery/media/view/activity/DabEpgActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/activity/-$$Lambda$DabEpgActivity$2$utU1c19tCe_iW81SWHqQghMfBWQ;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/-$$Lambda$DabEpgActivity$2$utU1c19tCe_iW81SWHqQghMfBWQ;-><init>(Lcom/chery/media/view/activity/DabEpgActivity$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
