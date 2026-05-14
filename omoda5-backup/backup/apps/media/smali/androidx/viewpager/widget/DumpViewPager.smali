.class public Landroidx/viewpager/widget/DumpViewPager;
.super Landroid/view/ViewGroup;
.source "DumpViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/DumpViewPager$ViewPositionComparator;,
        Landroidx/viewpager/widget/DumpViewPager$LayoutParams;,
        Landroidx/viewpager/widget/DumpViewPager$PagerObserver;,
        Landroidx/viewpager/widget/DumpViewPager$MyAccessibilityDelegate;,
        Landroidx/viewpager/widget/DumpViewPager$SavedState;,
        Landroidx/viewpager/widget/DumpViewPager$DecorView;,
        Landroidx/viewpager/widget/DumpViewPager$OnAdapterChangeListener;,
        Landroidx/viewpager/widget/DumpViewPager$PageTransformer;,
        Landroidx/viewpager/widget/DumpViewPager$SimpleOnPageChangeListener;,
        Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;,
        Landroidx/viewpager/widget/DumpViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/viewpager/widget/DumpViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z = false

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroidx/viewpager/widget/DumpViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/DumpViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/viewpager/widget/DumpViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroidx/viewpager/widget/DumpViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Landroidx/viewpager/widget/DumpViewPager$PageTransformer;

.field private mPageTransformerLayerType:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    .line 122
    sput-object v0, Landroidx/viewpager/widget/DumpViewPager;->LAYOUT_ATTRS:[I

    .line 140
    new-instance v0, Landroidx/viewpager/widget/DumpViewPager$1;

    invoke-direct {v0}, Landroidx/viewpager/widget/DumpViewPager$1;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/DumpViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 147
    new-instance v0, Landroidx/viewpager/widget/DumpViewPager$2;

    invoke-direct {v0}, Landroidx/viewpager/widget/DumpViewPager$2;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/DumpViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 251
    new-instance v0, Landroidx/viewpager/widget/DumpViewPager$ViewPositionComparator;

    invoke-direct {v0}, Landroidx/viewpager/widget/DumpViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/DumpViewPager;->sPositionComparator:Landroidx/viewpager/widget/DumpViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 391
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    .line 156
    new-instance p1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    invoke-direct {p1}, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mTempItem:Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 158
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 162
    iput p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 164
    iput-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    .line 179
    iput v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 180
    iput v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastOffset:F

    const/4 v0, 0x1

    .line 189
    iput v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mOffscreenPageLimit:I

    .line 207
    iput p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mActivePointerId:I

    .line 234
    iput-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstLayout:Z

    const/4 p1, 0x0

    .line 235
    iput-boolean p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mNeedCalculatePageOffsets:Z

    .line 269
    new-instance v0, Landroidx/viewpager/widget/DumpViewPager$3;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/DumpViewPager$3;-><init>(Landroidx/viewpager/widget/DumpViewPager;)V

    iput-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 277
    iput p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mScrollState:I

    .line 392
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    .line 156
    new-instance p1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    invoke-direct {p1}, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mTempItem:Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 158
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 162
    iput p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mRestoredCurItem:I

    const/4 p2, 0x0

    .line 163
    iput-object p2, p0, Landroidx/viewpager/widget/DumpViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 164
    iput-object p2, p0, Landroidx/viewpager/widget/DumpViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const p2, -0x800001

    .line 179
    iput p2, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstOffset:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 180
    iput p2, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastOffset:F

    const/4 p2, 0x1

    .line 189
    iput p2, p0, Landroidx/viewpager/widget/DumpViewPager;->mOffscreenPageLimit:I

    .line 207
    iput p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mActivePointerId:I

    .line 234
    iput-boolean p2, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstLayout:Z

    const/4 p1, 0x0

    .line 235
    iput-boolean p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mNeedCalculatePageOffsets:Z

    .line 269
    new-instance p2, Landroidx/viewpager/widget/DumpViewPager$3;

    invoke-direct {p2, p0}, Landroidx/viewpager/widget/DumpViewPager$3;-><init>(Landroidx/viewpager/widget/DumpViewPager;)V

    iput-object p2, p0, Landroidx/viewpager/widget/DumpViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 277
    iput p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mScrollState:I

    .line 397
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->initViewPager()V

    return-void
.end method

.method private calculatePageOffsets(Landroidx/viewpager/widget/DumpViewPager$ItemInfo;ILandroidx/viewpager/widget/DumpViewPager$ItemInfo;)V
    .locals 10

    .line 1310
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1311
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 1312
    iget v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    .line 1315
    iget v3, p3, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    .line 1317
    iget v4, p1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_3

    .line 1320
    iget v4, p3, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    iget p3, p3, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    move p3, v1

    .line 1322
    :goto_1
    iget v5, p1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-gt v3, v5, :cond_6

    iget-object v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_6

    .line 1323
    iget-object v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 1324
    :goto_2
    iget v6, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_1

    iget-object v6, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_1

    add-int/lit8 p3, p3, 0x1

    .line 1326
    iget-object v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    goto :goto_2

    .line 1328
    :cond_1
    :goto_3
    iget v6, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_2

    .line 1331
    iget-object v6, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1334
    :cond_2
    iput v4, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    .line 1335
    iget v5, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1337
    :cond_3
    iget v4, p1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-le v3, v4, :cond_6

    .line 1338
    iget-object v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1340
    iget p3, p3, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    .line 1342
    :goto_4
    iget v5, p1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-lt v3, v5, :cond_6

    if-ltz v4, :cond_6

    .line 1343
    iget-object v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 1344
    :goto_5
    iget v6, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_4

    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 1346
    iget-object v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    goto :goto_5

    .line 1348
    :cond_4
    :goto_6
    iget v6, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_5

    .line 1351
    iget-object v6, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 1354
    :cond_5
    iget v6, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    .line 1355
    iput p3, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 1361
    :cond_6
    iget-object p3, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 1362
    iget v3, p1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    .line 1363
    iget v4, p1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, -0x1

    .line 1364
    iget v5, p1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-nez v5, :cond_7

    iget v5, p1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    goto :goto_7

    :cond_7
    const v5, -0x800001

    :goto_7
    iput v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstOffset:F

    .line 1365
    iget v5, p1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v5, v0, :cond_8

    iget v5, p1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    iget v7, p1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v6

    goto :goto_8

    :cond_8
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastOffset:F

    add-int/lit8 v5, p2, -0x1

    :goto_9
    if-ltz v5, :cond_b

    .line 1369
    iget-object v7, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 1370
    :goto_a
    iget v8, v7, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-le v4, v8, :cond_9

    .line 1371
    iget-object v8, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v4}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v3, v4

    move v4, v9

    goto :goto_a

    .line 1373
    :cond_9
    iget v8, v7, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v3, v8

    .line 1374
    iput v3, v7, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    .line 1375
    iget v7, v7, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-nez v7, :cond_a

    iput v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstOffset:F

    :cond_a
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 1377
    :cond_b
    iget v3, p1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    iget v4, p1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 1378
    iget p1, p1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    .line 1381
    iget-object v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 1382
    :goto_c
    iget v5, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-ge p1, v5, :cond_c

    .line 1383
    iget-object v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v5, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v3, p1

    move p1, v7

    goto :goto_c

    .line 1385
    :cond_c
    iget v5, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-ne v5, v0, :cond_d

    .line 1386
    iget v5, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastOffset:F

    .line 1388
    :cond_d
    iput v3, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    .line 1389
    iget v4, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 1392
    :cond_e
    iput-boolean v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mNeedCalculatePageOffsets:Z

    return-void
.end method

.method private completeScroll(Z)V
    .locals 7

    .line 1986
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 1989
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/DumpViewPager;->setScrollingCacheEnabled(Z)V

    .line 1990
    iget-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    .line 1992
    iget-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1993
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollX()I

    move-result v3

    .line 1994
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollY()I

    move-result v4

    .line 1995
    iget-object v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1996
    iget-object v6, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 1998
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroidx/viewpager/widget/DumpViewPager;->scrollTo(II)V

    if-eq v5, v3, :cond_2

    .line 2000
    invoke-direct {p0, v5}, Landroidx/viewpager/widget/DumpViewPager;->pageScrolled(I)Z

    .line 2005
    :cond_2
    iput-boolean v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mPopulatePending:Z

    move v3, v2

    .line 2006
    :goto_1
    iget-object v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 2007
    iget-object v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 2008
    iget-boolean v5, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_3

    .line 2010
    iput-boolean v2, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->scrolling:Z

    move v0, v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 2015
    iget-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2017
    :cond_5
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 1

    .line 2418
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mFlingDistance:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mMinimumVelocity:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2421
    :cond_1
    iget p3, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    if-lt p1, p3, :cond_2

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_2
    const p3, 0x3f19999a    # 0.6f

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    .line 2425
    :goto_1
    iget-object p2, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 2426
    iget-object p2, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 2427
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 2430
    iget p2, p2, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    iget p0, p0, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method private dispatchOnPageScrolled(IFI)V
    .locals 3

    .line 1935
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1936
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1938
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1939
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1940
    iget-object v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 1942
    invoke-interface {v2, p1, p2, p3}, Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1946
    :cond_2
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;

    if-eqz p0, :cond_3

    .line 1947
    invoke-interface {p0, p1, p2, p3}, Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_3
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .locals 3

    .line 1952
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1953
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1955
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1956
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1957
    iget-object v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 1959
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1963
    :cond_2
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;

    if-eqz p0, :cond_3

    .line 1964
    invoke-interface {p0, p1}, Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .locals 3

    .line 1969
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1970
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1972
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1973
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1974
    iget-object v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 1976
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1980
    :cond_2
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;

    if-eqz p0, :cond_3

    .line 1981
    invoke-interface {p0, p1}, Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_3
    return-void
.end method

.method private enableLayers(Z)V
    .locals 6

    .line 2027
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz p1, :cond_0

    .line 2029
    iget v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mPageTransformerLayerType:I

    goto :goto_1

    :cond_0
    move v3, v1

    .line 2031
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/DumpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    .line 2671
    iput-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mIsBeingDragged:Z

    .line 2672
    iput-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mIsUnableToDrag:Z

    .line 2674
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2675
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2676
    iput-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 2872
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x0

    .line 2875
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 2878
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2879
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2880
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2881
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2883
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 2884
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 2885
    check-cast p2, Landroid/view/ViewGroup;

    .line 2886
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2887
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2888
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2889
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2891
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private getClientWidth()I
    .locals 2

    .line 600
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private infoForCurrentScrollPosition()Landroidx/viewpager/widget/DumpViewPager$ItemInfo;
    .locals 12

    .line 2375
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2376
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    .line 2377
    iget v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v8, v4

    move v7, v5

    move v9, v6

    move v5, v1

    .line 2384
    :goto_2
    iget-object v10, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    .line 2385
    iget-object v10, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    if-nez v9, :cond_2

    .line 2387
    iget v11, v10, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_2

    .line 2389
    iget-object v10, p0, Landroidx/viewpager/widget/DumpViewPager;->mTempItem:Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    add-float/2addr v1, v5

    add-float/2addr v1, v3

    .line 2390
    iput v1, v10, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    .line 2391
    iput v7, v10, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    .line 2392
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v5, v10, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    invoke-virtual {v1, v5}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v10, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v8, v8, -0x1

    .line 2395
    :cond_2
    iget v1, v10, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    .line 2398
    iget v5, v10, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v1

    add-float/2addr v5, v3

    if-nez v9, :cond_4

    cmpl-float v7, v2, v1

    if-ltz v7, :cond_3

    goto :goto_3

    :cond_3
    return-object v0

    :cond_4
    :goto_3
    cmpg-float v0, v2, v5

    if-ltz v0, :cond_6

    .line 2400
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne v8, v0, :cond_5

    goto :goto_4

    .line 2407
    :cond_5
    iget v7, v10, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    .line 2409
    iget v5, v10, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v8, v8, 0x1

    move v9, v4

    move-object v0, v10

    goto :goto_2

    :cond_6
    :goto_4
    return-object v10

    :cond_7
    return-object v0
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .locals 1

    .line 1510
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 1511
    const-class v0, Landroidx/viewpager/widget/DumpViewPager$DecorView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGutterDrag(FF)Z
    .locals 2

    .line 2023
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getWidth()I

    move-result v0

    iget p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mGutterSize:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    cmpg-float p0, p2, v1

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2657
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2658
    iget v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2662
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    .line 2663
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mActivePointerId:I

    .line 2664
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    .line 2665
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private pageScrolled(I)Z
    .locals 7

    .line 1830
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1831
    iget-boolean p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstLayout:Z

    if-eqz p1, :cond_0

    return v2

    .line 1836
    :cond_0
    iput-boolean v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mCalledSuper:Z

    const/4 p1, 0x0

    .line 1837
    invoke-virtual {p0, v2, p1, v2}, Landroidx/viewpager/widget/DumpViewPager;->onPageScrolled(IFI)V

    .line 1838
    iget-boolean p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mCalledSuper:Z

    if-eqz p0, :cond_1

    return v2

    .line 1839
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1844
    :cond_2
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object v0

    .line 1845
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->getClientWidth()I

    move-result v3

    .line 1846
    iget v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mPageMargin:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 1848
    iget v6, v0, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 1849
    iget v3, v0, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    sub-float/2addr p1, v3

    iget v0, v0, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1853
    iput-boolean v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mCalledSuper:Z

    .line 1854
    invoke-virtual {p0, v6, p1, v0}, Landroidx/viewpager/widget/DumpViewPager;->onPageScrolled(IFI)V

    .line 1855
    iget-boolean p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mCalledSuper:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    .line 1856
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private performDrag(F)Z
    .locals 9

    .line 2324
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 2325
    iput p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    .line 2327
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 2329
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2331
    iget v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstOffset:F

    mul-float/2addr v1, v0

    .line 2332
    iget v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastOffset:F

    mul-float/2addr v2, v0

    .line 2336
    iget-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 2337
    iget-object v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 2338
    iget v6, v3, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-eqz v6, :cond_0

    .line 2340
    iget v1, v3, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    mul-float/2addr v1, v0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v7

    .line 2342
    :goto_0
    iget v6, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    iget-object v8, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v8}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    .line 2344
    iget v2, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    mul-float/2addr v2, v0

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    cmpg-float v6, p1, v1

    if-gez v6, :cond_3

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    .line 2350
    iget-object v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v4, v7

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v5, :cond_4

    sub-float/2addr p1, v2

    .line 2357
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v4, v7

    :cond_4
    move p1, v2

    .line 2363
    :cond_5
    :goto_2
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    .line 2364
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/viewpager/widget/DumpViewPager;->scrollTo(II)V

    .line 2365
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/DumpViewPager;->pageScrolled(I)Z

    return v4
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 1

    if-lez p2, :cond_1

    .line 1667
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1668
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1669
    iget-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->getClientWidth()I

    move-result p0

    mul-int/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_1

    .line 1671
    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    .line 1672
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    .line 1674
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    .line 1678
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/DumpViewPager;->scrollTo(II)V

    goto :goto_1

    .line 1681
    :cond_1
    iget p2, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/DumpViewPager;->infoForPosition(I)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1682
    iget p2, p2, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    iget p3, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastOffset:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 1684
    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 1685
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    .line 1686
    invoke-direct {p0, p2}, Landroidx/viewpager/widget/DumpViewPager;->completeScroll(Z)V

    .line 1687
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/DumpViewPager;->scrollTo(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method private removeNonDecorViews()V
    .locals 2

    const/4 v0, 0x0

    .line 555
    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 556
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/DumpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 557
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;

    .line 558
    iget-boolean v1, v1, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_0

    .line 559
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/DumpViewPager;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 2315
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2317
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private resetTouch()Z
    .locals 1

    const/4 v0, -0x1

    .line 2306
    iput v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mActivePointerId:I

    .line 2307
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->endDrag()V

    .line 2308
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2309
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2310
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private scrollToItem(IZIZ)V
    .locals 5

    .line 676
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->infoForPosition(I)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 679
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    .line 680
    iget v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstOffset:F

    iget v0, v0, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    iget v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastOffset:F

    .line 681
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 680
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 684
    invoke-virtual {p0, v0, v1, p3}, Landroidx/viewpager/widget/DumpViewPager;->smoothScrollTo(III)V

    if-eqz p4, :cond_3

    .line 686
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->dispatchOnPageSelected(I)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 690
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->dispatchOnPageSelected(I)V

    .line 692
    :cond_2
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/DumpViewPager;->completeScroll(Z)V

    .line 693
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/DumpViewPager;->scrollTo(II)V

    .line 694
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/DumpViewPager;->pageScrolled(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 2681
    iget-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2682
    iput-boolean p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 4

    .line 1294
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    .line 1295
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_0

    .line 1298
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1300
    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1302
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/DumpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1303
    iget-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1305
    :cond_1
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v0, Landroidx/viewpager/widget/DumpViewPager;->sPositionComparator:Landroidx/viewpager/widget/DumpViewPager$ViewPositionComparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2917
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2919
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 2922
    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2923
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/DumpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2924
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2925
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/DumpViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2926
    iget v4, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    iget v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 2927
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 2938
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 2941
    :cond_2
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 2945
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 2949
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method addNewItem(II)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;
    .locals 2

    .line 1008
    new-instance v0, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    invoke-direct {v0}, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;-><init>()V

    .line 1009
    iput p1, v0, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    .line 1010
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 1011
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result p1

    iput p1, v0, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    if-ltz p2, :cond_1

    .line 1012
    iget-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 1015
    :cond_0
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1013
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public addOnAdapterChangeListener(Landroidx/viewpager/widget/DumpViewPager$OnAdapterChangeListener;)V
    .locals 1

    .line 581
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 584
    :cond_0
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnPageChangeListener(Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;)V
    .locals 1

    .line 723
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 726
    :cond_0
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2962
    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2963
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/DumpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2964
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2965
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/DumpViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2966
    iget v2, v2, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    iget v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    .line 2967
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1484
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/DumpViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1485
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/DumpViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1487
    :cond_0
    move-object v0, p3

    check-cast v0, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;

    .line 1489
    iget-boolean v1, v0, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->isDecor:Z

    invoke-static {p1}, Landroidx/viewpager/widget/DumpViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->isDecor:Z

    .line 1490
    iget-boolean v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mInLayout:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 1491
    iget-boolean v1, v0, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 1492
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add pager decor view during layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 1494
    iput-boolean v1, v0, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->needsMeasure:Z

    .line 1495
    invoke-virtual {p0, p1, p2, p3}, Landroidx/viewpager/widget/DumpViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    .line 1497
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 6

    .line 2805
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    :goto_0
    move-object v0, v3

    goto :goto_4

    :cond_0
    if-eqz v0, :cond_4

    .line 2810
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_1
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    move v4, v1

    goto :goto_2

    .line 2811
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_2
    if-nez v4, :cond_4

    .line 2819
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2820
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2821
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_3
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    .line 2823
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2822
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_3

    .line 2825
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ViewPager"

    .line 2825
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2833
    :cond_4
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v3, :cond_8

    if-eq v3, v0, :cond_8

    if-ne p1, v5, :cond_6

    .line 2839
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Landroidx/viewpager/widget/DumpViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2840
    iget-object v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Landroidx/viewpager/widget/DumpViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-lt v1, v2, :cond_5

    .line 2842
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->pageLeft()Z

    move-result v0

    goto :goto_5

    .line 2844
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_5
    move v2, v0

    goto :goto_7

    :cond_6
    if-ne p1, v4, :cond_c

    .line 2849
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Landroidx/viewpager/widget/DumpViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2850
    iget-object v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Landroidx/viewpager/widget/DumpViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_7

    if-gt v1, v2, :cond_7

    .line 2852
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->pageRight()Z

    move-result v0

    goto :goto_5

    .line 2854
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_5

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v1, :cond_9

    goto :goto_6

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2862
    :cond_a
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->pageRight()Z

    move-result v2

    goto :goto_7

    .line 2859
    :cond_b
    :goto_6
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->pageLeft()Z

    move-result v2

    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    .line 2865
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->playSoundEffect(I)V

    :cond_d
    return v2
.end method

.method public beginFakeDrag()Z
    .locals 12

    .line 2540
    iget-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 2543
    iput-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mFakeDragging:Z

    .line 2544
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/DumpViewPager;->setScrollState(I)V

    const/4 v1, 0x0

    .line 2545
    iput v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    iput v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mInitialMotionX:F

    .line 2546
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 2547
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 2549
    :cond_1
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 2551
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    .line 2552
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2553
    iget-object v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2554
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2555
    iput-wide v10, p0, Landroidx/viewpager/widget/DumpViewPager;->mFakeDragBeginTime:J

    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 2731
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2732
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2733
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2734
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2735
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 2740
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 2741
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 2742
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 2743
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 2744
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 2743
    invoke-virtual/range {v6 .. v11}, Landroidx/viewpager/widget/DumpViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 2750
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 2704
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2708
    :cond_0
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->getClientWidth()I

    move-result v0

    .line 2709
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    .line 2711
    iget p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstOffset:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-le v2, p0, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    .line 2713
    iget p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastOffset:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-ge v2, p0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 3041
    instance-of v0, p1, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearOnPageChangeListeners()V
    .locals 0

    .line 745
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 746
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 4

    const/4 v0, 0x1

    .line 1805
    iput-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mIsScrollStarted:Z

    .line 1806
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1807
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollX()I

    move-result v0

    .line 1808
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollY()I

    move-result v1

    .line 1809
    iget-object v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1810
    iget-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1813
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroidx/viewpager/widget/DumpViewPager;->scrollTo(II)V

    .line 1814
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/DumpViewPager;->pageScrolled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1815
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 1816
    invoke-virtual {p0, v0, v3}, Landroidx/viewpager/widget/DumpViewPager;->scrollTo(II)V

    .line 1821
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    .line 1826
    :cond_2
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/DumpViewPager;->completeScroll(Z)V

    return-void
.end method

.method dataSetChanged()V
    .locals 10

    .line 1023
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1024
    iput v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mExpectedAdapterCount:I

    .line 1025
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    .line 1026
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 1027
    :goto_0
    iget v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    move v5, v4

    move v6, v5

    .line 1030
    :goto_1
    iget-object v7, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 1031
    iget-object v7, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 1032
    iget-object v8, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v9, v7, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    .line 1039
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    if-nez v6, :cond_2

    .line 1043
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v6, v3

    .line 1047
    :cond_2
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v8, v7, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    iget-object v9, v7, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v1, p0, v8, v9}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1050
    iget v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    iget v7, v7, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-ne v1, v7, :cond_3

    .line 1052
    iget v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    :cond_3
    :goto_2
    move v1, v3

    goto :goto_3

    .line 1058
    :cond_4
    iget v9, v7, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_6

    .line 1059
    iget v1, v7, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    iget v9, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    if-ne v1, v9, :cond_5

    move v2, v8

    .line 1064
    :cond_5
    iput v8, v7, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v5, v3

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    .line 1070
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1073
    :cond_8
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v5, Landroidx/viewpager/widget/DumpViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_b

    .line 1077
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_4
    if-ge v1, v0, :cond_a

    .line 1079
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/DumpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1080
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;

    .line 1081
    iget-boolean v6, v5, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_9

    const/4 v6, 0x0

    .line 1082
    iput v6, v5, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->widthFactor:F

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1086
    :cond_a
    invoke-virtual {p0, v2, v4, v3}, Landroidx/viewpager/widget/DumpViewPager;->setCurrentItemInternal(IZZ)V

    .line 1087
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->requestLayout()V

    :cond_b
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 2756
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 3009
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 3010
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    .line 3014
    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3016
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/DumpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3017
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3018
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/DumpViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3019
    iget v4, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    iget v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    .line 3020
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    const p0, 0x3ef1463b

    mul-float/2addr p1, p0

    float-to-double p0, p1

    .line 929
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 2438
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2441
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2442
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    .line 2444
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 2468
    :cond_0
    iget-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 2469
    iget-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    .line 2445
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2446
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2447
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2448
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    .line 2450
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    .line 2451
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstOffset:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2452
    iget-object v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2453
    iget-object v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2454
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2456
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2457
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2458
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getWidth()I

    move-result v2

    .line 2459
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    .line 2461
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2462
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2463
    iget-object v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2464
    iget-object v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2465
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 2474
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 915
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 916
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 917
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 6

    .line 2566
    iget-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_1

    .line 2570
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    .line 2571
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 2572
    iget v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2573
    iget v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    .line 2574
    iput-boolean v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mPopulatePending:Z

    .line 2575
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->getClientWidth()I

    move-result v2

    .line 2576
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollX()I

    move-result v3

    .line 2577
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object v4

    .line 2578
    iget v5, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 2579
    iget v2, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    sub-float/2addr v3, v2

    iget v2, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v3, v2

    .line 2580
    iget v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    iget v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mInitialMotionX:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 2581
    invoke-direct {p0, v5, v3, v0, v2}, Landroidx/viewpager/widget/DumpViewPager;->determineTargetPage(IFII)I

    move-result v2

    .line 2583
    invoke-virtual {p0, v2, v1, v1, v0}, Landroidx/viewpager/widget/DumpViewPager;->setCurrentItemInternal(IZZI)V

    .line 2585
    :cond_0
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->endDrag()V

    const/4 v0, 0x0

    .line 2587
    iput-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mFakeDragging:Z

    return-void

    .line 2567
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 2769
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 2770
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2786
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2787
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/DumpViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 2788
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2789
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/DumpViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_1

    .line 2779
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2780
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->pageRight()Z

    move-result p0

    goto :goto_1

    :cond_3
    const/16 p1, 0x42

    .line 2782
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_1

    .line 2772
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2773
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->pageLeft()Z

    move-result p0

    goto :goto_1

    :cond_5
    const/16 p1, 0x11

    .line 2775
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public fakeDragBy(F)V
    .locals 10

    .line 2598
    iget-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_5

    .line 2602
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2606
    :cond_0
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    .line 2608
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 2610
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->getClientWidth()I

    move-result p1

    int-to-float p1, p1

    .line 2612
    iget v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstOffset:F

    mul-float/2addr v1, p1

    .line 2613
    iget v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastOffset:F

    mul-float/2addr v2, p1

    .line 2615
    iget-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 2616
    iget-object v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 2617
    iget v5, v3, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-eqz v5, :cond_1

    .line 2618
    iget v1, v3, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    mul-float/2addr v1, p1

    .line 2620
    :cond_1
    iget v3, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    iget-object v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_2

    .line 2621
    iget v2, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    mul-float/2addr v2, p1

    :cond_2
    cmpg-float p1, v0, v1

    if-gez p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    cmpl-float p1, v0, v2

    if-lez p1, :cond_4

    move v0, v2

    .line 2630
    :cond_4
    :goto_0
    iget p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    .line 2631
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/viewpager/widget/DumpViewPager;->scrollTo(II)V

    .line 2632
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/DumpViewPager;->pageScrolled(I)Z

    .line 2635
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2636
    iget-wide v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    iget v7, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2638
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2639
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 2599
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3031
    new-instance p0, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;

    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;-><init>()V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3046
    new-instance v0, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;

    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3036
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 572
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    return-object p0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 802
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 803
    :cond_0
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 804
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;

    iget p0, p0, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->childIndex:I

    return p0
.end method

.method public getCurrentItem()I
    .locals 0

    .line 627
    iget p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    return p0
.end method

.method public getOffscreenPageLimit()I
    .locals 0

    .line 828
    iget p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mOffscreenPageLimit:I

    return p0
.end method

.method public getPageMargin()I
    .locals 0

    .line 884
    iget p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mPageMargin:I

    return p0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;
    .locals 1

    .line 1535
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    .line 1536
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    .line 1539
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0

    .line 1541
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    .line 1524
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1525
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 1526
    iget-object v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v3, v1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroidx/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method infoForPosition(I)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1545
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1546
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 1547
    iget v2, v1, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method initViewPager()V
    .locals 5

    const/4 v0, 0x0

    .line 401
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/DumpViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 402
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/DumpViewPager;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 403
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/DumpViewPager;->setFocusable(Z)V

    .line 404
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 405
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Landroidx/viewpager/widget/DumpViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    .line 406
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 407
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 409
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mTouchSlop:I

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 410
    iput v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mMinimumVelocity:I

    .line 411
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mMaximumVelocity:I

    .line 412
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 413
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 415
    iput v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mFlingDistance:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 416
    iput v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mCloseEnough:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v3, v1

    float-to-int v1, v3

    .line 417
    iput v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mDefaultGutterSize:I

    .line 419
    new-instance v1, Landroidx/viewpager/widget/DumpViewPager$MyAccessibilityDelegate;

    invoke-direct {v1, p0}, Landroidx/viewpager/widget/DumpViewPager$MyAccessibilityDelegate;-><init>(Landroidx/viewpager/widget/DumpViewPager;)V

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 421
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 423
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 427
    :cond_0
    new-instance v0, Landroidx/viewpager/widget/DumpViewPager$4;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/DumpViewPager$4;-><init>(Landroidx/viewpager/widget/DumpViewPager;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public isFakeDragging()Z
    .locals 0

    .line 2652
    iget-boolean p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mFakeDragging:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1556
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1557
    iput-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 479
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/DumpViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 481
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 484
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2480
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2483
    iget v1, v0, Landroidx/viewpager/widget/DumpViewPager;->mPageMargin:I

    if-lez v1, :cond_4

    iget-object v1, v0, Landroidx/viewpager/widget/DumpViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v1, :cond_4

    .line 2484
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollX()I

    move-result v1

    .line 2485
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getWidth()I

    move-result v2

    .line 2487
    iget v3, v0, Landroidx/viewpager/widget/DumpViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2489
    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 2490
    iget v7, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    .line 2491
    iget-object v8, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2492
    iget v9, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    .line 2493
    iget-object v10, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    iget v10, v10, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    :goto_0
    if-ge v9, v10, :cond_4

    .line 2495
    :goto_1
    iget v11, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    .line 2496
    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    goto :goto_1

    .line 2500
    :cond_0
    iget v11, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-ne v9, v11, :cond_1

    .line 2501
    iget v7, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    iget v11, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v11

    mul-float/2addr v7, v4

    .line 2502
    iget v11, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    iget v12, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v12

    add-float/2addr v11, v3

    goto :goto_2

    .line 2504
    :cond_1
    iget-object v11, v0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v11, v9}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    move v11, v7

    move v7, v12

    .line 2509
    :goto_2
    iget v12, v0, Landroidx/viewpager/widget/DumpViewPager;->mPageMargin:I

    int-to-float v12, v12

    add-float/2addr v12, v7

    int-to-float v13, v1

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 2510
    iget-object v12, v0, Landroidx/viewpager/widget/DumpViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Landroidx/viewpager/widget/DumpViewPager;->mTopPageBounds:I

    iget v15, v0, Landroidx/viewpager/widget/DumpViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v7

    .line 2511
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    iget v3, v0, Landroidx/viewpager/widget/DumpViewPager;->mBottomPageBounds:I

    .line 2510
    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2512
    iget-object v3, v0, Landroidx/viewpager/widget/DumpViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v12, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v7, v3

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move v7, v11

    move/from16 v3, v16

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    .line 2043
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v8, 0x0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_2

    .line 2056
    iget-boolean v1, v6, Landroidx/viewpager/widget/DumpViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    return v9

    .line 2060
    :cond_1
    iget-boolean v1, v6, Landroidx/viewpager/widget/DumpViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_2

    return v8

    :cond_2
    const/4 v1, 0x2

    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    .line 2160
    :cond_3
    invoke-direct/range {p0 .. p1}, Landroidx/viewpager/widget/DumpViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 2077
    :cond_4
    iget v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto/16 :goto_2

    .line 2083
    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2084
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 2085
    iget v1, v6, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    sub-float v1, v10, v1

    .line 2086
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 2087
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 2088
    iget v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_6

    .line 2091
    iget v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v1}, Landroidx/viewpager/widget/DumpViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    .line 2092
    invoke-virtual/range {v0 .. v5}, Landroidx/viewpager/widget/DumpViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2094
    iput v10, v6, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    .line 2095
    iput v12, v6, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionY:F

    .line 2096
    iput-boolean v9, v6, Landroidx/viewpager/widget/DumpViewPager;->mIsUnableToDrag:Z

    return v8

    .line 2099
    :cond_6
    iget v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_8

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v11, v0

    cmpl-float v0, v11, v13

    if-lez v0, :cond_8

    .line 2101
    iput-boolean v9, v6, Landroidx/viewpager/widget/DumpViewPager;->mIsBeingDragged:Z

    .line 2102
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/DumpViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2103
    invoke-virtual {p0, v9}, Landroidx/viewpager/widget/DumpViewPager;->setScrollState(I)V

    .line 2104
    iget v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mInitialMotionX:F

    iget v1, v6, Landroidx/viewpager/widget/DumpViewPager;->mTouchSlop:I

    int-to-float v1, v1

    if-lez v14, :cond_7

    add-float/2addr v0, v1

    goto :goto_0

    :cond_7
    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    .line 2106
    iput v12, v6, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionY:F

    .line 2107
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/DumpViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 2108
    :cond_8
    iget v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_9

    .line 2114
    iput-boolean v9, v6, Landroidx/viewpager/widget/DumpViewPager;->mIsUnableToDrag:Z

    .line 2116
    :cond_9
    :goto_1
    iget-boolean v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_c

    .line 2118
    invoke-direct {p0, v10}, Landroidx/viewpager/widget/DumpViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2119
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_2

    .line 2130
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mInitialMotionX:F

    iput v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    .line 2131
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mInitialMotionY:F

    iput v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionY:F

    .line 2132
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mActivePointerId:I

    .line 2133
    iput-boolean v8, v6, Landroidx/viewpager/widget/DumpViewPager;->mIsUnableToDrag:Z

    .line 2135
    iput-boolean v9, v6, Landroidx/viewpager/widget/DumpViewPager;->mIsScrollStarted:Z

    .line 2136
    iget-object v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2137
    iget v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mScrollState:I

    if-ne v0, v1, :cond_b

    iget-object v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    .line 2138
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Landroidx/viewpager/widget/DumpViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_b

    .line 2140
    iget-object v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2141
    iput-boolean v8, v6, Landroidx/viewpager/widget/DumpViewPager;->mPopulatePending:Z

    .line 2142
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->populate()V

    .line 2143
    iput-boolean v9, v6, Landroidx/viewpager/widget/DumpViewPager;->mIsBeingDragged:Z

    .line 2144
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/DumpViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2145
    invoke-virtual {p0, v9}, Landroidx/viewpager/widget/DumpViewPager;->setScrollState(I)V

    goto :goto_2

    .line 2147
    :cond_b
    invoke-direct {p0, v8}, Landroidx/viewpager/widget/DumpViewPager;->completeScroll(Z)V

    .line 2148
    iput-boolean v8, v6, Landroidx/viewpager/widget/DumpViewPager;->mIsBeingDragged:Z

    .line 2164
    :cond_c
    :goto_2
    iget-object v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_d

    .line 2165
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2167
    :cond_d
    iget-object v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2173
    iget-boolean v0, v6, Landroidx/viewpager/widget/DumpViewPager;->mIsBeingDragged:Z

    return v0

    .line 2049
    :cond_e
    :goto_3
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->resetTouch()Z

    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1694
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 1697
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingLeft()I

    move-result v4

    .line 1698
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingTop()I

    move-result v5

    .line 1699
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingRight()I

    move-result v6

    .line 1700
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingBottom()I

    move-result v7

    .line 1701
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollX()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v10, v1, :cond_7

    .line 1708
    invoke-virtual {v0, v10}, Landroidx/viewpager/widget/DumpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1709
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 1710
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;

    .line 1713
    iget-boolean v14, v12, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_6

    .line 1714
    iget v14, v12, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x7

    .line 1715
    iget v12, v12, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->gravity:I

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v4

    goto :goto_2

    :cond_0
    sub-int v14, v2, v6

    .line 1729
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1730
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    .line 1722
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_2

    .line 1725
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    :goto_2
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_4

    :cond_3
    sub-int v12, v3, v7

    .line 1746
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 1747
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_3

    .line 1739
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_4

    .line 1742
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_3
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    :goto_4
    add-int/2addr v4, v8

    .line 1752
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    .line 1753
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v5, v16

    .line 1751
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_a

    .line 1762
    invoke-virtual {v0, v6}, Landroidx/viewpager/widget/DumpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1763
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_9

    .line 1764
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;

    .line 1766
    iget-boolean v10, v9, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_9

    invoke-virtual {v0, v8}, Landroidx/viewpager/widget/DumpViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object v10

    if-eqz v10, :cond_9

    int-to-float v13, v2

    .line 1767
    iget v10, v10, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    mul-float/2addr v10, v13

    float-to-int v10, v10

    add-int/2addr v10, v4

    .line 1770
    iget-boolean v14, v9, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    .line 1773
    iput-boolean v14, v9, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->needsMeasure:Z

    .line 1774
    iget v9, v9, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v13, v9

    float-to-int v9, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v14, v3, v5

    sub-int/2addr v14, v7

    .line 1777
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1780
    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    .line 1788
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v10

    .line 1789
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    .line 1787
    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1793
    :cond_a
    iput v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mTopPageBounds:I

    sub-int/2addr v3, v7

    .line 1794
    iput v3, v0, Landroidx/viewpager/widget/DumpViewPager;->mBottomPageBounds:I

    .line 1795
    iput v11, v0, Landroidx/viewpager/widget/DumpViewPager;->mDecorChildCount:I

    .line 1797
    iget-boolean v1, v0, Landroidx/viewpager/widget/DumpViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_b

    .line 1798
    iget v1, v0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroidx/viewpager/widget/DumpViewPager;->scrollToItem(IZIZ)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    .line 1800
    :goto_6
    iput-boolean v2, v0, Landroidx/viewpager/widget/DumpViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    .line 1567
    invoke-static {v1, v2}, Landroidx/viewpager/widget/DumpViewPager;->getDefaultSize(II)I

    move-result v2

    move/from16 v3, p2

    .line 1568
    invoke-static {v1, v3}, Landroidx/viewpager/widget/DumpViewPager;->getDefaultSize(II)I

    move-result v3

    .line 1567
    invoke-virtual {v0, v2, v3}, Landroidx/viewpager/widget/DumpViewPager;->setMeasuredDimension(II)V

    .line 1570
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getMeasuredWidth()I

    move-result v2

    .line 1571
    div-int/lit8 v3, v2, 0xa

    .line 1572
    iget v4, v0, Landroidx/viewpager/widget/DumpViewPager;->mDefaultGutterSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroidx/viewpager/widget/DumpViewPager;->mGutterSize:I

    .line 1575
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1576
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1583
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_0
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ge v5, v4, :cond_c

    .line 1585
    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/DumpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1586
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v6, :cond_b

    .line 1587
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;

    if-eqz v6, :cond_b

    .line 1588
    iget-boolean v10, v6, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->isDecor:Z

    if-eqz v10, :cond_b

    .line 1589
    iget v10, v6, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->gravity:I

    and-int/lit8 v10, v10, 0x7

    .line 1590
    iget v11, v6, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->gravity:I

    and-int/lit8 v11, v11, 0x70

    const/16 v12, 0x30

    if-eq v11, v12, :cond_1

    const/16 v12, 0x50

    if-ne v11, v12, :cond_0

    goto :goto_1

    :cond_0
    move v11, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v11, v7

    :goto_2
    const/4 v12, 0x3

    if-eq v10, v12, :cond_3

    const/4 v12, 0x5

    if-ne v10, v12, :cond_2

    goto :goto_3

    :cond_2
    move v7, v1

    :cond_3
    :goto_3
    const/high16 v10, -0x80000000

    if-eqz v11, :cond_4

    move v12, v10

    move v10, v8

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_5

    move v12, v8

    goto :goto_4

    :cond_5
    move v12, v10

    .line 1604
    :goto_4
    iget v13, v6, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->width:I

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-eq v13, v15, :cond_7

    .line 1606
    iget v10, v6, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->width:I

    if-eq v10, v14, :cond_6

    .line 1607
    iget v10, v6, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->width:I

    goto :goto_5

    :cond_6
    move v10, v2

    :goto_5
    move v13, v8

    goto :goto_6

    :cond_7
    move v13, v10

    move v10, v2

    .line 1610
    :goto_6
    iget v1, v6, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->height:I

    if-eq v1, v15, :cond_9

    .line 1612
    iget v1, v6, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->height:I

    if-eq v1, v14, :cond_8

    .line 1613
    iget v1, v6, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->height:I

    goto :goto_7

    :cond_8
    move v1, v3

    goto :goto_7

    :cond_9
    move v1, v3

    move v8, v12

    .line 1616
    :goto_7
    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1617
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1618
    invoke-virtual {v9, v6, v1}, Landroid/view/View;->measure(II)V

    if-eqz v11, :cond_a

    .line 1621
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v3, v1

    goto :goto_8

    :cond_a
    if-eqz v7, :cond_b

    .line 1623
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v2, v1

    :cond_b
    :goto_8
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1629
    :cond_c
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Landroidx/viewpager/widget/DumpViewPager;->mChildWidthMeasureSpec:I

    .line 1630
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Landroidx/viewpager/widget/DumpViewPager;->mChildHeightMeasureSpec:I

    .line 1633
    iput-boolean v7, v0, Landroidx/viewpager/widget/DumpViewPager;->mInLayout:Z

    .line 1634
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->populate()V

    const/4 v1, 0x0

    .line 1635
    iput-boolean v1, v0, Landroidx/viewpager/widget/DumpViewPager;->mInLayout:Z

    .line 1638
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getChildCount()I

    move-result v3

    :goto_9
    if-ge v1, v3, :cond_f

    .line 1640
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/DumpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1641
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_e

    .line 1646
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;

    if-eqz v5, :cond_d

    .line 1647
    iget-boolean v7, v5, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->isDecor:Z

    if-nez v7, :cond_e

    :cond_d
    int-to-float v7, v2

    .line 1648
    iget v5, v5, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v7, v5

    float-to-int v5, v7

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1650
    iget v7, v0, Landroidx/viewpager/widget/DumpViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 12

    .line 1877
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mDecorChildCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 1878
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollX()I

    move-result v0

    .line 1879
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingLeft()I

    move-result v3

    .line 1880
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingRight()I

    move-result v4

    .line 1881
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getWidth()I

    move-result v5

    .line 1882
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getChildCount()I

    move-result v6

    move v7, v1

    :goto_0
    if-ge v7, v6, :cond_5

    .line 1884
    invoke-virtual {p0, v7}, Landroidx/viewpager/widget/DumpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1885
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;

    .line 1886
    iget-boolean v10, v9, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_0

    goto :goto_3

    .line 1888
    :cond_0
    iget v9, v9, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->gravity:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_3

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    move v9, v3

    goto :goto_2

    :cond_1
    sub-int v9, v5, v4

    .line 1903
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 1904
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v4, v10

    goto :goto_1

    .line 1896
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    goto :goto_2

    .line 1899
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    move v11, v9

    move v9, v3

    move v3, v11

    :goto_2
    add-int/2addr v3, v0

    .line 1909
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v3, v10

    if-eqz v3, :cond_4

    .line 1911
    invoke-virtual {v8, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v3, v9

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1916
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroidx/viewpager/widget/DumpViewPager;->dispatchOnPageScrolled(IFI)V

    .line 1918
    iget-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mPageTransformer:Landroidx/viewpager/widget/DumpViewPager$PageTransformer;

    if-eqz p1, :cond_7

    .line 1919
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollX()I

    move-result p1

    .line 1920
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getChildCount()I

    move-result p2

    :goto_4
    if-ge v1, p2, :cond_7

    .line 1922
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/DumpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1923
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;

    .line 1925
    iget-boolean v0, v0, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_6

    goto :goto_5

    .line 1926
    :cond_6
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 1927
    iget-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mPageTransformer:Landroidx/viewpager/widget/DumpViewPager$PageTransformer;

    invoke-interface {v3, p3, v0}, Landroidx/viewpager/widget/DumpViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1931
    :cond_7
    iput-boolean v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mCalledSuper:Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 2982
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    move v0, v2

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :goto_0
    if-eq v0, v3, :cond_2

    .line 2993
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/DumpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2994
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2995
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/DumpViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2996
    iget v6, v6, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    iget v7, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    .line 2997
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1464
    instance-of v0, p1, Landroidx/viewpager/widget/DumpViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1465
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1469
    :cond_0
    check-cast p1, Landroidx/viewpager/widget/DumpViewPager$SavedState;

    .line 1470
    invoke-virtual {p1}, Landroidx/viewpager/widget/DumpViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1472
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_1

    .line 1473
    iget-object v1, p1, Landroidx/viewpager/widget/DumpViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Landroidx/viewpager/widget/DumpViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1474
    iget p1, p1, Landroidx/viewpager/widget/DumpViewPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/viewpager/widget/DumpViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1476
    :cond_1
    iget v0, p1, Landroidx/viewpager/widget/DumpViewPager$SavedState;->position:I

    iput v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mRestoredCurItem:I

    .line 1477
    iget-object v0, p1, Landroidx/viewpager/widget/DumpViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1478
    iget-object p1, p1, Landroidx/viewpager/widget/DumpViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1453
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1454
    new-instance v1, Landroidx/viewpager/widget/DumpViewPager$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager/widget/DumpViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1455
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    iput v0, v1, Landroidx/viewpager/widget/DumpViewPager$SavedState;->position:I

    .line 1456
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p0, :cond_0

    .line 1457
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v1, Landroidx/viewpager/widget/DumpViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1658
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 1662
    iget p2, p0, Landroidx/viewpager/widget/DumpViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, p2, p2}, Landroidx/viewpager/widget/DumpViewPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 2178
    iget-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2185
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 2191
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 2196
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 2197
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2199
    :cond_3
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    goto/16 :goto_1

    .line 2294
    :cond_4
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2295
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 2287
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2288
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2289
    iput v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    .line 2290
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2281
    :cond_6
    iget-boolean p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_d

    .line 2282
    iget p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    invoke-direct {p0, p1, v1, v2, v2}, Landroidx/viewpager/widget/DumpViewPager;->scrollToItem(IZIZ)V

    .line 2283
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->resetTouch()Z

    move-result v2

    goto/16 :goto_1

    .line 2217
    :cond_7
    iget-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_a

    .line 2218
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_8

    .line 2222
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->resetTouch()Z

    move-result v2

    goto/16 :goto_1

    .line 2225
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2226
    iget v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2227
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 2228
    iget v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2232
    iget v6, p0, Landroidx/viewpager/widget/DumpViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_a

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    .line 2234
    iput-boolean v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mIsBeingDragged:Z

    .line 2235
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/DumpViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2236
    iget v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mInitialMotionX:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_9

    iget v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    goto :goto_0

    :cond_9
    iget v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    :goto_0
    iput v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    .line 2238
    iput v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionY:F

    .line 2239
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/DumpViewPager;->setScrollState(I)V

    .line 2240
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/DumpViewPager;->setScrollingCacheEnabled(Z)V

    .line 2243
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2245
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2250
    :cond_a
    iget-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_d

    .line 2252
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2253
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2254
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->performDrag(F)Z

    move-result p1

    or-int/2addr v2, p1

    goto :goto_1

    .line 2258
    :cond_b
    iget-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_d

    .line 2259
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    .line 2260
    iget v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2261
    iget v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mActivePointerId:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 2262
    iput-boolean v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mPopulatePending:Z

    .line 2263
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->getClientWidth()I

    move-result v2

    .line 2264
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollX()I

    move-result v3

    .line 2265
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object v4

    .line 2266
    iget v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mPageMargin:I

    int-to-float v5, v5

    int-to-float v2, v2

    div-float/2addr v5, v2

    .line 2267
    iget v6, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 2268
    iget v2, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->offset:F

    sub-float/2addr v3, v2

    iget v2, v4, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v5

    div-float/2addr v3, v2

    .line 2270
    iget v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 2271
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2272
    iget v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mInitialMotionX:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    .line 2273
    invoke-direct {p0, v6, v3, v0, p1}, Landroidx/viewpager/widget/DumpViewPager;->determineTargetPage(IFII)I

    move-result p1

    .line 2275
    invoke-virtual {p0, p1, v1, v1, v0}, Landroidx/viewpager/widget/DumpViewPager;->setCurrentItemInternal(IZZI)V

    .line 2277
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->resetTouch()Z

    move-result v2

    goto :goto_1

    .line 2206
    :cond_c
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2207
    iput-boolean v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mPopulatePending:Z

    .line 2208
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->populate()V

    .line 2211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mInitialMotionX:F

    iput v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionX:F

    .line 2212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mInitialMotionY:F

    iput v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mLastMotionY:F

    .line 2213
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mActivePointerId:I

    :cond_d
    :goto_1
    if-eqz v2, :cond_e

    .line 2299
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_e
    return v1

    :cond_f
    :goto_2
    return v2
.end method

.method pageLeft()Z
    .locals 2

    .line 2897
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2898
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/DumpViewPager;->setCurrentItem(IZ)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method pageRight()Z
    .locals 3

    .line 2905
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 2906
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/DumpViewPager;->setCurrentItem(IZ)V

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method populate()V
    .locals 1

    .line 1092
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/DumpViewPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1097
    iget v2, v0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    if-eq v2, v1, :cond_0

    .line 1098
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/DumpViewPager;->infoForPosition(I)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object v2

    .line 1099
    iput v1, v0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1102
    :goto_0
    iget-object v1, v0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v1, :cond_1

    .line 1103
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->sortChildDrawingOrder()V

    return-void

    .line 1111
    :cond_1
    iget-boolean v1, v0, Landroidx/viewpager/widget/DumpViewPager;->mPopulatePending:Z

    if-eqz v1, :cond_2

    .line 1113
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->sortChildDrawingOrder()V

    return-void

    .line 1120
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 1124
    :cond_3
    iget-object v1, v0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1126
    iget v1, v0, Landroidx/viewpager/widget/DumpViewPager;->mOffscreenPageLimit:I

    .line 1127
    iget v4, v0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1128
    iget-object v6, v0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    .line 1129
    iget v8, v0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1131
    iget v7, v0, Landroidx/viewpager/widget/DumpViewPager;->mExpectedAdapterCount:I

    if-ne v6, v7, :cond_20

    move v7, v5

    .line 1149
    :goto_1
    iget-object v8, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1150
    iget-object v8, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 1151
    iget v9, v8, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    iget v10, v0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    if-lt v9, v10, :cond_4

    .line 1152
    iget v9, v8, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    iget v10, v0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    if-ne v9, v10, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_6

    if-lez v6, :cond_6

    .line 1158
    iget v8, v0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    invoke-virtual {v0, v8, v7}, Landroidx/viewpager/widget/DumpViewPager;->addNewItem(II)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object v8

    :cond_6
    const/4 v9, 0x0

    if-eqz v8, :cond_19

    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_7

    .line 1167
    iget-object v11, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    .line 1168
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getClientWidth()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    if-gtz v12, :cond_8

    move v14, v9

    goto :goto_4

    .line 1169
    :cond_8
    iget v14, v8, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    sub-float v14, v13, v14

    .line 1170
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    int-to-float v3, v12

    div-float/2addr v15, v3

    add-float/2addr v14, v15

    .line 1171
    :goto_4
    iget v3, v0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    add-int/lit8 v3, v3, -0x1

    move v15, v9

    :goto_5
    if-ltz v3, :cond_f

    cmpl-float v16, v15, v14

    if-ltz v16, :cond_b

    if-ge v3, v4, :cond_b

    if-nez v11, :cond_9

    goto :goto_7

    .line 1176
    :cond_9
    iget v5, v11, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-ne v3, v5, :cond_a

    .line 1177
    iget-boolean v5, v11, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->scrolling:Z

    if-nez v5, :cond_e

    .line 1178
    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1179
    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v11, v11, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, v0, v3, v11}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v7, v7, -0x1

    if-ltz v10, :cond_d

    .line 1186
    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    goto :goto_6

    .line 1189
    :cond_a
    iget v5, v11, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-ge v3, v5, :cond_e

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_d

    .line 1191
    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    goto :goto_6

    :cond_b
    if-eqz v11, :cond_c

    .line 1193
    iget v5, v11, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-ne v3, v5, :cond_c

    .line 1194
    iget v5, v11, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v15, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_d

    .line 1196
    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    goto :goto_6

    :cond_c
    add-int/lit8 v5, v10, 0x1

    .line 1198
    invoke-virtual {v0, v3, v5}, Landroidx/viewpager/widget/DumpViewPager;->addNewItem(II)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object v5

    .line 1199
    iget v5, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v15, v5

    add-int/lit8 v7, v7, 0x1

    if-ltz v10, :cond_d

    .line 1201
    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    :goto_6
    move-object v11, v5

    :cond_e
    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    goto :goto_5

    .line 1205
    :cond_f
    :goto_7
    iget v3, v8, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v4, v7, 0x1

    cmpg-float v5, v3, v13

    if-gez v5, :cond_18

    .line 1208
    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    goto :goto_8

    :cond_10
    const/4 v5, 0x0

    :goto_8
    if-gtz v12, :cond_11

    move v10, v9

    goto :goto_9

    .line 1210
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v12

    div-float/2addr v10, v11

    add-float/2addr v10, v13

    .line 1211
    :goto_9
    iget v11, v0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    :goto_a
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v6, :cond_18

    cmpl-float v12, v3, v10

    if-ltz v12, :cond_15

    if-le v11, v1, :cond_15

    if-nez v5, :cond_12

    goto/16 :goto_c

    .line 1216
    :cond_12
    iget v12, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_14

    .line 1217
    iget-boolean v12, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->scrolling:Z

    if-nez v12, :cond_17

    .line 1218
    iget-object v12, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1219
    iget-object v12, v0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v5, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v0, v11, v5}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1224
    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_13

    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    goto :goto_b

    :cond_13
    const/4 v5, 0x0

    goto :goto_b

    :cond_14
    add-int/lit8 v4, v4, 0x1

    .line 1229
    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_13

    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    goto :goto_b

    :cond_15
    if-eqz v5, :cond_16

    .line 1231
    iget v12, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_16

    .line 1232
    iget v5, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    .line 1234
    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_13

    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    goto :goto_b

    .line 1236
    :cond_16
    invoke-virtual {v0, v11, v4}, Landroidx/viewpager/widget/DumpViewPager;->addNewItem(II)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 1238
    iget v5, v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v5

    .line 1239
    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_13

    iget-object v5, v0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    :cond_17
    :goto_b
    goto :goto_a

    .line 1244
    :cond_18
    :goto_c
    invoke-direct {v0, v8, v7, v2}, Landroidx/viewpager/widget/DumpViewPager;->calculatePageOffsets(Landroidx/viewpager/widget/DumpViewPager$ItemInfo;ILandroidx/viewpager/widget/DumpViewPager$ItemInfo;)V

    .line 1246
    iget-object v1, v0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v2, v0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    iget-object v3, v8, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1256
    :cond_19
    iget-object v1, v0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1260
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1b

    .line 1262
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/DumpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1263
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;

    .line 1264
    iput v2, v4, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->childIndex:I

    .line 1265
    iget-boolean v5, v4, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_1a

    iget v5, v4, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->widthFactor:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_1a

    .line 1267
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/DumpViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 1269
    iget v5, v3, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->widthFactor:F

    iput v5, v4, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->widthFactor:F

    .line 1270
    iget v3, v3, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    iput v3, v4, Landroidx/viewpager/widget/DumpViewPager$LayoutParams;->position:I

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1274
    :cond_1b
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->sortChildDrawingOrder()V

    .line 1276
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1277
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 1278
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/DumpViewPager;->infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object v3

    goto :goto_e

    :cond_1c
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_1d

    .line 1279
    iget v1, v3, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    iget v2, v0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    if-eq v1, v2, :cond_1f

    :cond_1d
    const/4 v5, 0x0

    .line 1280
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getChildCount()I

    move-result v1

    if-ge v5, v1, :cond_1f

    .line 1281
    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/DumpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1282
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/DumpViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1283
    iget v2, v2, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    iget v3, v0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    if-ne v2, v3, :cond_1e

    const/4 v2, 0x2

    .line 1284
    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_10

    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1f
    :goto_10
    return-void

    .line 1134
    :cond_20
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    .line 1136
    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/DumpViewPager;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1138
    :goto_11
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroidx/viewpager/widget/DumpViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 1143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeOnAdapterChangeListener(Landroidx/viewpager/widget/DumpViewPager$OnAdapterChangeListener;)V
    .locals 0

    .line 594
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 595
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnPageChangeListener(Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;)V
    .locals 0

    .line 736
    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 737
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1516
    iget-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1517
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 1519
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 7

    .line 506
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 508
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v0, v2

    .line 509
    :goto_0
    iget-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 510
    iget-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    .line 511
    iget-object v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v5, v3, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->position:I

    iget-object v3, v3, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v3}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 514
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->removeNonDecorViews()V

    .line 516
    iput v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    .line 517
    invoke-virtual {p0, v2, v2}, Landroidx/viewpager/widget/DumpViewPager;->scrollTo(II)V

    .line 520
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 521
    iput-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 522
    iput v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mExpectedAdapterCount:I

    if-eqz p1, :cond_5

    .line 525
    iget-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mObserver:Landroidx/viewpager/widget/DumpViewPager$PagerObserver;

    if-nez v3, :cond_2

    .line 526
    new-instance v3, Landroidx/viewpager/widget/DumpViewPager$PagerObserver;

    invoke-direct {v3, p0}, Landroidx/viewpager/widget/DumpViewPager$PagerObserver;-><init>(Landroidx/viewpager/widget/DumpViewPager;)V

    iput-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mObserver:Landroidx/viewpager/widget/DumpViewPager$PagerObserver;

    .line 528
    :cond_2
    iget-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mObserver:Landroidx/viewpager/widget/DumpViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 529
    iput-boolean v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mPopulatePending:Z

    .line 530
    iget-boolean v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstLayout:Z

    const/4 v4, 0x1

    .line 531
    iput-boolean v4, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstLayout:Z

    .line 532
    iget-object v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mExpectedAdapterCount:I

    .line 533
    iget v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_3

    .line 534
    iget-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v5, p0, Landroidx/viewpager/widget/DumpViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Landroidx/viewpager/widget/DumpViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v5, v6}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 535
    iget v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v3, v2, v4}, Landroidx/viewpager/widget/DumpViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v3, -0x1

    .line 536
    iput v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mRestoredCurItem:I

    .line 537
    iput-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 538
    iput-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 540
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->populate()V

    goto :goto_1

    .line 542
    :cond_4
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->requestLayout()V

    .line 547
    :cond_5
    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 548
    iget-object v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_6

    .line 549
    iget-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/DumpViewPager$OnAdapterChangeListener;

    invoke-interface {v3, p0, v0, p1}, Landroidx/viewpager/widget/DumpViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroidx/viewpager/widget/DumpViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 611
    iput-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mPopulatePending:Z

    .line 612
    iget-boolean v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroidx/viewpager/widget/DumpViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 622
    iput-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mPopulatePending:Z

    .line 623
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/DumpViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 631
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/viewpager/widget/DumpViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4

    .line 635
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p3, :cond_1

    .line 639
    iget p3, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 640
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/DumpViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    .line 646
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 647
    iget-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 649
    :cond_3
    :goto_0
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mOffscreenPageLimit:I

    .line 650
    iget v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    move v0, v1

    .line 654
    :goto_1
    iget-object v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 655
    iget-object v2, p0, Landroidx/viewpager/widget/DumpViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;

    iput-boolean p3, v2, Landroidx/viewpager/widget/DumpViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 658
    :cond_5
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    if-eq v0, p1, :cond_6

    move v1, p3

    .line 660
    :cond_6
    iget-boolean p3, p0, Landroidx/viewpager/widget/DumpViewPager;->mFirstLayout:Z

    if-eqz p3, :cond_8

    .line 663
    iput p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    if-eqz v1, :cond_7

    .line 665
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->dispatchOnPageSelected(I)V

    .line 667
    :cond_7
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->requestLayout()V

    goto :goto_2

    .line 669
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->populate(I)V

    .line 670
    invoke-direct {p0, p1, p2, p4, v1}, Landroidx/viewpager/widget/DumpViewPager;->scrollToItem(IZIZ)V

    :goto_2
    return-void

    .line 636
    :cond_9
    :goto_3
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/DumpViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method setInternalPageChangeListener(Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;)Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;
    .locals 1

    .line 815
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;

    .line 816
    iput-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;

    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 854
    :cond_0
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 855
    iput p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mOffscreenPageLimit:I

    .line 856
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->populate()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 709
    iput-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/DumpViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 869
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mPageMargin:I

    .line 870
    iput p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mPageMargin:I

    .line 872
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getWidth()I

    move-result v1

    .line 873
    invoke-direct {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/DumpViewPager;->recomputeScrollPosition(IIII)V

    .line 875
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 905
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 893
    iput-object p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 894
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 895
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->setWillNotDraw(Z)V

    .line 896
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->invalidate()V

    return-void
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/DumpViewPager$PageTransformer;)V
    .locals 1

    const/4 v0, 0x2

    .line 769
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/DumpViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/DumpViewPager$PageTransformer;I)V

    return-void
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/DumpViewPager$PageTransformer;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 788
    :goto_0
    iget-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mPageTransformer:Landroidx/viewpager/widget/DumpViewPager$PageTransformer;

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eq v2, v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    .line 789
    :goto_2
    iput-object p2, p0, Landroidx/viewpager/widget/DumpViewPager;->mPageTransformer:Landroidx/viewpager/widget/DumpViewPager$PageTransformer;

    .line 790
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/DumpViewPager;->setChildrenDrawingOrderEnabled(Z)V

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    .line 792
    :cond_3
    iput v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mDrawingOrder:I

    .line 793
    iput p3, p0, Landroidx/viewpager/widget/DumpViewPager;->mPageTransformerLayerType:I

    goto :goto_3

    .line 795
    :cond_4
    iput v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mDrawingOrder:I

    :goto_3
    if-eqz v3, :cond_5

    .line 797
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->populate()V

    :cond_5
    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 488
    iget v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 492
    :cond_0
    iput p1, p0, Landroidx/viewpager/widget/DumpViewPager;->mScrollState:I

    .line 493
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mPageTransformer:Landroidx/viewpager/widget/DumpViewPager$PageTransformer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 495
    :goto_0
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/DumpViewPager;->enableLayers(Z)V

    .line 497
    :cond_2
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1

    const/4 v0, 0x0

    .line 939
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/DumpViewPager;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .locals 9

    .line 950
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 952
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/DumpViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 957
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 963
    iget-boolean v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mIsScrollStarted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    .line 965
    :goto_1
    iget-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 966
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/DumpViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_2

    .line 968
    :cond_3
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollX()I

    move-result v0

    :goto_2
    move v4, v0

    .line 970
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->getScrollY()I

    move-result v5

    sub-int v6, p1, v4

    sub-int v7, p2, v5

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    .line 974
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/DumpViewPager;->completeScroll(Z)V

    .line 975
    invoke-virtual {p0}, Landroidx/viewpager/widget/DumpViewPager;->populate()V

    .line 976
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/DumpViewPager;->setScrollState(I)V

    return-void

    .line 980
    :cond_4
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/DumpViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    .line 981
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/DumpViewPager;->setScrollState(I)V

    .line 983
    invoke-direct {p0}, Landroidx/viewpager/widget/DumpViewPager;->getClientWidth()I

    move-result p1

    .line 984
    div-int/lit8 p2, p1, 0x2

    .line 985
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    .line 987
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/DumpViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr p2, v0

    .line 990
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_5

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 992
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    .line 994
    :cond_5
    iget-object p2, p0, Landroidx/viewpager/widget/DumpViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget p3, p0, Landroidx/viewpager/widget/DumpViewPager;->mCurItem:I

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result p2

    mul-float/2addr p1, p2

    .line 995
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Landroidx/viewpager/widget/DumpViewPager;->mPageMargin:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v2

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    :goto_3
    const/16 p2, 0x258

    .line 998
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1002
    iput-boolean v1, p0, Landroidx/viewpager/widget/DumpViewPager;->mIsScrollStarted:Z

    .line 1003
    iget-object v3, p0, Landroidx/viewpager/widget/DumpViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1004
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 910
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/viewpager/widget/DumpViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
