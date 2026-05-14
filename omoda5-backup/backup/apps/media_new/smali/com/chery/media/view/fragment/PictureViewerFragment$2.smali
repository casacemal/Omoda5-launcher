.class Lcom/chery/media/view/fragment/PictureViewerFragment$2;
.super Ljava/lang/Object;
.source "PictureViewerFragment.java"

# interfaces
.implements Lcom/chery/media/model/business/HardKeyBusiness$HardKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/PictureViewerFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$2;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHardKey(IZZ)V
    .locals 0

    const/16 p3, 0x121

    if-ne p1, p3, :cond_0

    if-nez p2, :cond_0

    .line 123
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$2;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$100(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    :cond_0
    return-void
.end method
