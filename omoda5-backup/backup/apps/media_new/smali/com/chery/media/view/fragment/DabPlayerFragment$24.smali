.class Lcom/chery/media/view/fragment/DabPlayerFragment$24;
.super Ljava/lang/Object;
.source "DabPlayerFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/fragment/DabPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$24;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$24;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    iget-object v0, v0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dialogDabOption:Lcom/chery/media/view/dialog/Dialog_DABOption;

    if-eqz v0, :cond_0

    .line 469
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$24;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment;->dialogDabOption:Lcom/chery/media/view/dialog/Dialog_DABOption;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/chery/media/view/dialog/Dialog_DABOption;->setSelect(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 465
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/DabPlayerFragment$24;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
