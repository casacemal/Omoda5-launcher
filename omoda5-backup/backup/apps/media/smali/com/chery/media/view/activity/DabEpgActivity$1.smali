.class Lcom/chery/media/view/activity/DabEpgActivity$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DabEpgActivity.java"


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

    .line 83
    iput-object p1, p0, Lcom/chery/media/view/activity/DabEpgActivity$1;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onScrolled$0$DabEpgActivity$1()V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity$1;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-static {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->access$100(Lcom/chery/media/view/activity/DabEpgActivity;)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-eqz p3, :cond_0

    .line 88
    iget-object p1, p0, Lcom/chery/media/view/activity/DabEpgActivity$1;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-static {p1}, Lcom/chery/media/view/activity/DabEpgActivity;->access$000(Lcom/chery/media/view/activity/DabEpgActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/chery/media/view/activity/-$$Lambda$DabEpgActivity$1$GbD3_4hPdy9s2tpWRe8WKhkKEkQ;

    invoke-direct {p2, p0}, Lcom/chery/media/view/activity/-$$Lambda$DabEpgActivity$1$GbD3_4hPdy9s2tpWRe8WKhkKEkQ;-><init>(Lcom/chery/media/view/activity/DabEpgActivity$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
