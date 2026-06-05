.class Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;
.super Ljava/lang/Object;
.source "InstrumentClusterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/cluster/InstrumentClusterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextOwner"
.end annotation


# instance fields
.field final pid:I

.field final uid:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput p1, p0, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->uid:I

    .line 277
    iput p2, p0, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->pid:I

    .line 278
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 287
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 288
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 289
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    .line 290
    .local v2, "that":Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;
    iget v3, p0, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->uid:I

    iget v4, v2, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->uid:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->pid:I

    iget v4, v2, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->pid:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 288
    .end local v2    # "that":Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 295
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
