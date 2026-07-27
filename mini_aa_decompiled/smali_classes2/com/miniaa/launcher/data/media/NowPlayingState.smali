.class public final Lcom/miniaa/launcher/data/media/NowPlayingState;
.super Ljava/lang/Object;
.source "MediaSessionRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\"\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001By\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\'\u001a\u00020\tH\u00c6\u0003J\t\u0010(\u001a\u00020\u000bH\u00c6\u0003J\t\u0010)\u001a\u00020\u000bH\u00c6\u0003J\t\u0010*\u001a\u00020\u000bH\u00c6\u0003J\t\u0010+\u001a\u00020\u000fH\u00c6\u0003J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\tH\u00c6\u0003J{\u0010.\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\tH\u00c6\u0001J\u0013\u0010/\u001a\u00020\t2\u0008\u00100\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00101\u001a\u000202H\u00d6\u0001J\t\u00103\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u001aR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001cR\u0011\u0010\r\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001cR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0015R\u0011\u0010\u0011\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001a\u00a8\u00064"
    }
    d2 = {
        "Lcom/miniaa/launcher/data/media/NowPlayingState;",
        "",
        "title",
        "",
        "artist",
        "albumArtUri",
        "albumArtBitmap",
        "Landroid/graphics/Bitmap;",
        "isPlaying",
        "",
        "position",
        "",
        "duration",
        "lastPositionUpdateTime",
        "playbackSpeed",
        "",
        "packageName",
        "hasPermission",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;Z)V",
        "getTitle",
        "()Ljava/lang/String;",
        "getArtist",
        "getAlbumArtUri",
        "getAlbumArtBitmap",
        "()Landroid/graphics/Bitmap;",
        "()Z",
        "getPosition",
        "()J",
        "getDuration",
        "getLastPositionUpdateTime",
        "getPlaybackSpeed",
        "()F",
        "getPackageName",
        "getHasPermission",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final albumArtBitmap:Landroid/graphics/Bitmap;

.field private final albumArtUri:Ljava/lang/String;

.field private final artist:Ljava/lang/String;

.field private final duration:J

.field private final hasPermission:Z

.field private final isPlaying:Z

.field private final lastPositionUpdateTime:J

.field private final packageName:Ljava/lang/String;

.field private final playbackSpeed:F

.field private final position:J

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    const/16 v15, 0x7ff

    const/16 v16, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/miniaa/launcher/data/media/NowPlayingState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;Z)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artist"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->title:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->artist:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->albumArtUri:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->albumArtBitmap:Landroid/graphics/Bitmap;

    .line 23
    iput-boolean p5, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->isPlaying:Z

    .line 24
    iput-wide p6, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->position:J

    .line 25
    iput-wide p8, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->duration:J

    .line 26
    iput-wide p10, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->lastPositionUpdateTime:J

    .line 27
    iput p12, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->playbackSpeed:F

    .line 28
    iput-object p13, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->packageName:Ljava/lang/String;

    .line 29
    iput-boolean p14, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->hasPermission:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    .line 18
    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move-object v4, v5

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_5

    move-wide v11, v9

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-wide v13, v9

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p8

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    goto :goto_7

    :cond_7
    move-wide/from16 v9, p10

    :goto_7
    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_8

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_8
    move/from16 v8, p12

    :goto_8
    and-int/lit16 v15, v0, 0x200

    if-eqz v15, :cond_9

    goto :goto_9

    :cond_9
    move-object/from16 v2, p13

    :goto_9
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v7, p14

    :goto_a
    move-object/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-wide/from16 p6, v11

    move-wide/from16 p8, v13

    move-wide/from16 p10, v9

    move/from16 p12, v8

    move-object/from16 p13, v2

    move/from16 p14, v7

    invoke-direct/range {p0 .. p14}, Lcom/miniaa/launcher/data/media/NowPlayingState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/miniaa/launcher/data/media/NowPlayingState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;ZILjava/lang/Object;)Lcom/miniaa/launcher/data/media/NowPlayingState;
    .locals 15

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/miniaa/launcher/data/media/NowPlayingState;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/miniaa/launcher/data/media/NowPlayingState;->artist:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/miniaa/launcher/data/media/NowPlayingState;->albumArtUri:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/miniaa/launcher/data/media/NowPlayingState;->albumArtBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/miniaa/launcher/data/media/NowPlayingState;->isPlaying:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-wide v7, v0, Lcom/miniaa/launcher/data/media/NowPlayingState;->position:J

    goto :goto_5

    :cond_5
    move-wide/from16 v7, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-wide v9, v0, Lcom/miniaa/launcher/data/media/NowPlayingState;->duration:J

    goto :goto_6

    :cond_6
    move-wide/from16 v9, p8

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-wide v11, v0, Lcom/miniaa/launcher/data/media/NowPlayingState;->lastPositionUpdateTime:J

    goto :goto_7

    :cond_7
    move-wide/from16 v11, p10

    :goto_7
    and-int/lit16 v13, v1, 0x100

    if-eqz v13, :cond_8

    iget v13, v0, Lcom/miniaa/launcher/data/media/NowPlayingState;->playbackSpeed:F

    goto :goto_8

    :cond_8
    move/from16 v13, p12

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    iget-object v14, v0, Lcom/miniaa/launcher/data/media/NowPlayingState;->packageName:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/miniaa/launcher/data/media/NowPlayingState;->hasPermission:Z

    goto :goto_a

    :cond_a
    move/from16 v1, p14

    :goto_a
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-wide/from16 p6, v7

    move-wide/from16 p8, v9

    move-wide/from16 p10, v11

    move/from16 p12, v13

    move-object/from16 p13, v14

    move/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lcom/miniaa/launcher/data/media/NowPlayingState;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;Z)Lcom/miniaa/launcher/data/media/NowPlayingState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->hasPermission:Z

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->albumArtUri:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->albumArtBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->isPlaying:Z

    return p0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->position:J

    return-wide v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->duration:J

    return-wide v0
.end method

.method public final component8()J
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->lastPositionUpdateTime:J

    return-wide v0
.end method

.method public final component9()F
    .locals 0

    iget p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->playbackSpeed:F

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;Z)Lcom/miniaa/launcher/data/media/NowPlayingState;
    .locals 16

    const-string v0, "title"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artist"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miniaa/launcher/data/media/NowPlayingState;

    move-object v1, v0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move/from16 v13, p12

    move/from16 v15, p14

    invoke-direct/range {v1 .. v15}, Lcom/miniaa/launcher/data/media/NowPlayingState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miniaa/launcher/data/media/NowPlayingState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miniaa/launcher/data/media/NowPlayingState;

    iget-object v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/miniaa/launcher/data/media/NowPlayingState;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->artist:Ljava/lang/String;

    iget-object v3, p1, Lcom/miniaa/launcher/data/media/NowPlayingState;->artist:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->albumArtUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/miniaa/launcher/data/media/NowPlayingState;->albumArtUri:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->albumArtBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/miniaa/launcher/data/media/NowPlayingState;->albumArtBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->isPlaying:Z

    iget-boolean v3, p1, Lcom/miniaa/launcher/data/media/NowPlayingState;->isPlaying:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->position:J

    iget-wide v5, p1, Lcom/miniaa/launcher/data/media/NowPlayingState;->position:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->duration:J

    iget-wide v5, p1, Lcom/miniaa/launcher/data/media/NowPlayingState;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->lastPositionUpdateTime:J

    iget-wide v5, p1, Lcom/miniaa/launcher/data/media/NowPlayingState;->lastPositionUpdateTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->playbackSpeed:F

    iget v3, p1, Lcom/miniaa/launcher/data/media/NowPlayingState;->playbackSpeed:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/miniaa/launcher/data/media/NowPlayingState;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-boolean p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->hasPermission:Z

    iget-boolean p1, p1, Lcom/miniaa/launcher/data/media/NowPlayingState;->hasPermission:Z

    if-eq p0, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAlbumArtBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->albumArtBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getAlbumArtUri()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->albumArtUri:Ljava/lang/String;

    return-object p0
.end method

.method public final getArtist()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public final getDuration()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->duration:J

    return-wide v0
.end method

.method public final getHasPermission()Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->hasPermission:Z

    return p0
.end method

.method public final getLastPositionUpdateTime()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->lastPositionUpdateTime:J

    return-wide v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlaybackSpeed()F
    .locals 0

    .line 27
    iget p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->playbackSpeed:F

    return p0
.end method

.method public final getPosition()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->position:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->title:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->artist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->albumArtUri:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->albumArtBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->isPlaying:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->position:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->lastPositionUpdateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->playbackSpeed:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->hasPermission:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isPlaying()Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->isPlaying:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->artist:Ljava/lang/String;

    iget-object v2, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->albumArtUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->albumArtBitmap:Landroid/graphics/Bitmap;

    iget-boolean v4, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->isPlaying:Z

    iget-wide v5, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->position:J

    iget-wide v7, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->duration:J

    iget-wide v9, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->lastPositionUpdateTime:J

    iget v11, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->playbackSpeed:F

    iget-object v12, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->packageName:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/miniaa/launcher/data/media/NowPlayingState;->hasPermission:Z

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "NowPlayingState(title="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ", artist="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumArtUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumArtBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastPositionUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playbackSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
