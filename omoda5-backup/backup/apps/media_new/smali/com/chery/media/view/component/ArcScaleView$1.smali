.class Lcom/chery/media/view/component/ArcScaleView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ArcScaleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/component/ArcScaleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/component/ArcScaleView;


# direct methods
.method constructor <init>(Lcom/chery/media/view/component/ArcScaleView;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/chery/media/view/component/ArcScaleView$1;->this$0:Lcom/chery/media/view/component/ArcScaleView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 371
    iget-object p1, p0, Lcom/chery/media/view/component/ArcScaleView$1;->this$0:Lcom/chery/media/view/component/ArcScaleView;

    invoke-static {p1}, Lcom/chery/media/view/component/ArcScaleView;->access$000(Lcom/chery/media/view/component/ArcScaleView;)F

    move-result p2

    add-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/chery/media/view/component/ArcScaleView;->access$002(Lcom/chery/media/view/component/ArcScaleView;F)F

    .line 372
    iget-object p0, p0, Lcom/chery/media/view/component/ArcScaleView$1;->this$0:Lcom/chery/media/view/component/ArcScaleView;

    invoke-static {p0}, Lcom/chery/media/view/component/ArcScaleView;->access$100(Lcom/chery/media/view/component/ArcScaleView;)V

    const/4 p0, 0x1

    return p0
.end method
