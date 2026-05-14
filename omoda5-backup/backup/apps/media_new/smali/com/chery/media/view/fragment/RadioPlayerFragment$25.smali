.class Lcom/chery/media/view/fragment/RadioPlayerFragment$25;
.super Ljava/lang/Object;
.source "RadioPlayerFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/fragment/RadioPlayerFragment;
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
.field final synthetic this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$300(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/databinding/FragmentRadioPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentRadioPlayerBinding;->arcScaleview:Lcom/chery/media/view/component/ArcScaleView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/ArcScaleView;->setRadioRegion(I)V

    .line 547
    iget-object p0, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$25;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$900(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Lcom/chery/media/view/adapter/RadioListAdapter;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/adapter/RadioListAdapter;->setRegion(I)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 542
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/RadioPlayerFragment$25;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
