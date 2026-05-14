.class Landroidx/viewpager/widget/DumpViewPager$ViewPositionComparator;
.super Ljava/lang/Object;
.source "DumpViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/DumpViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 1

    .line 3172
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;

    .line 3173
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;

    .line 3174
    iget-boolean p2, p0, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->isDecor:Z

    iget-boolean v0, p1, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->isDecor:Z

    if-eq p2, v0, :cond_1

    .line 3175
    iget-boolean p0, p0, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->isDecor:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    .line 3177
    :cond_1
    iget p0, p0, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->position:I

    iget p1, p1, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->position:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3169
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/DumpViewPager$ViewPositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method
