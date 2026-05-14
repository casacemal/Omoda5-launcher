.class public final Lcom/chery/media/databinding/MediaPlayerLayoutBinding;
.super Ljava/lang/Object;
.source "MediaPlayerLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

.field public final ivLast:Landroid/widget/ImageView;

.field public final ivNext:Landroid/widget/ImageView;

.field public final ivPlaypause:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 38
    iput-object p2, p0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    .line 39
    iput-object p3, p0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivLast:Landroid/widget/ImageView;

    .line 40
    iput-object p4, p0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivNext:Landroid/widget/ImageView;

    .line 41
    iput-object p5, p0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivPlaypause:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/chery/media/databinding/MediaPlayerLayoutBinding;
    .locals 8

    const v0, 0x7f080043

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    if-eqz v4, :cond_0

    const v0, 0x7f0800d4

    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0800dd

    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0800e3

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 95
    new-instance v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/MediaPlayerLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-static {p0, v0, v1}, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/MediaPlayerLayoutBinding;
    .locals 2

    const v0, 0x7f0b005c

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
