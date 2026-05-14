.class Lcom/chery/media/view/component/SlideSwitch$1;
.super Ljava/lang/Object;
.source "SlideSwitch.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/component/SlideSwitch;->startAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/component/SlideSwitch;


# direct methods
.method constructor <init>(Lcom/chery/media/view/component/SlideSwitch;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/chery/media/view/component/SlideSwitch$1;->this$0:Lcom/chery/media/view/component/SlideSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 166
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/chery/media/view/component/SlideSwitch$1;->this$0:Lcom/chery/media/view/component/SlideSwitch;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/media/view/component/SlideSwitch;->access$002(Lcom/chery/media/view/component/SlideSwitch;F)F

    .line 169
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/component/SlideSwitch$1;->this$0:Lcom/chery/media/view/component/SlideSwitch;

    invoke-virtual {p0}, Lcom/chery/media/view/component/SlideSwitch;->postInvalidate()V

    return-void
.end method
