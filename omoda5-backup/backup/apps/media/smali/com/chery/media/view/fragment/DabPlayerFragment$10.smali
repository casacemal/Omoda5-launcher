.class Lcom/chery/media/view/fragment/DabPlayerFragment$10;
.super Ljava/lang/Object;
.source "DabPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/DabPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$10;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 231
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$10;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    new-instance v0, Lcom/chery/media/view/dialog/Dialog_DABOption;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$10;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-virtual {v1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/chery/media/view/dialog/Dialog_DABOption;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p1, Lcom/chery/media/view/fragment/DabPlayerFragment;->dialogDabOption:Lcom/chery/media/view/dialog/Dialog_DABOption;

    .line 232
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$10;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    iget-object p1, p1, Lcom/chery/media/view/fragment/DabPlayerFragment;->dialogDabOption:Lcom/chery/media/view/dialog/Dialog_DABOption;

    new-instance v0, Lcom/chery/media/view/fragment/DabPlayerFragment$10$1;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabPlayerFragment$10$1;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment$10;)V

    invoke-virtual {p1, v0}, Lcom/chery/media/view/dialog/Dialog_DABOption;->setConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$10;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/DabViewModel;->getDabOption()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$10;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    iget-object p1, p1, Lcom/chery/media/view/fragment/DabPlayerFragment;->dialogDabOption:Lcom/chery/media/view/dialog/Dialog_DABOption;

    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$10;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$100(Lcom/chery/media/view/fragment/DabPlayerFragment;)Lcom/chery/media/viewmodel/DabViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getDabOption()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/chery/media/view/dialog/Dialog_DABOption;->setSelect(Z)V

    .line 243
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$10;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dialogDabOption:Lcom/chery/media/view/dialog/Dialog_DABOption;

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DABOption;->show()V

    return-void
.end method
