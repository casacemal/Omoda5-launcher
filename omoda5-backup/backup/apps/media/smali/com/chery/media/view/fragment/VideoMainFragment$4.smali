.class Lcom/chery/media/view/fragment/VideoMainFragment$4;
.super Ljava/lang/Object;
.source "VideoMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/VideoMainFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/VideoMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$4;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment$4;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->setCurrentViewUsbType(I)V

    return-void
.end method
