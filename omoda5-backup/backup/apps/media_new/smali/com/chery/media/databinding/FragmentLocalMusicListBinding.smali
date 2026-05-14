.class public final Lcom/chery/media/databinding/FragmentLocalMusicListBinding;
.super Ljava/lang/Object;
.source "FragmentLocalMusicListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivBack:Landroid/widget/ImageView;

.field public final ivBigIcon:Landroid/widget/ImageView;

.field public final ivEdit:Landroid/widget/ImageView;

.field public final ivListMask:Landroid/widget/ImageView;

.field public final ivTabInterval:Landroid/widget/ImageView;

.field public final llMusicListBar:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

.field public final sbMusicListBar:Landroid/widget/SeekBar;

.field public final tvEditAll:Landroid/widget/TextView;

.field public final tvEditCancel:Landroid/widget/TextView;

.field public final tvEditDelete:Landroid/widget/TextView;

.field public final tvLocalMusicLabel:Landroid/widget/TextView;

.field public final tvMusicCount:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/chery/media/view/component/RecycleViewSb;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 75
    iput-object p2, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->ivBack:Landroid/widget/ImageView;

    .line 76
    iput-object p3, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->ivBigIcon:Landroid/widget/ImageView;

    .line 77
    iput-object p4, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->ivEdit:Landroid/widget/ImageView;

    .line 78
    iput-object p5, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->ivListMask:Landroid/widget/ImageView;

    .line 79
    iput-object p6, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->ivTabInterval:Landroid/widget/ImageView;

    .line 80
    iput-object p7, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->llMusicListBar:Landroid/widget/LinearLayout;

    .line 81
    iput-object p8, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    .line 82
    iput-object p9, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->sbMusicListBar:Landroid/widget/SeekBar;

    .line 83
    iput-object p10, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvEditAll:Landroid/widget/TextView;

    .line 84
    iput-object p11, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvEditCancel:Landroid/widget/TextView;

    .line 85
    iput-object p12, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvEditDelete:Landroid/widget/TextView;

    .line 86
    iput-object p13, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvLocalMusicLabel:Landroid/widget/TextView;

    .line 87
    iput-object p14, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvMusicCount:Landroid/widget/TextView;

    .line 88
    iput-object p15, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentLocalMusicListBinding;
    .locals 19

    move-object/from16 v0, p0

    const v1, 0x7f0800bb

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v1, 0x7f0800bd

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0800ca

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f0800d7

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0800f1

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f080105

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f080148

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/chery/media/view/component/RecycleViewSb;

    if-eqz v11, :cond_0

    const v1, 0x7f080151

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/SeekBar;

    if-eqz v12, :cond_0

    const v1, 0x7f0801b3

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0801b4

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0801b5

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0801c4

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0801c7

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0801d8

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 202
    new-instance v1, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/chery/media/view/component/RecycleViewSb;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 206
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/FragmentLocalMusicListBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-static {p0, v0, v1}, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/FragmentLocalMusicListBinding;
    .locals 2

    const v0, 0x7f0b0047

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    :cond_0
    invoke-static {p0}, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
