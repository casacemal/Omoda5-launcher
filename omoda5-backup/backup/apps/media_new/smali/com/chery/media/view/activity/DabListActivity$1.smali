.class Lcom/chery/media/view/activity/DabListActivity$1;
.super Ljava/lang/Object;
.source "DabListActivity.java"

# interfaces
.implements Lcom/chery/media/view/adapter/DABMenuAdapter$onItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/activity/DabListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/activity/DabListActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/DabListActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/chery/media/view/activity/DabListActivity$1;->this$0:Lcom/chery/media/view/activity/DabListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/chery/media/view/activity/DabListActivity$1;->this$0:Lcom/chery/media/view/activity/DabListActivity;

    invoke-static {v0}, Lcom/chery/media/view/activity/DabListActivity;->access$000(Lcom/chery/media/view/activity/DabListActivity;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chery/media/viewmodel/DabViewModel;->setLastListPage(I)V

    .line 72
    iget-object p0, p0, Lcom/chery/media/view/activity/DabListActivity$1;->this$0:Lcom/chery/media/view/activity/DabListActivity;

    invoke-static {p0, p1}, Lcom/chery/media/view/activity/DabListActivity;->access$100(Lcom/chery/media/view/activity/DabListActivity;I)V

    return-void
.end method
