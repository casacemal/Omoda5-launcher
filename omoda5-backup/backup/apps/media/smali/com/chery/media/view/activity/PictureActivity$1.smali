.class Lcom/chery/media/view/activity/PictureActivity$1;
.super Ljava/lang/Object;
.source "PictureActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/activity/PictureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/activity/PictureActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/PictureActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/chery/media/view/activity/PictureActivity$1;->this$0:Lcom/chery/media/view/activity/PictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 48
    iget-object p1, p0, Lcom/chery/media/view/activity/PictureActivity$1;->this$0:Lcom/chery/media/view/activity/PictureActivity;

    invoke-virtual {p1}, Lcom/chery/media/view/activity/PictureActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/chery/media/view/fragment/PictureViewerFragment;

    if-eqz p1, :cond_0

    .line 49
    iget-object p0, p0, Lcom/chery/media/view/activity/PictureActivity$1;->this$0:Lcom/chery/media/view/activity/PictureActivity;

    invoke-virtual {p0}, Lcom/chery/media/view/activity/PictureActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/PictureActivity;->removeFragment(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/PictureActivity$1;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
