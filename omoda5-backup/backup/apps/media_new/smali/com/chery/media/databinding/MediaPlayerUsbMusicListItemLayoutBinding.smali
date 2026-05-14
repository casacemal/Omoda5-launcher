.class public final Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;
.super Ljava/lang/Object;
.source "MediaPlayerUsbMusicListItemLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

.field public final clItem:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvIndex:Landroid/widget/TextView;

.field public final tvMusicArtist:Landroid/widget/TextView;

.field public final tvMusicTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/chery/media/view/component/PlayIconAnim;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/chery/media/view/component/RotateAnimImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    iput-object p2, p0, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->anPlayIcon:Lcom/chery/media/view/component/PlayIconAnim;

    .line 47
    iput-object p3, p0, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->clItem:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    iput-object p4, p0, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->ivDownload:Lcom/chery/media/view/component/RotateAnimImageView;

    .line 49
    iput-object p5, p0, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->tvIndex:Landroid/widget/TextView;

    .line 50
    iput-object p6, p0, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->tvMusicArtist:Landroid/widget/TextView;

    .line 51
    iput-object p7, p0, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->tvMusicTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;
    .locals 10

    const v0, 0x7f080046

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/chery/media/view/component/PlayIconAnim;

    if-eqz v4, :cond_0

    const v0, 0x7f080063

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0800c9

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/chery/media/view/component/RotateAnimImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0801be

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0801c6

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0801cc

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 117
    new-instance v0, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/chery/media/view/component/PlayIconAnim;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/chery/media/view/component/RotateAnimImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, v0, v1}, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;
    .locals 2

    const v0, 0x7f0b005e

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerUsbMusicListItemLayoutBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
