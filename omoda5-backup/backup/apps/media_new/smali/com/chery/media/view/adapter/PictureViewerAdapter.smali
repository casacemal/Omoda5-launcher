.class public Lcom/chery/media/view/adapter/PictureViewerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "PictureViewerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/adapter/PictureViewerAdapter$OnPhotoViewScaleChangeListener;,
        Lcom/chery/media/view/adapter/PictureViewerAdapter$OnItemClickListener;,
        Lcom/chery/media/view/adapter/PictureViewerAdapter$OnCurrentItemListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cacheViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private clickListener:Lcom/chery/media/view/adapter/PictureViewerAdapter$OnItemClickListener;

.field private context:Landroid/content/Context;

.field private currentItemListener:Lcom/chery/media/view/adapter/PictureViewerAdapter$OnCurrentItemListener;

.field private currentItemView:Landroid/view/View;

.field private currentPosition:I

.field private pictureInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private scaleChangeListener:Lcom/chery/media/view/adapter/PictureViewerAdapter$OnPhotoViewScaleChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-class v0, Lcom/chery/media/view/adapter/PictureViewerAdapter;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->cacheViews:Ljava/util/List;

    .line 66
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/adapter/PictureViewerAdapter;)Lcom/chery/media/view/adapter/PictureViewerAdapter$OnItemClickListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->clickListener:Lcom/chery/media/view/adapter/PictureViewerAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/adapter/PictureViewerAdapter;)Lcom/chery/media/view/adapter/PictureViewerAdapter$OnPhotoViewScaleChangeListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->scaleChangeListener:Lcom/chery/media/view/adapter/PictureViewerAdapter$OnPhotoViewScaleChangeListener;

    return-object p0
.end method

.method private setScaleSensitivity(Lcom/github/chrisbanes/photoview/PhotoView;)V
    .locals 2

    .line 176
    :try_start_0
    const-class p0, Lcom/github/chrisbanes/photoview/PhotoView;

    const-string v0, "attacher"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 178
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 180
    const-class p1, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    const-string v1, "mScaleDragDetector"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 182
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "mDetector"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 186
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "mMinSpan"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 192
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 198
    check-cast p3, Landroid/view/View;

    .line 199
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 200
    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->cacheViews:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 0

    const p0, 0x7fffffff

    return p0
.end method

.method public getCurrentItemView()Landroid/view/View;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->currentItemView:Landroid/view/View;

    return-object p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .line 85
    iget-object v0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->cacheViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->cacheViews:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0b008c

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 90
    new-instance v3, Lcom/chery/media/view/adapter/PictureViewerAdapter$1;

    invoke-direct {v3, p0, p2}, Lcom/chery/media/view/adapter/PictureViewerAdapter$1;-><init>(Lcom/chery/media/view/adapter/PictureViewerAdapter;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 v3, -0x1

    .line 99
    invoke-virtual {p1, v0, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const p1, 0x7f0800de

    .line 101
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/chrisbanes/photoview/PhotoView;

    .line 102
    invoke-direct {p0, p1}, Lcom/chery/media/view/adapter/PictureViewerAdapter;->setScaleSensitivity(Lcom/github/chrisbanes/photoview/PhotoView;)V

    .line 103
    iget-object v3, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->pictureInfoList:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->pictureInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    rem-int v3, p2, v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    .line 109
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Lcom/github/chrisbanes/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v5, 0x40800000    # 4.0f

    .line 110
    invoke-virtual {p1, v3, v4, v5}, Lcom/github/chrisbanes/photoview/PhotoView;->setScaleLevels(FFF)V

    .line 111
    new-instance v3, Lcom/chery/media/view/adapter/PictureViewerAdapter$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/chery/media/view/adapter/PictureViewerAdapter$2;-><init>(Lcom/chery/media/view/adapter/PictureViewerAdapter;ILcom/github/chrisbanes/photoview/PhotoView;)V

    invoke-virtual {p1, v3}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnScaleChangeListener(Lcom/github/chrisbanes/photoview/OnScaleChangedListener;)V

    .line 119
    new-instance v3, Lcom/chery/media/view/adapter/PictureViewerAdapter$3;

    invoke-direct {v3, p0, p2, p1}, Lcom/chery/media/view/adapter/PictureViewerAdapter$3;-><init>(Lcom/chery/media/view/adapter/PictureViewerAdapter;ILcom/github/chrisbanes/photoview/PhotoView;)V

    invoke-virtual {p1, v3}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    const p2, 0x7f080064

    .line 147
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 148
    iget-wide v3, v1, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->size:J

    const-wide/32 v5, 0x1e00000

    cmp-long v3, v3, v5

    const/16 v4, 0x8

    if-gtz v3, :cond_2

    .line 149
    invoke-virtual {p1, v2}, Lcom/github/chrisbanes/photoview/PhotoView;->setVisibility(I)V

    .line 150
    invoke-virtual {p2, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 151
    iget-object v2, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->path:Ljava/lang/String;

    .line 152
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestBuilder;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    const v2, 0x7f070149

    .line 154
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    const/16 v2, 0xbb8

    .line 155
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v2, Lcom/chery/media/view/adapter/PictureViewerAdapter$4;

    invoke-direct {v2, p0, p1, p1, p2}, Lcom/chery/media/view/adapter/PictureViewerAdapter$4;-><init>(Lcom/chery/media/view/adapter/PictureViewerAdapter;Landroid/widget/ImageView;Lcom/github/chrisbanes/photoview/PhotoView;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 156
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 167
    :cond_2
    invoke-virtual {p1, v4}, Lcom/github/chrisbanes/photoview/PhotoView;->setVisibility(I)V

    .line 168
    invoke-virtual {p2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_1
    return-object v0

    .line 104
    :cond_3
    :goto_2
    invoke-virtual {p1, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setOnCurrentItemListener(Lcom/chery/media/view/adapter/PictureViewerAdapter$OnCurrentItemListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->currentItemListener:Lcom/chery/media/view/adapter/PictureViewerAdapter$OnCurrentItemListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/chery/media/view/adapter/PictureViewerAdapter$OnItemClickListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->clickListener:Lcom/chery/media/view/adapter/PictureViewerAdapter$OnItemClickListener;

    return-void
.end method

.method public setOnPhotoViewScaleListener(Lcom/chery/media/view/adapter/PictureViewerAdapter$OnPhotoViewScaleChangeListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->scaleChangeListener:Lcom/chery/media/view/adapter/PictureViewerAdapter$OnPhotoViewScaleChangeListener;

    return-void
.end method

.method public setPictureList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;)V"
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->pictureInfoList:Ljava/util/List;

    .line 242
    invoke-virtual {p0}, Lcom/chery/media/view/adapter/PictureViewerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 212
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 214
    check-cast p3, Landroid/view/View;

    .line 215
    iget-object p1, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->currentItemView:Landroid/view/View;

    if-eq p3, p1, :cond_3

    .line 217
    iput-object p3, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->currentItemView:Landroid/view/View;

    .line 218
    iget v0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->currentPosition:I

    if-ne p2, v0, :cond_0

    .line 219
    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->currentItemListener:Lcom/chery/media/view/adapter/PictureViewerAdapter$OnCurrentItemListener;

    if-eqz p0, :cond_3

    .line 221
    invoke-interface {p0, p3, p1}, Lcom/chery/media/view/adapter/PictureViewerAdapter$OnCurrentItemListener;->onCurrentItemChanged(Landroid/view/View;Landroid/view/View;)V

    goto :goto_2

    .line 225
    :cond_0
    iput p2, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->currentPosition:I

    .line 226
    iget-object p3, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->currentItemListener:Lcom/chery/media/view/adapter/PictureViewerAdapter$OnCurrentItemListener;

    if-eqz p3, :cond_3

    .line 227
    iget-object p3, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->pictureInfoList:Ljava/util/List;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->pictureInfoList:Ljava/util/List;

    .line 228
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, p2, v0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x0

    .line 230
    :goto_1
    iget-object v0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->currentItemListener:Lcom/chery/media/view/adapter/PictureViewerAdapter$OnCurrentItemListener;

    iget-object p0, p0, Lcom/chery/media/view/adapter/PictureViewerAdapter;->currentItemView:Landroid/view/View;

    invoke-interface {v0, p2, p3, p0, p1}, Lcom/chery/media/view/adapter/PictureViewerAdapter$OnCurrentItemListener;->onCurrentPositionChanged(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;Landroid/view/View;Landroid/view/View;)V

    :cond_3
    :goto_2
    return-void
.end method
