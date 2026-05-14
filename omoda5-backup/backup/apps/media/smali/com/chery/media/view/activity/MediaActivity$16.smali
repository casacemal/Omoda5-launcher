.class Lcom/chery/media/view/activity/MediaActivity$16;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/activity/MediaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/activity/MediaActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/MediaActivity;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity$16;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 243
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity$16;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-static {p1}, Lcom/chery/media/view/activity/MediaActivity;->access$000(Lcom/chery/media/view/activity/MediaActivity;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity$16;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-static {v1, v1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity$16;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-static {v1, v1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 249
    :cond_2
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity$16;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-static {v1, v1}, Lcom/chery/media/view/fragment/BtMusicPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/BtMusicPlayerFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 258
    :cond_3
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity$16;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    new-instance p1, Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 246
    :cond_4
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity$16;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-static {v1, v1}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/RadioPlayerFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    :goto_0
    return-void
.end method
