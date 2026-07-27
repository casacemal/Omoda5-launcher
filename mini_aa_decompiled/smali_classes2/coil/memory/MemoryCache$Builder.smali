.class public final Lcoil/memory/MemoryCache$Builder;
.super Ljava/lang/Object;
.source "MemoryCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/memory/MemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMemoryCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryCache.kt\ncoil/memory/MemoryCache$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,216:1\n1#2:217\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0008\u0001\u0010\r\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000bJ\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcoil/memory/MemoryCache$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "maxSizePercent",
        "",
        "maxSizeBytes",
        "",
        "strongReferencesEnabled",
        "",
        "weakReferencesEnabled",
        "percent",
        "size",
        "enable",
        "build",
        "Lcoil/memory/MemoryCache;",
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


# instance fields
.field private final context:Landroid/content/Context;

.field private maxSizeBytes:I

.field private maxSizePercent:D

.field private strongReferencesEnabled:Z

.field private weakReferencesEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/memory/MemoryCache$Builder;->context:Landroid/content/Context;

    .line 148
    invoke-static {p1}, Lcoil/util/-Utils;->defaultMemoryCacheSizePercent(Landroid/content/Context;)D

    move-result-wide v0

    iput-wide v0, p0, Lcoil/memory/MemoryCache$Builder;->maxSizePercent:D

    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcoil/memory/MemoryCache$Builder;->strongReferencesEnabled:Z

    .line 151
    iput-boolean p1, p0, Lcoil/memory/MemoryCache$Builder;->weakReferencesEnabled:Z

    return-void
.end method


# virtual methods
.method public final build()Lcoil/memory/MemoryCache;
    .locals 5

    .line 193
    iget-boolean v0, p0, Lcoil/memory/MemoryCache$Builder;->weakReferencesEnabled:Z

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lcoil/memory/RealWeakMemoryCache;

    invoke-direct {v0}, Lcoil/memory/RealWeakMemoryCache;-><init>()V

    check-cast v0, Lcoil/memory/WeakMemoryCache;

    goto :goto_0

    .line 196
    :cond_0
    new-instance v0, Lcoil/memory/EmptyWeakMemoryCache;

    invoke-direct {v0}, Lcoil/memory/EmptyWeakMemoryCache;-><init>()V

    check-cast v0, Lcoil/memory/WeakMemoryCache;

    .line 198
    :goto_0
    iget-boolean v1, p0, Lcoil/memory/MemoryCache$Builder;->strongReferencesEnabled:Z

    if-eqz v1, :cond_3

    .line 199
    iget-wide v1, p0, Lcoil/memory/MemoryCache$Builder;->maxSizePercent:D

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_1

    .line 200
    iget-object p0, p0, Lcoil/memory/MemoryCache$Builder;->context:Landroid/content/Context;

    invoke-static {p0, v1, v2}, Lcoil/util/-Utils;->calculateMemoryCacheSize(Landroid/content/Context;D)I

    move-result p0

    goto :goto_1

    .line 202
    :cond_1
    iget p0, p0, Lcoil/memory/MemoryCache$Builder;->maxSizeBytes:I

    :goto_1
    if-lez p0, :cond_2

    .line 205
    new-instance v1, Lcoil/memory/RealStrongMemoryCache;

    invoke-direct {v1, p0, v0}, Lcoil/memory/RealStrongMemoryCache;-><init>(ILcoil/memory/WeakMemoryCache;)V

    check-cast v1, Lcoil/memory/StrongMemoryCache;

    goto :goto_2

    .line 207
    :cond_2
    new-instance p0, Lcoil/memory/EmptyStrongMemoryCache;

    invoke-direct {p0, v0}, Lcoil/memory/EmptyStrongMemoryCache;-><init>(Lcoil/memory/WeakMemoryCache;)V

    move-object v1, p0

    check-cast v1, Lcoil/memory/StrongMemoryCache;

    goto :goto_2

    .line 210
    :cond_3
    new-instance p0, Lcoil/memory/EmptyStrongMemoryCache;

    invoke-direct {p0, v0}, Lcoil/memory/EmptyStrongMemoryCache;-><init>(Lcoil/memory/WeakMemoryCache;)V

    move-object v1, p0

    check-cast v1, Lcoil/memory/StrongMemoryCache;

    .line 212
    :goto_2
    new-instance p0, Lcoil/memory/RealMemoryCache;

    invoke-direct {p0, v1, v0}, Lcoil/memory/RealMemoryCache;-><init>(Lcoil/memory/StrongMemoryCache;Lcoil/memory/WeakMemoryCache;)V

    check-cast p0, Lcoil/memory/MemoryCache;

    return-object p0
.end method

.method public final maxSizeBytes(I)Lcoil/memory/MemoryCache$Builder;
    .locals 2

    .line 166
    move-object v0, p0

    check-cast v0, Lcoil/memory/MemoryCache$Builder;

    if-ltz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 168
    iput-wide v0, p0, Lcoil/memory/MemoryCache$Builder;->maxSizePercent:D

    .line 169
    iput p1, p0, Lcoil/memory/MemoryCache$Builder;->maxSizeBytes:I

    return-object p0

    .line 167
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size must be >= 0."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final maxSizePercent(D)Lcoil/memory/MemoryCache$Builder;
    .locals 2

    .line 157
    move-object v0, p0

    check-cast v0, Lcoil/memory/MemoryCache$Builder;

    const-wide/16 v0, 0x0

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lcoil/memory/MemoryCache$Builder;->maxSizeBytes:I

    .line 160
    iput-wide p1, p0, Lcoil/memory/MemoryCache$Builder;->maxSizePercent:D

    return-object p0

    .line 158
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size must be in the range [0.0, 1.0]."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final strongReferencesEnabled(Z)Lcoil/memory/MemoryCache$Builder;
    .locals 1

    .line 175
    move-object v0, p0

    check-cast v0, Lcoil/memory/MemoryCache$Builder;

    .line 176
    iput-boolean p1, p0, Lcoil/memory/MemoryCache$Builder;->strongReferencesEnabled:Z

    return-object p0
.end method

.method public final weakReferencesEnabled(Z)Lcoil/memory/MemoryCache$Builder;
    .locals 1

    .line 185
    move-object v0, p0

    check-cast v0, Lcoil/memory/MemoryCache$Builder;

    .line 186
    iput-boolean p1, p0, Lcoil/memory/MemoryCache$Builder;->weakReferencesEnabled:Z

    return-object p0
.end method
