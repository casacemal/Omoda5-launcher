.class Lcom/chery/media/view/fragment/VideoMainFragment$9$1;
.super Ljava/lang/Object;
.source "VideoMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/VideoMainFragment$9;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/view/fragment/VideoMainFragment$9;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/VideoMainFragment$9;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$9$1;->this$1:Lcom/chery/media/view/fragment/VideoMainFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$9$1;->this$1:Lcom/chery/media/view/fragment/VideoMainFragment$9;

    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$9;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$1000(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    return-void
.end method
