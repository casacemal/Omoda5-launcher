.class Lcom/chery/media/view/fragment/RadioPlayerFragment$17;
.super Ljava/lang/Object;
.source "RadioPlayerFragment.java"

# interfaces
.implements Lcom/chery/media/view/adapter/RadioListAdapter$onItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/RadioPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollectionClicked(IZ)V
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$100(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/viewmodel/RadioViewModel;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/viewmodel/RadioViewModel;->addCollection(IZ)V

    return-void
.end method

.method public onItemClicked(I)V
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$100(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/viewmodel/RadioViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/media/viewmodel/RadioViewModel;->tune(I)V

    return-void
.end method
