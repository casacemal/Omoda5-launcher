.class Lcom/chery/media/view/activity/MediaActivity$3;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/activity/MediaActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/chery/media/view/activity/MediaActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/MediaActivity;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity$3;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 119
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity$3;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-virtual {p1}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 120
    instance-of p1, p1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    if-eqz p1, :cond_0

    .line 121
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity$3;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/MediaMainFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 115
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity$3;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
