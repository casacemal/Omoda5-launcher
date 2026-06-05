.class public final Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
.super Lcom/android/car/protobuf/GeneratedMessageLite$Builder;
.source "BLEMessageProto.java"

# interfaces
.implements Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;",
        "Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;",
        ">;",
        "Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 475
    invoke-static {}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->access$000()Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/car/protobuf/GeneratedMessageLite;)V

    .line 476
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/BLEStreamProtos/BLEMessageProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/BLEStreamProtos/BLEMessageProto$1;

    .line 468
    invoke-direct {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIsPayloadEncrypted()Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
    .locals 1

    .line 674
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->copyOnWrite()V

    .line 675
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->access$1100(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;)V

    .line 676
    return-object p0
.end method

.method public clearOperation()Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->copyOnWrite()V

    .line 567
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->access$500(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;)V

    .line 568
    return-object p0
.end method

.method public clearPacketNumber()Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
    .locals 1

    .line 604
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->copyOnWrite()V

    .line 605
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->access$700(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;)V

    .line 606
    return-object p0
.end method

.method public clearPayload()Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
    .locals 1

    .line 709
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->copyOnWrite()V

    .line 710
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->access$1300(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;)V

    .line 711
    return-object p0
.end method

.method public clearTotalPackets()Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->copyOnWrite()V

    .line 640
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->access$900(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;)V

    .line 641
    return-object p0
.end method

.method public clearVersion()Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
    .locals 1

    .line 509
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->copyOnWrite()V

    .line 510
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->access$200(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;)V

    .line 511
    return-object p0
.end method

.method public getIsPayloadEncrypted()Z
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->getIsPayloadEncrypted()Z

    move-result v0

    return v0
.end method

.method public getOperation()Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->getOperation()Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    move-result-object v0

    return-object v0
.end method

.method public getOperationValue()I
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->getOperationValue()I

    move-result v0

    return v0
.end method

.method public getPacketNumber()I
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->getPacketNumber()I

    move-result v0

    return v0
.end method

.method public getPayload()Lcom/android/car/protobuf/ByteString;
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->getPayload()Lcom/android/car/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPackets()I
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->getTotalPackets()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-virtual {v0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->getVersion()I

    move-result v0

    return v0
.end method

.method public setIsPayloadEncrypted(Z)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 662
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->copyOnWrite()V

    .line 663
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->access$1000(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;Z)V

    .line 664
    return-object p0
.end method

.method public setOperation(Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    .line 554
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->copyOnWrite()V

    .line 555
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->access$400(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;)V

    .line 556
    return-object p0
.end method

.method public setOperationValue(I)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 532
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->copyOnWrite()V

    .line 533
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->access$300(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;I)V

    .line 534
    return-object p0
.end method

.method public setPacketNumber(I)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 591
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->copyOnWrite()V

    .line 592
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->access$600(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;I)V

    .line 593
    return-object p0
.end method

.method public setPayload(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/car/protobuf/ByteString;

    .line 697
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->copyOnWrite()V

    .line 698
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->access$1200(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;Lcom/android/car/protobuf/ByteString;)V

    .line 699
    return-object p0
.end method

.method public setTotalPackets(I)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 627
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->copyOnWrite()V

    .line 628
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->access$800(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;I)V

    .line 629
    return-object p0
.end method

.method public setVersion(I)Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 497
    invoke-virtual {p0}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->copyOnWrite()V

    .line 498
    iget-object v0, p0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-static {v0, p1}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->access$100(Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;I)V

    .line 499
    return-object p0
.end method
