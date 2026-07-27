.class public final Lcom/miniaa/launcher/data/trip/TripSummary;
.super Ljava/lang/Object;
.source "TripTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u001c\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001Ba\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0007H\u00c6\u0003J\t\u0010!\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0007H\u00c6\u0003J\t\u0010#\u001a\u00020\u000bH\u00c6\u0003J\t\u0010$\u001a\u00020\rH\u00c6\u0003J\t\u0010%\u001a\u00020\rH\u00c6\u0003Jc\u0010&\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\rH\u00c6\u0001J\u0013\u0010\'\u001a\u00020\u000b2\u0008\u0010(\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010)\u001a\u00020*H\u00d6\u0001J\t\u0010+\u001a\u00020\rH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0016R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0019R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001b\u00a8\u0006,"
    }
    d2 = {
        "Lcom/miniaa/launcher/data/trip/TripSummary;",
        "",
        "startTimeMs",
        "",
        "endTimeMs",
        "durationMs",
        "distanceKm",
        "",
        "avgSpeedKmh",
        "maxSpeedKmh",
        "isActive",
        "",
        "startLocation",
        "",
        "endLocation",
        "<init>",
        "(JJJDDDZLjava/lang/String;Ljava/lang/String;)V",
        "getStartTimeMs",
        "()J",
        "getEndTimeMs",
        "getDurationMs",
        "getDistanceKm",
        "()D",
        "getAvgSpeedKmh",
        "getMaxSpeedKmh",
        "()Z",
        "getStartLocation",
        "()Ljava/lang/String;",
        "getEndLocation",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
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
.field public static final $stable:I


# instance fields
.field private final avgSpeedKmh:D

.field private final distanceKm:D

.field private final durationMs:J

.field private final endLocation:Ljava/lang/String;

.field private final endTimeMs:J

.field private final isActive:Z

.field private final maxSpeedKmh:D

.field private final startLocation:Ljava/lang/String;

.field private final startTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    const/16 v16, 0x1ff

    const/16 v17, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJJDDDZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object/from16 v1, p14

    move-object/from16 v2, p15

    const-string v3, "startLocation"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "endLocation"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v3, p1

    .line 15
    iput-wide v3, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->startTimeMs:J

    move-wide v3, p3

    .line 16
    iput-wide v3, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->endTimeMs:J

    move-wide v3, p5

    .line 17
    iput-wide v3, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->durationMs:J

    move-wide v3, p7

    .line 18
    iput-wide v3, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->distanceKm:D

    move-wide v3, p9

    .line 19
    iput-wide v3, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->avgSpeedKmh:D

    move-wide/from16 v3, p11

    .line 20
    iput-wide v3, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->maxSpeedKmh:D

    move/from16 v3, p13

    .line 21
    iput-boolean v3, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->isActive:Z

    .line 22
    iput-object v1, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->startLocation:Ljava/lang/String;

    .line 23
    iput-object v2, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->endLocation:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JJJDDDZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-wide v6, v2

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-wide/from16 v2, p5

    :goto_2
    and-int/lit8 v1, v0, 0x8

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_3

    move-wide v10, v8

    goto :goto_3

    :cond_3
    move-wide/from16 v10, p7

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move-wide v12, v8

    goto :goto_4

    :cond_4
    move-wide/from16 v12, p9

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    move-wide/from16 v8, p11

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    move/from16 v1, p13

    :goto_6
    and-int/lit16 v14, v0, 0x80

    .line 14
    const-string v15, ""

    if-eqz v14, :cond_7

    move-object v14, v15

    goto :goto_7

    :cond_7
    move-object/from16 v14, p14

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v15, p15

    :goto_8
    move-wide/from16 p1, v4

    move-wide/from16 p3, v6

    move-wide/from16 p5, v2

    move-wide/from16 p7, v10

    move-wide/from16 p9, v12

    move-wide/from16 p11, v8

    move/from16 p13, v1

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    invoke-direct/range {p0 .. p15}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/miniaa/launcher/data/trip/TripSummary;JJJDDDZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/miniaa/launcher/data/trip/TripSummary;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->startTimeMs:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->endTimeMs:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-wide v6, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->durationMs:J

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p5

    :goto_2
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_3

    iget-wide v8, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->distanceKm:D

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p7

    :goto_3
    and-int/lit8 v10, v1, 0x10

    if-eqz v10, :cond_4

    iget-wide v10, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->avgSpeedKmh:D

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p9

    :goto_4
    and-int/lit8 v12, v1, 0x20

    if-eqz v12, :cond_5

    iget-wide v12, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->maxSpeedKmh:D

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p11

    :goto_5
    and-int/lit8 v14, v1, 0x40

    if-eqz v14, :cond_6

    iget-boolean v14, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->isActive:Z

    goto :goto_6

    :cond_6
    move/from16 v14, p13

    :goto_6
    and-int/lit16 v15, v1, 0x80

    if-eqz v15, :cond_7

    iget-object v15, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->startLocation:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v15, p14

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->endLocation:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p15

    :goto_8
    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move-wide/from16 p5, v6

    move-wide/from16 p7, v8

    move-wide/from16 p9, v10

    move-wide/from16 p11, v12

    move/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v1

    invoke-virtual/range {p0 .. p15}, Lcom/miniaa/launcher/data/trip/TripSummary;->copy(JJJDDDZLjava/lang/String;Ljava/lang/String;)Lcom/miniaa/launcher/data/trip/TripSummary;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->startTimeMs:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->endTimeMs:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->durationMs:J

    return-wide v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->distanceKm:D

    return-wide v0
.end method

.method public final component5()D
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->avgSpeedKmh:D

    return-wide v0
.end method

.method public final component6()D
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->maxSpeedKmh:D

    return-wide v0
.end method

.method public final component7()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->isActive:Z

    return p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->startLocation:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->endLocation:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(JJJDDDZLjava/lang/String;Ljava/lang/String;)Lcom/miniaa/launcher/data/trip/TripSummary;
    .locals 17

    const-string v0, "startLocation"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endLocation"

    move-object/from16 v14, p15

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miniaa/launcher/data/trip/TripSummary;

    move-object v1, v0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move/from16 v14, p13

    move-object/from16 v16, p15

    invoke-direct/range {v1 .. v16}, Lcom/miniaa/launcher/data/trip/TripSummary;-><init>(JJJDDDZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miniaa/launcher/data/trip/TripSummary;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miniaa/launcher/data/trip/TripSummary;

    iget-wide v3, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->startTimeMs:J

    iget-wide v5, p1, Lcom/miniaa/launcher/data/trip/TripSummary;->startTimeMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->endTimeMs:J

    iget-wide v5, p1, Lcom/miniaa/launcher/data/trip/TripSummary;->endTimeMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->durationMs:J

    iget-wide v5, p1, Lcom/miniaa/launcher/data/trip/TripSummary;->durationMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->distanceKm:D

    iget-wide v5, p1, Lcom/miniaa/launcher/data/trip/TripSummary;->distanceKm:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->avgSpeedKmh:D

    iget-wide v5, p1, Lcom/miniaa/launcher/data/trip/TripSummary;->avgSpeedKmh:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->maxSpeedKmh:D

    iget-wide v5, p1, Lcom/miniaa/launcher/data/trip/TripSummary;->maxSpeedKmh:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->isActive:Z

    iget-boolean v3, p1, Lcom/miniaa/launcher/data/trip/TripSummary;->isActive:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->startLocation:Ljava/lang/String;

    iget-object v3, p1, Lcom/miniaa/launcher/data/trip/TripSummary;->startLocation:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->endLocation:Ljava/lang/String;

    iget-object p1, p1, Lcom/miniaa/launcher/data/trip/TripSummary;->endLocation:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAvgSpeedKmh()D
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->avgSpeedKmh:D

    return-wide v0
.end method

.method public final getDistanceKm()D
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->distanceKm:D

    return-wide v0
.end method

.method public final getDurationMs()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->durationMs:J

    return-wide v0
.end method

.method public final getEndLocation()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->endLocation:Ljava/lang/String;

    return-object p0
.end method

.method public final getEndTimeMs()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->endTimeMs:J

    return-wide v0
.end method

.method public final getMaxSpeedKmh()D
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->maxSpeedKmh:D

    return-wide v0
.end method

.method public final getStartLocation()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->startLocation:Ljava/lang/String;

    return-object p0
.end method

.method public final getStartTimeMs()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->startTimeMs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->startTimeMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->endTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->durationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->distanceKm:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->avgSpeedKmh:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->maxSpeedKmh:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->isActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->startLocation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->endLocation:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isActive()Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/miniaa/launcher/data/trip/TripSummary;->isActive:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->startTimeMs:J

    iget-wide v3, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->endTimeMs:J

    iget-wide v5, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->durationMs:J

    iget-wide v7, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->distanceKm:D

    iget-wide v9, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->avgSpeedKmh:D

    iget-wide v11, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->maxSpeedKmh:D

    iget-boolean v13, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->isActive:Z

    iget-object v14, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->startLocation:Ljava/lang/String;

    iget-object v0, v0, Lcom/miniaa/launcher/data/trip/TripSummary;->endLocation:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 p0, v0

    const-string v0, "TripSummary(startTimeMs="

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distanceKm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgSpeedKmh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSpeedKmh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
