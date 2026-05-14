.class public final Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;
.super Ljava/lang/Object;
.source "FragmentBtMusicPlayerRightBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

.field public final inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

.field public final ivDeviceNameBg:Landroid/widget/ImageButton;

.field public final ivMediaBigIconBtConnected:Landroid/widget/ImageView;

.field public final ivRetract:Landroid/widget/ImageView;

.field public final ivSoundEffects:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvDeviceName:Landroid/widget/TextView;

.field public final tvMusicArtist:Landroid/widget/TextView;

.field public final tvMusicTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/chery/media/databinding/MediaPlayerLayoutBinding;Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 57
    iput-object p2, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    .line 58
    iput-object p3, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    .line 59
    iput-object p4, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;->ivDeviceNameBg:Landroid/widget/ImageButton;

    .line 60
    iput-object p5, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;->ivMediaBigIconBtConnected:Landroid/widget/ImageView;

    .line 61
    iput-object p6, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;->ivRetract:Landroid/widget/ImageView;

    .line 62
    iput-object p7, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;->ivSoundEffects:Landroid/widget/ImageView;

    .line 63
    iput-object p8, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;->tvDeviceName:Landroid/widget/TextView;

    .line 64
    iput-object p9, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;->tvMusicArtist:Landroid/widget/TextView;

    .line 65
    iput-object p10, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;->tvMusicTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;
    .locals 13

    const v0, 0x7f0800af

    .line 96
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-static {v1}, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    move-result-object v4

    const v0, 0x7f0800b0

    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    invoke-static {v1}, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    move-result-object v5

    const v0, 0x7f0800c8

    .line 110
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageButton;

    if-eqz v6, :cond_0

    const v0, 0x7f0800da

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0800ea

    .line 122
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0800ef

    .line 128
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0801b2

    .line 134
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0801c6

    .line 140
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0801cc

    .line 146
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 151
    new-instance v0, Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/chery/media/databinding/MediaPlayerLayoutBinding;Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-static {p0, v0, v1}, Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;
    .locals 2

    const v0, 0x7f0b0042

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/chery/media/databinding/FragmentBtMusicPlayerRightBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
