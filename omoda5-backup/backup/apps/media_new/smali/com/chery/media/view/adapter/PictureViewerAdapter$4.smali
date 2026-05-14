.class Lcom/chery/media/view/adapter/PictureViewerAdapter$4;
.super Lcom/bumptech/glide/request/target/DrawableImageViewTarget;
.source "PictureViewerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/adapter/PictureViewerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/adapter/PictureViewerAdapter;

.field final synthetic val$clFailed:Landroidx/constraintlayout/widget/ConstraintLayout;

.field final synthetic val$photoView:Lcom/github/chrisbanes/photoview/PhotoView;


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/PictureViewerAdapter;Landroid/widget/ImageView;Lcom/github/chrisbanes/photoview/PhotoView;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$4;->this$0:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    iput-object p3, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$4;->val$photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    iput-object p4, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$4;->val$clFailed:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/DrawableImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 159
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/DrawableImageViewTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$4;->val$photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setVisibility(I)V

    .line 161
    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$4;->val$clFailed:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method
