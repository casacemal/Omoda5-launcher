.class public final Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;
.super Ljava/lang/Object;
.source "FragmentLocalMusicPlayerRightBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

.field public final inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

.field public final ivListMask:Landroid/widget/ImageView;

.field public final ivMusicMode:Landroid/widget/ImageView;

.field public final ivRetract:Landroid/widget/ImageView;

.field public final ivSoundEffects:Landroid/widget/ImageView;

.field public final llMusicListBar:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

.field public final sbMusicListBar:Landroid/widget/SeekBar;

.field public final tvMusicArtist:Landroid/widget/TextView;

.field public final tvMusicListTitle:Landroid/widget/TextView;

.field public final tvMusicTitle:Lcom/chery/media/view/component/MarqueeTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/chery/media/databinding/MediaPlayerLayoutBinding;Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/chery/media/view/component/RecycleViewSb;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/chery/media/view/component/MarqueeTextView;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 71
    iput-object p2, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    .line 72
    iput-object p3, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    .line 73
    iput-object p4, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->ivListMask:Landroid/widget/ImageView;

    .line 74
    iput-object p5, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->ivMusicMode:Landroid/widget/ImageView;

    .line 75
    iput-object p6, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->ivRetract:Landroid/widget/ImageView;

    .line 76
    iput-object p7, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->ivSoundEffects:Landroid/widget/ImageView;

    .line 77
    iput-object p8, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->llMusicListBar:Landroid/widget/LinearLayout;

    .line 78
    iput-object p9, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    .line 79
    iput-object p10, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->sbMusicListBar:Landroid/widget/SeekBar;

    .line 80
    iput-object p11, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->tvMusicArtist:Landroid/widget/TextView;

    .line 81
    iput-object p12, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->tvMusicListTitle:Landroid/widget/TextView;

    .line 82
    iput-object p13, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->tvMusicTitle:Lcom/chery/media/view/component/MarqueeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f0800af

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 117
    invoke-static {v2}, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    move-result-object v5

    const v1, 0x7f0800b0

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 124
    invoke-static {v2}, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    move-result-object v6

    const v1, 0x7f0800d7

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f0800dc

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0800ea

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f0800ef

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f080105

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f080148

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/chery/media/view/component/RecycleViewSb;

    if-eqz v12, :cond_0

    const v1, 0x7f080151

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/SeekBar;

    if-eqz v13, :cond_0

    const v1, 0x7f0801c6

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0801ca

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0801cc

    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/chery/media/view/component/MarqueeTextView;

    if-eqz v16, :cond_0

    .line 186
    new-instance v1, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/chery/media/databinding/MediaPlayerLayoutBinding;Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/chery/media/view/component/RecycleViewSb;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/chery/media/view/component/MarqueeTextView;)V

    return-object v1

    .line 191
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-static {p0, v0, v1}, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;
    .locals 2

    const v0, 0x7f0b0049

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    :cond_0
    invoke-static {p0}, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerRightBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
