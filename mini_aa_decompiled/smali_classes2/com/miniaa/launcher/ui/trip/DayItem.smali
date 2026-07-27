.class final Lcom/miniaa/launcher/ui/trip/DayItem;
.super Ljava/lang/Object;
.source "TripHistoryPanel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\tH\u00c6\u0003J1\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\t2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0012\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/miniaa/launcher/ui/trip/DayItem;",
        "",
        "dayStartMs",
        "",
        "dayOfMonth",
        "",
        "dayName",
        "",
        "isToday",
        "",
        "<init>",
        "(JILjava/lang/String;Z)V",
        "getDayStartMs",
        "()J",
        "getDayOfMonth",
        "()I",
        "getDayName",
        "()Ljava/lang/String;",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
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


# instance fields
.field private final dayName:Ljava/lang/String;

.field private final dayOfMonth:I

.field private final dayStartMs:J

.field private final isToday:Z


# direct methods
.method public constructor <init>(JILjava/lang/String;Z)V
    .locals 1

    const-string v0, "dayName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-wide p1, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayStartMs:J

    .line 368
    iput p3, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayOfMonth:I

    .line 369
    iput-object p4, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayName:Ljava/lang/String;

    .line 370
    iput-boolean p5, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->isToday:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/miniaa/launcher/ui/trip/DayItem;JILjava/lang/String;ZILjava/lang/Object;)Lcom/miniaa/launcher/ui/trip/DayItem;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayStartMs:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget p3, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayOfMonth:I

    :cond_1
    move v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayName:Ljava/lang/String;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    iget-boolean p5, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->isToday:Z

    :cond_3
    move v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miniaa/launcher/ui/trip/DayItem;->copy(JILjava/lang/String;Z)Lcom/miniaa/launcher/ui/trip/DayItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayStartMs:J

    return-wide v0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayOfMonth:I

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayName:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->isToday:Z

    return p0
.end method

.method public final copy(JILjava/lang/String;Z)Lcom/miniaa/launcher/ui/trip/DayItem;
    .locals 6

    const-string p0, "dayName"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/miniaa/launcher/ui/trip/DayItem;

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miniaa/launcher/ui/trip/DayItem;-><init>(JILjava/lang/String;Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miniaa/launcher/ui/trip/DayItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miniaa/launcher/ui/trip/DayItem;

    iget-wide v3, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayStartMs:J

    iget-wide v5, p1, Lcom/miniaa/launcher/ui/trip/DayItem;->dayStartMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayOfMonth:I

    iget v3, p1, Lcom/miniaa/launcher/ui/trip/DayItem;->dayOfMonth:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/miniaa/launcher/ui/trip/DayItem;->dayName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->isToday:Z

    iget-boolean p1, p1, Lcom/miniaa/launcher/ui/trip/DayItem;->isToday:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDayName()Ljava/lang/String;
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDayOfMonth()I
    .locals 0

    .line 368
    iget p0, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayOfMonth:I

    return p0
.end method

.method public final getDayStartMs()J
    .locals 2

    .line 367
    iget-wide v0, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayStartMs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayStartMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayOfMonth:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->isToday:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isToday()Z
    .locals 0

    .line 370
    iget-boolean p0, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->isToday:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayStartMs:J

    iget v2, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayOfMonth:I

    iget-object v3, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->dayName:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/miniaa/launcher/ui/trip/DayItem;->isToday:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DayItem(dayStartMs="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dayOfMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isToday="

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
