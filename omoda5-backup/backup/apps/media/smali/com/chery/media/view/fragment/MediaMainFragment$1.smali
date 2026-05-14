.class Lcom/chery/media/view/fragment/MediaMainFragment$1;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/MediaMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/MediaMainFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$1;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/chery/media/view/fragment/MediaMainFragment$1;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/MediaMainFragment;->access$000(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    .line 139
    iget-object p0, p0, Lcom/chery/media/view/fragment/MediaMainFragment$1;->this$0:Lcom/chery/media/view/fragment/MediaMainFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/MediaMainFragment;->access$100(Lcom/chery/media/view/fragment/MediaMainFragment;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 135
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/MediaMainFragment$1;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
