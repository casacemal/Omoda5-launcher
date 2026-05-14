.class public final Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;
.super Ljava/lang/Object;
.source "FragmentPictureViewerRightBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final clControl:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final clSubControl:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final inPictureCover:Lcom/chery/media/databinding/PicturePlayerCoverLayoutBinding;

.field public final ivAutoChangePaused:Landroid/widget/ImageView;

.field public final ivAutoPlay:Landroid/widget/ImageView;

.field public final ivBack:Landroid/widget/ImageView;

.field public final ivPlayNext:Landroid/widget/ImageView;

.field public final ivPlayPrior:Landroid/widget/ImageView;

.field public final ivRotate:Landroid/widget/ImageView;

.field public final ivZoomIn:Landroid/widget/ImageView;

.field public final ivZoomOut:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvLeftDuration:Landroid/widget/TextView;

.field public final viewPager:Lcom/chery/media/view/component/HackyViewPager;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/chery/media/databinding/PicturePlayerCoverLayoutBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/chery/media/view/component/HackyViewPager;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 70
    iput-object p2, p0, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->clControl:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 71
    iput-object p3, p0, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->clSubControl:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    iput-object p4, p0, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->inPictureCover:Lcom/chery/media/databinding/PicturePlayerCoverLayoutBinding;

    .line 73
    iput-object p5, p0, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->ivAutoChangePaused:Landroid/widget/ImageView;

    .line 74
    iput-object p6, p0, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->ivAutoPlay:Landroid/widget/ImageView;

    .line 75
    iput-object p7, p0, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->ivBack:Landroid/widget/ImageView;

    .line 76
    iput-object p8, p0, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->ivPlayNext:Landroid/widget/ImageView;

    .line 77
    iput-object p9, p0, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->ivPlayPrior:Landroid/widget/ImageView;

    .line 78
    iput-object p10, p0, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->ivRotate:Landroid/widget/ImageView;

    .line 79
    iput-object p11, p0, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->ivZoomIn:Landroid/widget/ImageView;

    .line 80
    iput-object p12, p0, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->ivZoomOut:Landroid/widget/ImageView;

    .line 81
    iput-object p13, p0, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->tvLeftDuration:Landroid/widget/TextView;

    .line 82
    iput-object p14, p0, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->viewPager:Lcom/chery/media/view/component/HackyViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x7f080061

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f080067

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0800ae

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    invoke-static {v2}, Lcom/chery/media/databinding/PicturePlayerCoverLayoutBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/PicturePlayerCoverLayoutBinding;

    move-result-object v7

    const v1, 0x7f0800b9

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0800ba

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f0800bb

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0800e0

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0800e2

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f0800eb

    .line 162
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    const v1, 0x7f0800f9

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    const v1, 0x7f0800fa

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    const v1, 0x7f0801c1

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0801f3

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/chery/media/view/component/HackyViewPager;

    if-eqz v17, :cond_0

    .line 191
    new-instance v1, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/chery/media/databinding/PicturePlayerCoverLayoutBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/chery/media/view/component/HackyViewPager;)V

    return-object v1

    .line 195
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-static {p0, v0, v1}, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;
    .locals 2

    const v0, 0x7f0b004f

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    :cond_0
    invoke-static {p0}, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureViewerRightBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
