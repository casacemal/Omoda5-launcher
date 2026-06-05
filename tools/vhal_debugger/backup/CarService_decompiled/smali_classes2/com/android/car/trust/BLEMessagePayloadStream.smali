.class Lcom/android/car/trust/BLEMessagePayloadStream;
.super Ljava/lang/Object;
.source "BLEMessagePayloadStream.java"


# instance fields
.field private mIsComplete:Z

.field private mPendingData:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/car/trust/BLEMessagePayloadStream;->mPendingData:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public isComplete()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/android/car/trust/BLEMessagePayloadStream;->mIsComplete:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/car/trust/BLEMessagePayloadStream;->mPendingData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/trust/BLEMessagePayloadStream;->mIsComplete:Z

    .line 40
    return-void
.end method

.method public toByteArray()[B
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/car/trust/BLEMessagePayloadStream;->mPendingData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/android/car/trust/BLEMessagePayloadStream;->mPendingData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->getPayload()Lcom/android/car/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/car/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 49
    invoke-virtual {p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->getPacketNumber()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->getTotalPackets()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/car/trust/BLEMessagePayloadStream;->mIsComplete:Z

    .line 50
    return-void
.end method
