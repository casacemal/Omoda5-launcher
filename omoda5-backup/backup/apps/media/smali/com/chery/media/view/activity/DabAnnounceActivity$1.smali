.class Lcom/chery/media/view/activity/DabAnnounceActivity$1;
.super Ljava/lang/Object;
.source "DabAnnounceActivity.java"

# interfaces
.implements Lcom/chery/media/view/adapter/DABAnnounceListAdapter$onItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/activity/DabAnnounceActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/activity/DabAnnounceActivity;


# direct methods
.method constructor <init>(Lcom/chery/media/view/activity/DabAnnounceActivity;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/chery/media/view/activity/DabAnnounceActivity$1;->this$0:Lcom/chery/media/view/activity/DabAnnounceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(IZ)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/activity/DabAnnounceActivity$1;->this$0:Lcom/chery/media/view/activity/DabAnnounceActivity;

    invoke-static {p0}, Lcom/chery/media/view/activity/DabAnnounceActivity;->access$000(Lcom/chery/media/view/activity/DabAnnounceActivity;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/viewmodel/DabViewModel;->setAnnouncementTypeSwitch(IZ)V

    return-void
.end method
