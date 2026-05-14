.class Lcom/chery/media/view/fragment/PictureMainFragment$4;
.super Ljava/lang/Object;
.source "PictureMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/PictureMainFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/PictureMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$4;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment$4;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/PictureMainFragment;->setCurrentViewUsbType(I)V

    return-void
.end method
