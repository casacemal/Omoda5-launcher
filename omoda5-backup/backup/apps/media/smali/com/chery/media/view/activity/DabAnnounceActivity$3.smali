.class Lcom/chery/media/view/activity/DabAnnounceActivity$3;
.super Ljava/lang/Object;
.source "DabAnnounceActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/activity/DabAnnounceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/chery/media/model/business/DabAnnounceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/activity/DabAnnounceActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/DabAnnounceActivity;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/chery/media/view/activity/DabAnnounceActivity$3;->this$0:Lcom/chery/media/view/activity/DabAnnounceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/DabAnnounceActivity$3;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabAnnounceInfo;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object p0, p0, Lcom/chery/media/view/activity/DabAnnounceActivity$3;->this$0:Lcom/chery/media/view/activity/DabAnnounceActivity;

    invoke-static {p0}, Lcom/chery/media/view/activity/DabAnnounceActivity;->access$100(Lcom/chery/media/view/activity/DabAnnounceActivity;)Lcom/chery/media/view/adapter/DABAnnounceListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->setData(Ljava/util/List;)V

    return-void
.end method
