.class public final Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;
.super Ljava/lang/Object;
.source "StatusBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->IdleParticleCollision(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParticleState"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\u008a\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J@\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "com/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState",
        "",
        "offset",
        "",
        "alpha",
        "colorIndex",
        "",
        "speed",
        "yPhase",
        "<init>",
        "(FFIIF)V",
        "getOffset",
        "()F",
        "getAlpha",
        "getColorIndex",
        "()I",
        "getSpeed",
        "getYPhase",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(FFIIF)Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;",
        "equals",
        "",
        "other",
        "hashCode",
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


# instance fields
.field private final alpha:F

.field private final colorIndex:I

.field private final offset:F

.field private final speed:I

.field private final yPhase:F


# direct methods
.method public constructor <init>(FFIIF)V
    .locals 0

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->offset:F

    iput p2, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->alpha:F

    iput p3, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->colorIndex:I

    iput p4, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->speed:I

    iput p5, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->yPhase:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;FFIIFILjava/lang/Object;)Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->offset:F

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->alpha:F

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->colorIndex:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->speed:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->yPhase:F

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->copy(FFIIF)Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->offset:F

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->alpha:F

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->colorIndex:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->speed:I

    return p0
.end method

.method public final component5()F
    .locals 0

    iget p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->yPhase:F

    return p0
.end method

.method public final copy(FFIIF)Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;
    .locals 6

    new-instance p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;-><init>(FFIIF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;

    iget v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->offset:F

    iget v3, p1, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->offset:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->alpha:F

    iget v3, p1, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->alpha:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->colorIndex:I

    iget v3, p1, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->colorIndex:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->speed:I

    iget v3, p1, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->speed:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->yPhase:F

    iget p1, p1, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->yPhase:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAlpha()F
    .locals 0

    .line 926
    iget p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->alpha:F

    return p0
.end method

.method public final getColorIndex()I
    .locals 0

    .line 926
    iget p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->colorIndex:I

    return p0
.end method

.method public final getOffset()F
    .locals 0

    .line 926
    iget p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->offset:F

    return p0
.end method

.method public final getSpeed()I
    .locals 0

    .line 926
    iget p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->speed:I

    return p0
.end method

.method public final getYPhase()F
    .locals 0

    .line 926
    iget p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->yPhase:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->offset:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->alpha:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->colorIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->speed:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->yPhase:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->offset:F

    iget v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->alpha:F

    iget v2, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->colorIndex:I

    iget v3, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->speed:I

    iget p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$IdleParticleCollision$ParticleState;->yPhase:F

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ParticleState(offset="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", alpha="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colorIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yPhase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
