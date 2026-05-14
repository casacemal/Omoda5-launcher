.class public final Lcom/chery/media/databinding/FragmentUsbMusicListBinding;
.super Ljava/lang/Object;
.source "FragmentUsbMusicListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivBack:Landroid/widget/ImageView;

.field public final ivListMask:Landroid/widget/ImageView;

.field public final ivTabInterval:Landroid/widget/ImageView;

.field public final llMusicListBar:Landroid/widget/LinearLayout;

.field public final rlList:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

.field public final rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

.field public final sbMusicListBar:Landroid/widget/SeekBar;

.field public final tvBigIconTitle:Landroid/widget/TextView;

.field public final tvMusicCount:Landroid/widget/TextView;

.field public final tvTabFolders:Landroid/widget/TextView;

.field public final tvTabSongs:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lcom/chery/media/view/component/RecycleViewSb;Lcom/chery/media/view/component/RecycleViewSb;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 73
    iput-object p2, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->ivBack:Landroid/widget/ImageView;

    .line 74
    iput-object p3, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->ivListMask:Landroid/widget/ImageView;

    .line 75
    iput-object p4, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->ivTabInterval:Landroid/widget/ImageView;

    .line 76
    iput-object p5, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->llMusicListBar:Landroid/widget/LinearLayout;

    .line 77
    iput-object p6, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rlList:Landroid/widget/RelativeLayout;

    .line 78
    iput-object p7, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    .line 79
    iput-object p8, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    .line 80
    iput-object p9, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->sbMusicListBar:Landroid/widget/SeekBar;

    .line 81
    iput-object p10, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->tvBigIconTitle:Landroid/widget/TextView;

    .line 82
    iput-object p11, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->tvMusicCount:Landroid/widget/TextView;

    .line 83
    iput-object p12, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->tvTabFolders:Landroid/widget/TextView;

    .line 84
    iput-object p13, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->tvTabSongs:Landroid/widget/TextView;

    .line 85
    iput-object p14, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentUsbMusicListBinding;
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x7f0800bb

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v1, 0x7f0800d7

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0800f1

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f080105

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    const v1, 0x7f080144

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f080147

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/chery/media/view/component/RecycleViewSb;

    if-eqz v10, :cond_0

    const v1, 0x7f080148

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/chery/media/view/component/RecycleViewSb;

    if-eqz v11, :cond_0

    const v1, 0x7f080151

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/SeekBar;

    if-eqz v12, :cond_0

    const v1, 0x7f0801a5

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0801c7

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0801d3

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0801d4

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0801d8

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 193
    new-instance v1, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lcom/chery/media/view/component/RecycleViewSb;Lcom/chery/media/view/component/RecycleViewSb;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 197
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/FragmentUsbMusicListBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-static {p0, v0, v1}, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/FragmentUsbMusicListBinding;
    .locals 2

    const v0, 0x7f0b0052

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
