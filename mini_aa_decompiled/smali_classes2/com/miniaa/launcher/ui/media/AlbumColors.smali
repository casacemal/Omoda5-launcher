.class public final Lcom/miniaa/launcher/ui/media/AlbumColors;
.super Ljava/lang/Object;
.source "MediaViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\r\u001a\u00020\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\tJ\u0010\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\tJ\u0010\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\tJ.\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0013\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u000b\u0010\tR\u0013\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/miniaa/launcher/ui/media/AlbumColors;",
        "",
        "dominant",
        "Landroidx/compose/ui/graphics/Color;",
        "darkMuted",
        "muted",
        "<init>",
        "(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getDominant-0d7_KjU",
        "()J",
        "J",
        "getDarkMuted-0d7_KjU",
        "getMuted-0d7_KjU",
        "component1",
        "component1-0d7_KjU",
        "component2",
        "component2-0d7_KjU",
        "component3",
        "component3-0d7_KjU",
        "copy",
        "copy-ysEtTa8",
        "(JJJ)Lcom/miniaa/launcher/ui/media/AlbumColors;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "app_systemRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final darkMuted:J

.field private final dominant:J

.field private final muted:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(JJJ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->dominant:J

    .line 24
    iput-wide p3, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->darkMuted:J

    .line 25
    iput-wide p5, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->muted:J

    return-void
.end method

.method public synthetic constructor <init>(JJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    const-wide v0, 0xff242424L

    .line 23
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_1

    const-wide v2, 0xff1a1a1aL

    .line 24
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    move-wide v2, p3

    :goto_1
    and-int/lit8 v4, p7, 0x4

    if-eqz v4, :cond_2

    const-wide v4, 0xff2a2a2aL

    .line 25
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v4

    goto :goto_2

    :cond_2
    move-wide v4, p5

    :goto_2
    const/4 v6, 0x0

    move-wide p1, v0

    move-wide p3, v2

    move-wide p5, v4

    move-object p7, v6

    .line 22
    invoke-direct/range {p0 .. p7}, Lcom/miniaa/launcher/ui/media/AlbumColors;-><init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miniaa/launcher/ui/media/AlbumColors;-><init>(JJJ)V

    return-void
.end method

.method public static synthetic copy-ysEtTa8$default(Lcom/miniaa/launcher/ui/media/AlbumColors;JJJILjava/lang/Object;)Lcom/miniaa/launcher/ui/media/AlbumColors;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->dominant:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->darkMuted:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-wide p5, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->muted:J

    :cond_2
    move-wide v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miniaa/launcher/ui/media/AlbumColors;->copy-ysEtTa8(JJJ)Lcom/miniaa/launcher/ui/media/AlbumColors;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->dominant:J

    return-wide v0
.end method

.method public final component2-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->darkMuted:J

    return-wide v0
.end method

.method public final component3-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->muted:J

    return-wide v0
.end method

.method public final copy-ysEtTa8(JJJ)Lcom/miniaa/launcher/ui/media/AlbumColors;
    .locals 8

    new-instance p0, Lcom/miniaa/launcher/ui/media/AlbumColors;

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/miniaa/launcher/ui/media/AlbumColors;-><init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miniaa/launcher/ui/media/AlbumColors;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miniaa/launcher/ui/media/AlbumColors;

    iget-wide v3, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->dominant:J

    iget-wide v5, p1, Lcom/miniaa/launcher/ui/media/AlbumColors;->dominant:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->darkMuted:J

    iget-wide v5, p1, Lcom/miniaa/launcher/ui/media/AlbumColors;->darkMuted:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->muted:J

    iget-wide p0, p1, Lcom/miniaa/launcher/ui/media/AlbumColors;->muted:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDarkMuted-0d7_KjU()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->darkMuted:J

    return-wide v0
.end method

.method public final getDominant-0d7_KjU()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->dominant:J

    return-wide v0
.end method

.method public final getMuted-0d7_KjU()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->muted:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->dominant:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->darkMuted:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->muted:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->dominant:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->darkMuted:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/miniaa/launcher/ui/media/AlbumColors;->muted:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AlbumColors(dominant="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", darkMuted="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", muted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
