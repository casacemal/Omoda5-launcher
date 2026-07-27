.class public final Lcom/miniaa/launcher/ui/theme/ColorKt;
.super Ljava/lang/Object;
.source "Color.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\"\u0013\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0002\u0010\u0003\"\u0013\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0006\u0010\u0003\"\u0013\u0010\u0007\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0003\"\u0013\u0010\t\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\n\u0010\u0003\"\u0013\u0010\u000b\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u000c\u0010\u0003\"\u0013\u0010\r\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u000e\u0010\u0003\"\u0013\u0010\u000f\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0010\u0010\u0003\"\u0013\u0010\u0011\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0012\u0010\u0003\"\u0013\u0010\u0013\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0014\u0010\u0003\u00a8\u0006\u0015"
    }
    d2 = {
        "OrangeAccent",
        "Landroidx/compose/ui/graphics/Color;",
        "getOrangeAccent",
        "()J",
        "J",
        "OrangeAccentDark",
        "getOrangeAccentDark",
        "OrangeAccentLight",
        "getOrangeAccentLight",
        "SurfaceDark",
        "getSurfaceDark",
        "SurfaceCard",
        "getSurfaceCard",
        "BackgroundBlack",
        "getBackgroundBlack",
        "OnSurfaceWhite",
        "getOnSurfaceWhite",
        "OnSurfaceGray",
        "getOnSurfaceGray",
        "OnSurfaceDimGray",
        "getOnSurfaceDimGray",
        "app_systemRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BackgroundBlack:J

.field private static final OnSurfaceDimGray:J

.field private static final OnSurfaceGray:J

.field private static final OnSurfaceWhite:J

.field private static final OrangeAccent:J

.field private static final OrangeAccentDark:J

.field private static final OrangeAccentLight:J

.field private static final SurfaceCard:J

.field private static final SurfaceDark:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0xffe8751aL

    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->OrangeAccent:J

    const-wide v0, 0xffb85c14L

    .line 6
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->OrangeAccentDark:J

    const-wide v0, 0xffff9a47L

    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->OrangeAccentLight:J

    const-wide v0, 0xff1a1a1aL

    .line 8
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->SurfaceDark:J

    const-wide v0, 0xff242424L

    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->SurfaceCard:J

    const-wide v0, 0xff000000L

    .line 10
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->BackgroundBlack:J

    const-wide v0, 0xffffffffL

    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->OnSurfaceWhite:J

    const-wide v0, 0xff9e9e9eL

    .line 12
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->OnSurfaceGray:J

    const-wide v0, 0xff666666L

    .line 13
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->OnSurfaceDimGray:J

    return-void
.end method

.method public static final getBackgroundBlack()J
    .locals 2

    .line 10
    sget-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->BackgroundBlack:J

    return-wide v0
.end method

.method public static final getOnSurfaceDimGray()J
    .locals 2

    .line 13
    sget-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->OnSurfaceDimGray:J

    return-wide v0
.end method

.method public static final getOnSurfaceGray()J
    .locals 2

    .line 12
    sget-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->OnSurfaceGray:J

    return-wide v0
.end method

.method public static final getOnSurfaceWhite()J
    .locals 2

    .line 11
    sget-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->OnSurfaceWhite:J

    return-wide v0
.end method

.method public static final getOrangeAccent()J
    .locals 2

    .line 5
    sget-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->OrangeAccent:J

    return-wide v0
.end method

.method public static final getOrangeAccentDark()J
    .locals 2

    .line 6
    sget-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->OrangeAccentDark:J

    return-wide v0
.end method

.method public static final getOrangeAccentLight()J
    .locals 2

    .line 7
    sget-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->OrangeAccentLight:J

    return-wide v0
.end method

.method public static final getSurfaceCard()J
    .locals 2

    .line 9
    sget-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->SurfaceCard:J

    return-wide v0
.end method

.method public static final getSurfaceDark()J
    .locals 2

    .line 8
    sget-wide v0, Lcom/miniaa/launcher/ui/theme/ColorKt;->SurfaceDark:J

    return-wide v0
.end method
