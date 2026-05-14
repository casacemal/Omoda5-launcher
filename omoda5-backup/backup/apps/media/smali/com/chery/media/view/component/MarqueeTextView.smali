.class public Lcom/chery/media/view/component/MarqueeTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MarqueeTextView.java"


# instance fields
.field private mMarquee:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/chery/media/view/component/MarqueeTextView;->mMarquee:Z

    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/chery/media/view/component/MarqueeTextView;->mMarquee:Z

    return p0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 22
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 29
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setMarquee(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/chery/media/view/component/MarqueeTextView;->mMarquee:Z

    return-void
.end method
