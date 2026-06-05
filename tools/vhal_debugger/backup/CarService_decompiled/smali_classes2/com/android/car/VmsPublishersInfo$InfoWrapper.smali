.class Lcom/android/car/VmsPublishersInfo$InfoWrapper;
.super Ljava/lang/Object;
.source "VmsPublishersInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/VmsPublishersInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InfoWrapper"
.end annotation


# instance fields
.field private final mInfo:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "info"    # [B

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/car/VmsPublishersInfo$InfoWrapper;->mInfo:[B

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 48
    instance-of v0, p1, Lcom/android/car/VmsPublishersInfo$InfoWrapper;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    return v0

    .line 51
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/car/VmsPublishersInfo$InfoWrapper;

    .line 52
    .local v0, "p":Lcom/android/car/VmsPublishersInfo$InfoWrapper;
    iget-object v1, p0, Lcom/android/car/VmsPublishersInfo$InfoWrapper;->mInfo:[B

    iget-object v2, v0, Lcom/android/car/VmsPublishersInfo$InfoWrapper;->mInfo:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public getInfo()[B
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/car/VmsPublishersInfo$InfoWrapper;->mInfo:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/car/VmsPublishersInfo$InfoWrapper;->mInfo:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
