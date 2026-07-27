.class public final Lcoil/drawable/CrossfadeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CrossfadeDrawable.kt"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/drawable/CrossfadeDrawable$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrossfadeDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrossfadeDrawable.kt\ncoil/drawable/CrossfadeDrawable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Canvas.kt\nandroidx/core/graphics/CanvasKt\n+ 4 Collections.kt\ncoil/util/-Collections\n*L\n1#1,277:1\n1#2:278\n30#3,7:279\n30#3,7:286\n30#3,7:293\n30#3,7:300\n12#4,4:307\n12#4,4:311\n*S KotlinDebug\n*F\n+ 1 CrossfadeDrawable.kt\ncoil/drawable/CrossfadeDrawable\n*L\n71#1:279,7\n79#1:286,7\n93#1:293,7\n100#1:300,7\n211#1:307,4\n266#1:311,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 Y2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001YBE\u0008\u0007\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0016J\u0008\u0010\'\u001a\u00020\tH\u0016J\u0010\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020\tH\u0016J\u0008\u0010*\u001a\u00020\tH\u0017J\n\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0012\u0010-\u001a\u00020$2\u0008\u0010.\u001a\u0004\u0018\u00010,H\u0016J\u0010\u0010/\u001a\u00020$2\u0006\u00100\u001a\u000201H\u0014J\u0010\u00102\u001a\u00020\u000b2\u0006\u00103\u001a\u00020\tH\u0014J\u0010\u00104\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u000205H\u0014J\u0008\u00106\u001a\u00020\tH\u0016J\u0008\u00107\u001a\u00020\tH\u0016J\u0018\u00108\u001a\u00020$2\u0006\u00109\u001a\u00020\u00012\u0006\u0010:\u001a\u00020;H\u0016J\u0010\u0010<\u001a\u00020$2\u0006\u00109\u001a\u00020\u0001H\u0016J \u0010=\u001a\u00020$2\u0006\u00109\u001a\u00020\u00012\u0006\u0010:\u001a\u00020;2\u0006\u0010>\u001a\u00020\u001cH\u0016J\u0010\u0010?\u001a\u00020$2\u0006\u0010@\u001a\u00020\tH\u0016J\u0012\u0010A\u001a\u00020$2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u0012\u0010D\u001a\u00020$2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0016J\u0012\u0010G\u001a\u00020$2\u0008\u0010H\u001a\u0004\u0018\u00010IH\u0017J\u0008\u0010J\u001a\u00020\u000bH\u0016J\u0008\u0010\u0004\u001a\u00020$H\u0016J\u0008\u0010K\u001a\u00020$H\u0016J\u0010\u0010L\u001a\u00020$2\u0006\u0010M\u001a\u00020\u0018H\u0016J\u0010\u0010N\u001a\u00020\u000b2\u0006\u0010M\u001a\u00020\u0018H\u0016J\u0008\u0010O\u001a\u00020$H\u0016J\u001d\u0010P\u001a\u00020$2\u0006\u0010Q\u001a\u00020\u00012\u0006\u0010R\u001a\u000201H\u0001\u00a2\u0006\u0002\u0008SJ!\u0010T\u001a\u00020\t2\u0008\u0010U\u001a\u0004\u0018\u00010\t2\u0008\u0010V\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0002\u0010WJ\u0008\u0010X\u001a\u00020$H\u0002R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010!\u00a8\u0006Z"
    }
    d2 = {
        "Lcoil/drawable/CrossfadeDrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/drawable/Drawable$Callback;",
        "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;",
        "start",
        "end",
        "scale",
        "Lcoil/size/Scale;",
        "durationMillis",
        "",
        "fadeStart",
        "",
        "preferExactIntrinsicSize",
        "<init>",
        "(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;IZZ)V",
        "getScale",
        "()Lcoil/size/Scale;",
        "getDurationMillis",
        "()I",
        "getFadeStart",
        "()Z",
        "getPreferExactIntrinsicSize",
        "callbacks",
        "",
        "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;",
        "intrinsicWidth",
        "intrinsicHeight",
        "startTimeMillis",
        "",
        "maxAlpha",
        "state",
        "value",
        "getStart",
        "()Landroid/graphics/drawable/Drawable;",
        "getEnd",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getAlpha",
        "setAlpha",
        "alpha",
        "getOpacity",
        "getColorFilter",
        "Landroid/graphics/ColorFilter;",
        "setColorFilter",
        "colorFilter",
        "onBoundsChange",
        "bounds",
        "Landroid/graphics/Rect;",
        "onLevelChange",
        "level",
        "onStateChange",
        "",
        "getIntrinsicWidth",
        "getIntrinsicHeight",
        "unscheduleDrawable",
        "who",
        "what",
        "Ljava/lang/Runnable;",
        "invalidateDrawable",
        "scheduleDrawable",
        "when",
        "setTint",
        "tintColor",
        "setTintList",
        "tint",
        "Landroid/content/res/ColorStateList;",
        "setTintMode",
        "tintMode",
        "Landroid/graphics/PorterDuff$Mode;",
        "setTintBlendMode",
        "blendMode",
        "Landroid/graphics/BlendMode;",
        "isRunning",
        "stop",
        "registerAnimationCallback",
        "callback",
        "unregisterAnimationCallback",
        "clearAnimationCallbacks",
        "updateBounds",
        "drawable",
        "targetBounds",
        "updateBounds$coil_base_release",
        "computeIntrinsicDimension",
        "startSize",
        "endSize",
        "(Ljava/lang/Integer;Ljava/lang/Integer;)I",
        "markDone",
        "Companion",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcoil/drawable/CrossfadeDrawable$Companion;

.field public static final DEFAULT_DURATION:I = 0x64

.field private static final STATE_DONE:I = 0x2

.field private static final STATE_RUNNING:I = 0x1

.field private static final STATE_START:I


# instance fields
.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final durationMillis:I

.field private final end:Landroid/graphics/drawable/Drawable;

.field private final fadeStart:Z

.field private final intrinsicHeight:I

.field private final intrinsicWidth:I

.field private maxAlpha:I

.field private final preferExactIntrinsicSize:Z

.field private final scale:Lcoil/size/Scale;

.field private start:Landroid/graphics/drawable/Drawable;

.field private startTimeMillis:J

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/drawable/CrossfadeDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/drawable/CrossfadeDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/drawable/CrossfadeDrawable;->Companion:Lcoil/drawable/CrossfadeDrawable$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 9

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcoil/drawable/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;)V
    .locals 9

    const/16 v7, 0x38

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lcoil/drawable/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;I)V
    .locals 9

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Lcoil/drawable/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;IZ)V
    .locals 9

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcoil/drawable/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;IZZ)V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 41
    iput-object p3, p0, Lcoil/drawable/CrossfadeDrawable;->scale:Lcoil/size/Scale;

    .line 42
    iput p4, p0, Lcoil/drawable/CrossfadeDrawable;->durationMillis:I

    .line 43
    iput-boolean p5, p0, Lcoil/drawable/CrossfadeDrawable;->fadeStart:Z

    .line 44
    iput-boolean p6, p0, Lcoil/drawable/CrossfadeDrawable;->preferExactIntrinsicSize:Z

    .line 47
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/List;

    iput-object p3, p0, Lcoil/drawable/CrossfadeDrawable;->callbacks:Ljava/util/List;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    goto :goto_0

    :cond_0
    move-object p5, p3

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    goto :goto_1

    :cond_1
    move-object p6, p3

    :goto_1
    invoke-direct {p0, p5, p6}, Lcoil/drawable/CrossfadeDrawable;->computeIntrinsicDimension(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p5

    iput p5, p0, Lcoil/drawable/CrossfadeDrawable;->intrinsicWidth:I

    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    goto :goto_2

    :cond_2
    move-object p5, p3

    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    goto :goto_3

    :cond_3
    move-object p6, p3

    :goto_3
    invoke-direct {p0, p5, p6}, Lcoil/drawable/CrossfadeDrawable;->computeIntrinsicDimension(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p5

    iput p5, p0, Lcoil/drawable/CrossfadeDrawable;->intrinsicHeight:I

    const/16 p5, 0xff

    .line 53
    iput p5, p0, Lcoil/drawable/CrossfadeDrawable;->maxAlpha:I

    if-eqz p1, :cond_4

    .line 56
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_4

    :cond_4
    move-object p1, p3

    :goto_4
    iput-object p1, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    .line 58
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_5
    iput-object p3, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-lez p4, :cond_8

    .line 63
    iget-object p1, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    move-object p2, p0

    check-cast p2, Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_6
    if-eqz p3, :cond_7

    .line 64
    check-cast p0, Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_7
    return-void

    .line 61
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "durationMillis must be > 0."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    .line 41
    sget-object p3, Lcoil/size/Scale;->FIT:Lcoil/size/Scale;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    const/16 p4, 0x64

    :cond_1
    move v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x1

    :cond_2
    move v5, p5

    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    const/4 p6, 0x0

    :cond_3
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 38
    invoke-direct/range {v0 .. v6}, Lcoil/drawable/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;IZZ)V

    return-void
.end method

.method private final computeIntrinsicDimension(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 1

    .line 259
    iget-boolean p0, p0, Lcoil/drawable/CrossfadeDrawable;->preferExactIntrinsicSize:Z

    const/4 v0, -0x1

    if-nez p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v0, :cond_2

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_3

    :cond_2
    return v0

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 260
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_4
    move p0, v0

    :goto_2
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_5
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final markDone()V
    .locals 5

    const/4 v0, 0x2

    .line 264
    iput v0, p0, Lcoil/drawable/CrossfadeDrawable;->state:I

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    .line 266
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->callbacks:Ljava/util/List;

    .line 311
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 312
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 266
    move-object v4, p0

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearAnimationCallbacks()V
    .locals 0

    .line 233
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->callbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 68
    iget v0, p0, Lcoil/drawable/CrossfadeDrawable;->state:I

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 70
    iget p0, p0, Lcoil/drawable/CrossfadeDrawable;->maxAlpha:I

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 279
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p0

    .line 71
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 77
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 78
    iget p0, p0, Lcoil/drawable/CrossfadeDrawable;->maxAlpha:I

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 286
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p0

    .line 79
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 290
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :cond_2
    :goto_1
    return-void

    .line 84
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcoil/drawable/CrossfadeDrawable;->startTimeMillis:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    iget v2, p0, Lcoil/drawable/CrossfadeDrawable;->durationMillis:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide v4, v0

    .line 85
    invoke-static/range {v4 .. v9}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v2

    iget v4, p0, Lcoil/drawable/CrossfadeDrawable;->maxAlpha:I

    int-to-double v5, v4

    mul-double/2addr v2, v5

    double-to-int v2, v2

    .line 86
    iget-boolean v3, p0, Lcoil/drawable/CrossfadeDrawable;->fadeStart:Z

    if-eqz v3, :cond_4

    sub-int/2addr v4, v2

    :cond_4
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v5

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    .line 91
    iget-object v1, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 92
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 93
    :try_start_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 297
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0

    .line 98
    :cond_6
    :goto_3
    iget-object v1, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 99
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 300
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 100
    :try_start_3
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 304
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_4

    :catchall_3
    move-exception p0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0

    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 104
    invoke-direct {p0}, Lcoil/drawable/CrossfadeDrawable;->markDone()V

    goto :goto_5

    .line 106
    :cond_8
    invoke-virtual {p0}, Lcoil/drawable/CrossfadeDrawable;->invalidateSelf()V

    :goto_5
    return-void
.end method

.method public getAlpha()I
    .locals 0

    .line 110
    iget p0, p0, Lcoil/drawable/CrossfadeDrawable;->maxAlpha:I

    return p0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 3

    .line 139
    iget v0, p0, Lcoil/drawable/CrossfadeDrawable;->state:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    goto :goto_1

    .line 141
    :cond_1
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    goto :goto_1

    .line 140
    :cond_4
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    :cond_5
    :goto_1
    return-object v1
.end method

.method public final getDurationMillis()I
    .locals 0

    .line 42
    iget p0, p0, Lcoil/drawable/CrossfadeDrawable;->durationMillis:I

    return p0
.end method

.method public final getEnd()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 58
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getFadeStart()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcoil/drawable/CrossfadeDrawable;->fadeStart:Z

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 170
    iget p0, p0, Lcoil/drawable/CrossfadeDrawable;->intrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 168
    iget p0, p0, Lcoil/drawable/CrossfadeDrawable;->intrinsicWidth:I

    return p0
.end method

.method public getOpacity()I
    .locals 4
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 120
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    .line 121
    iget-object v1, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    .line 123
    iget p0, p0, Lcoil/drawable/CrossfadeDrawable;->state:I

    const/4 v2, -0x2

    if-nez p0, :cond_1

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    :cond_0
    return v2

    :cond_1
    const/4 v3, 0x2

    if-ne p0, v3, :cond_3

    if-eqz v1, :cond_2

    .line 128
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    :cond_2
    return v2

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 132
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    invoke-static {p0, v0}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 133
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    .line 134
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    :cond_6
    :goto_0
    return v2
.end method

.method public final getPreferExactIntrinsicSize()Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcoil/drawable/CrossfadeDrawable;->preferExactIntrinsicSize:Z

    return p0
.end method

.method public final getScale()Lcoil/size/Scale;
    .locals 0

    .line 41
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->scale:Lcoil/size/Scale;

    return-object p0
.end method

.method public final getStart()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 56
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 174
    invoke-virtual {p0}, Lcoil/drawable/CrossfadeDrawable;->invalidateSelf()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 199
    iget p0, p0, Lcoil/drawable/CrossfadeDrawable;->state:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcoil/drawable/CrossfadeDrawable;->updateBounds$coil_base_release(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcoil/drawable/CrossfadeDrawable;->updateBounds$coil_base_release(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 2

    .line 157
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 158
    :goto_0
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez v0, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 164
    :goto_0
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez v0, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0

    .line 226
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->callbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 176
    invoke-virtual {p0, p2, p3, p4}, Lcoil/drawable/CrossfadeDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 114
    iput p1, p0, Lcoil/drawable/CrossfadeDrawable;->maxAlpha:I

    return-void

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid alpha: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 148
    :cond_0
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method public setTint(I)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 180
    :cond_0
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    return-void
.end method

.method public setTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 196
    :cond_0
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_1
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 185
    :cond_0
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 190
    :cond_0
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 5

    .line 202
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 203
    :cond_1
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    .line 205
    :cond_3
    iget v0, p0, Lcoil/drawable/CrossfadeDrawable;->state:I

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x1

    .line 209
    iput v0, p0, Lcoil/drawable/CrossfadeDrawable;->state:I

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcoil/drawable/CrossfadeDrawable;->startTimeMillis:J

    .line 211
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->callbacks:Ljava/util/List;

    .line 307
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    .line 308
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 211
    move-object v4, p0

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 213
    :cond_5
    invoke-virtual {p0}, Lcoil/drawable/CrossfadeDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->start:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 218
    :cond_1
    iget-object v0, p0, Lcoil/drawable/CrossfadeDrawable;->end:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 220
    :cond_3
    iget v0, p0, Lcoil/drawable/CrossfadeDrawable;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 221
    invoke-direct {p0}, Lcoil/drawable/CrossfadeDrawable;->markDone()V

    :cond_4
    return-void
.end method

.method public unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 0

    .line 230
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->callbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 172
    invoke-virtual {p0, p2}, Lcoil/drawable/CrossfadeDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateBounds$coil_base_release(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 10

    .line 238
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 239
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 246
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 247
    iget-object p0, p0, Lcoil/drawable/CrossfadeDrawable;->scale:Lcoil/size/Scale;

    invoke-static {v0, v1, v2, v3, p0}, Lcoil/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil/size/Scale;)D

    move-result-wide v4

    int-to-double v6, v2

    int-to-double v8, v0

    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    const/4 p0, 0x2

    int-to-double v8, p0

    div-double/2addr v6, v8

    .line 248
    invoke-static {v6, v7}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p0

    int-to-double v2, v3

    int-to-double v0, v1

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    div-double/2addr v2, v8

    .line 249
    invoke-static {v2, v3}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    .line 251
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p0

    .line 252
    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    .line 253
    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, p0

    .line 254
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    .line 255
    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    .line 241
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method
