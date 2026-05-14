.class Lcom/chery/media/view/activity/DabEpgActivity$7;
.super Ljava/lang/Object;
.source "DabEpgActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/activity/DabEpgActivity;
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
.field final synthetic this$0:Lcom/chery/media/view/activity/DabEpgActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/DabEpgActivity;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/chery/media/view/activity/DabEpgActivity$7;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/model/business/DabInfo;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/chery/media/view/activity/DabEpgActivity$7;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-static {v0, p1}, Lcom/chery/media/view/activity/DabEpgActivity;->access$602(Lcom/chery/media/view/activity/DabEpgActivity;Lcom/chery/media/model/business/DabInfo;)Lcom/chery/media/model/business/DabInfo;

    .line 161
    iget-object p0, p0, Lcom/chery/media/view/activity/DabEpgActivity$7;->this$0:Lcom/chery/media/view/activity/DabEpgActivity;

    invoke-static {p0}, Lcom/chery/media/view/activity/DabEpgActivity;->access$400(Lcom/chery/media/view/activity/DabEpgActivity;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 157
    check-cast p1, Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/DabEpgActivity$7;->onChanged(Lcom/chery/media/model/business/DabInfo;)V

    return-void
.end method
