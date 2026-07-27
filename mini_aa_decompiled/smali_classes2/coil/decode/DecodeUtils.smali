.class public final Lcoil/decode/DecodeUtils;
.super Ljava/lang/Object;
.source "DecodeUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/decode/DecodeUtils$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J8\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0001\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007J8\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0001\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007J8\u0010\u000c\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\t\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000bH\u0007J8\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0001\u0010\u0006\u001a\u00020\r2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\r2\u0008\u0008\u0001\u0010\u0008\u001a\u00020\r2\u0008\u0008\u0001\u0010\t\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000bH\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcoil/decode/DecodeUtils;",
        "",
        "<init>",
        "()V",
        "calculateInSampleSize",
        "",
        "srcWidth",
        "srcHeight",
        "dstWidth",
        "dstHeight",
        "scale",
        "Lcoil/size/Scale;",
        "computeSizeMultiplier",
        "",
        "",
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
.field public static final INSTANCE:Lcoil/decode/DecodeUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcoil/decode/DecodeUtils;

    invoke-direct {v0}, Lcoil/decode/DecodeUtils;-><init>()V

    sput-object v0, Lcoil/decode/DecodeUtils;->INSTANCE:Lcoil/decode/DecodeUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final calculateInSampleSize(IIIILcoil/size/Scale;)I
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 22
    div-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    .line 23
    div-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    .line 24
    sget-object p2, Lcoil/decode/DecodeUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Lcoil/size/Scale;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p4, 0x2

    if-ne p2, p4, :cond_0

    .line 26
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 25
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 27
    :goto_0
    invoke-static {p0, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p0

    return p0
.end method

.method public static final computeSizeMultiplier(DDDDLcoil/size/Scale;)D
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    div-double/2addr p4, p0

    div-double/2addr p6, p2

    .line 78
    sget-object p0, Lcoil/decode/DecodeUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p8}, Lcoil/size/Scale;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    .line 80
    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    goto :goto_0

    .line 78
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 79
    :cond_1
    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final computeSizeMultiplier(IIIILcoil/size/Scale;)D
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    int-to-double v0, p2

    int-to-double v2, p0

    div-double/2addr v0, v2

    int-to-double p2, p3

    int-to-double p0, p1

    div-double/2addr p2, p0

    .line 44
    sget-object p0, Lcoil/decode/DecodeUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Lcoil/size/Scale;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    .line 46
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 45
    :cond_1
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final computeSizeMultiplier(FFFFLcoil/size/Scale;)F
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    div-float/2addr p2, p0

    div-float/2addr p3, p1

    .line 61
    sget-object p0, Lcoil/decode/DecodeUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Lcoil/size/Scale;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    .line 63
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    goto :goto_0

    .line 61
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 62
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :goto_0
    return p0
.end method
