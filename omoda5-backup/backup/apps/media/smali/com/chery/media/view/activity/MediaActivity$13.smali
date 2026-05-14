.class Lcom/chery/media/view/activity/MediaActivity$13;
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
        "Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/activity/MediaActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/MediaActivity;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/chery/media/view/activity/MediaActivity$13;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity$13;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-static {p1}, Lcom/chery/media/view/activity/MediaActivity;->access$000(Lcom/chery/media/view/activity/MediaActivity;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 217
    iget-object p1, p0, Lcom/chery/media/view/activity/MediaActivity$13;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-static {p1}, Lcom/chery/media/view/activity/MediaActivity;->access$100(Lcom/chery/media/view/activity/MediaActivity;)V

    .line 218
    iget-object p0, p0, Lcom/chery/media/view/activity/MediaActivity$13;->this$0:Lcom/chery/media/view/activity/MediaActivity;

    invoke-static {p0}, Lcom/chery/media/view/activity/MediaActivity;->access$200(Lcom/chery/media/view/activity/MediaActivity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 213
    check-cast p1, Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/MediaActivity$13;->onChanged(Lcom/chery/media/model/business/BtMusicBusiness$BtMusicInfo;)V

    return-void
.end method
