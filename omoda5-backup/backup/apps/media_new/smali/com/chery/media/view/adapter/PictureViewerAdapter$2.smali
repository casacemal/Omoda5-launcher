.class Lcom/chery/media/view/adapter/PictureViewerAdapter$2;
.super Ljava/lang/Object;
.source "PictureViewerAdapter.java"

# interfaces
.implements Lcom/github/chrisbanes/photoview/OnScaleChangedListener;


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

.field final synthetic val$photoView:Lcom/github/chrisbanes/photoview/PhotoView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/chery/media/view/adapter/PictureViewerAdapter;ILcom/github/chrisbanes/photoview/PhotoView;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$2;->this$0:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    iput p2, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$2;->val$photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleChange(FFF)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$2;->this$0:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/PictureViewerAdapter;->access$100(Lcom/chery/media/view/adapter/PictureViewerAdapter;)Lcom/chery/media/view/adapter/PictureViewerAdapter$OnPhotoViewScaleChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$2;->this$0:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    invoke-static {p1}, Lcom/chery/media/view/adapter/PictureViewerAdapter;->access$100(Lcom/chery/media/view/adapter/PictureViewerAdapter;)Lcom/chery/media/view/adapter/PictureViewerAdapter$OnPhotoViewScaleChangeListener;

    move-result-object p1

    iget p2, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$2;->val$position:I

    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter$2;->val$photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result p3

    invoke-interface {p1, p2, p0, p3}, Lcom/chery/media/view/adapter/PictureViewerAdapter$OnPhotoViewScaleChangeListener;->onScaleChanged(ILcom/github/chrisbanes/photoview/PhotoView;F)V

    :cond_0
    return-void
.end method
