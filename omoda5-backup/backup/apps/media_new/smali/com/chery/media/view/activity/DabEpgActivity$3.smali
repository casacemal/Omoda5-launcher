.class Lcom/chery/media/view/activity/DabEpgActivity$3;
.super Ljava/lang/Object;
.source "DabEpgActivity.java"

# interfaces
.implements Lcom/chery/media/view/adapter/DABEpgListAdapter$onItemClickListener;


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

    .line 105
    iput-object p1, p0, Lcom/chery/media/view/activity/DabEpgActivity$3;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/chery/media/model/business/DabProgramInfo;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 110
    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity$3;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-static {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->access$200(Lcom/chery/media/view/activity/DabEpgActivity;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/viewmodel/DabViewModel;->addReserve(Lcom/chery/media/model/business/DabProgramInfo;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity$3;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-static {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->access$200(Lcom/chery/media/view/activity/DabEpgActivity;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/viewmodel/DabViewModel;->removeReserve(Lcom/chery/media/model/business/DabProgramInfo;)V

    :goto_0
    return-void
.end method
