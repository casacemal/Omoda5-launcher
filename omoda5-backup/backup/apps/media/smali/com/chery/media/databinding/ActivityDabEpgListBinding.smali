.class public final Lcom/chery/media/databinding/ActivityDabEpgListBinding;
.super Ljava/lang/Object;
.source "ActivityDabEpgListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dabListEpgRv:Lcom/chery/media/view/component/RecycleViewSb;

.field public final ivBack:Landroid/widget/ImageView;

.field public final ivListMask:Landroid/widget/ImageView;

.field public final ivNext:Landroid/widget/ImageView;

.field public final ivPrev:Landroid/widget/ImageView;

.field public final llListBar:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final sbListBar:Landroid/widget/SeekBar;

.field public final tvDate:Landroid/widget/TextView;

.field public final tvEmptyList:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/chery/media/view/component/RecycleViewSb;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 57
    iput-object p2, p0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->dabListEpgRv:Lcom/chery/media/view/component/RecycleViewSb;

    .line 58
    iput-object p3, p0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->ivBack:Landroid/widget/ImageView;

    .line 59
    iput-object p4, p0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->ivListMask:Landroid/widget/ImageView;

    .line 60
    iput-object p5, p0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->ivNext:Landroid/widget/ImageView;

    .line 61
    iput-object p6, p0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->ivPrev:Landroid/widget/ImageView;

    .line 62
    iput-object p7, p0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->llListBar:Landroid/widget/LinearLayout;

    .line 63
    iput-object p8, p0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->sbListBar:Landroid/widget/SeekBar;

    .line 64
    iput-object p9, p0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->tvDate:Landroid/widget/TextView;

    .line 65
    iput-object p10, p0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->tvEmptyList:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/chery/media/databinding/ActivityDabEpgListBinding;
    .locals 13

    const v0, 0x7f08007c

    .line 96
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/chery/media/view/component/RecycleViewSb;

    if-eqz v4, :cond_0

    const v0, 0x7f0800bb

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0800d7

    .line 108
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0800dd

    .line 114
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0800e5

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f080104

    .line 126
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f080150

    .line 132
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/SeekBar;

    if-eqz v10, :cond_0

    const v0, 0x7f0801b1

    .line 138
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0801b6

    .line 144
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 149
    new-instance v0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/chery/media/databinding/ActivityDabEpgListBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/chery/media/view/component/RecycleViewSb;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/ActivityDabEpgListBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-static {p0, v0, v1}, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/ActivityDabEpgListBinding;
    .locals 2

    const v0, 0x7f0b001d

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/ActivityDabEpgListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/chery/media/databinding/ActivityDabEpgListBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
