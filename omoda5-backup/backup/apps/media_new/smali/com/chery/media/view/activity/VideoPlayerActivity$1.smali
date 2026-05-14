.class Lcom/chery/media/view/activity/VideoPlayerActivity$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/activity/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/chery/media/view/activity/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/VideoPlayerActivity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/chery/media/view/activity/VideoPlayerActivity$1;->this$0:Lcom/chery/media/view/activity/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 2

    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 40
    iget-object p1, p0, Lcom/chery/media/view/activity/VideoPlayerActivity$1;->this$0:Lcom/chery/media/view/activity/VideoPlayerActivity;

    invoke-static {p1}, Lcom/avn/tools/activity/ActivityUtils;->isOnTop(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/chery/media/view/activity/VideoPlayerActivity$1;->this$0:Lcom/chery/media/view/activity/VideoPlayerActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/chery/media/view/activity/VideoPlayerActivity$1;->this$0:Lcom/chery/media/view/activity/VideoPlayerActivity;

    const-class v1, Lcom/chery/media/view/activity/VideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/chery/media/view/activity/VideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/VideoPlayerActivity$1;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
