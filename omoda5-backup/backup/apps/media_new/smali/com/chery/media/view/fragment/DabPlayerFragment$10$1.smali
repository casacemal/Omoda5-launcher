.class Lcom/chery/media/view/fragment/DabPlayerFragment$10$1;
.super Ljava/lang/Object;
.source "DabPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/DabPlayerFragment$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/view/fragment/DabPlayerFragment$10;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPlayerFragment$10;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$10$1;->this$1:Lcom/chery/media/view/fragment/DabPlayerFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 235
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$10$1;->this$1:Lcom/chery/media/view/fragment/DabPlayerFragment$10;

    iget-object p1, p1, Lcom/chery/media/view/fragment/DabPlayerFragment$10;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/DabViewModel;->getDabOption()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 236
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$10$1;->this$1:Lcom/chery/media/view/fragment/DabPlayerFragment$10;

    iget-object p1, p1, Lcom/chery/media/view/fragment/DabPlayerFragment$10;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$10$1;->this$1:Lcom/chery/media/view/fragment/DabPlayerFragment$10;

    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$10;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/DabViewModel;->getDabOption()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/chery/media/viewmodel/DabViewModel;->setDabOption(Z)V

    :cond_0
    return-void
.end method
