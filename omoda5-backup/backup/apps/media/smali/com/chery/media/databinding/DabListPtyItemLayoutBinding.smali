.class public final Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;
.super Ljava/lang/Object;
.source "DabListPtyItemLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final highLight:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvTitle:Landroid/widget/TextView;

.field public final tvTitleMarquee:Lcom/chery/media/view/component/MarqueeTextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/chery/media/view/component/MarqueeTextView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 36
    iput-object p2, p0, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->highLight:Landroid/widget/ImageView;

    .line 37
    iput-object p3, p0, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->tvTitle:Landroid/widget/TextView;

    .line 38
    iput-object p4, p0, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->tvTitleMarquee:Lcom/chery/media/view/component/MarqueeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;
    .locals 4

    const v0, 0x7f0800a7

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const v0, 0x7f0801d8

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    const v0, 0x7f0801db

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/chery/media/view/component/MarqueeTextView;

    if-eqz v3, :cond_0

    .line 86
    new-instance v0, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/chery/media/view/component/MarqueeTextView;)V

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v0, v1}, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;
    .locals 2

    const v0, 0x7f0b002b

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/chery/media/databinding/DabListPtyItemLayoutBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
