.class Lcom/chery/media/view/fragment/MediaMainFragment$6;
.super Ljava/lang/Object;
.source "MediaMainFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/MediaMainFragment;->initViewModel()V
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
        "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/MediaMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$6;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 177
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/MediaMainFragment$6;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 180
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$6;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->access$500(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    .line 181
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment$6;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->access$600(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    return-void
.end method
