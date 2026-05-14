.class Lcom/chery/media/view/fragment/PictureViewerFragment$3;
.super Ljava/lang/Object;
.source "PictureViewerFragment.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/IPowerListener;


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

    .line 129
    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$3;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 133
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$3;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$100(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    :cond_0
    return-void
.end method
