.class public interface abstract Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessageOrBuilder;
.super Ljava/lang/Object;
.source "BLEMessageProto.java"

# interfaces
.implements Lcom/android/car/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BLEStreamProtos/BLEMessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BLEMessageOrBuilder"
.end annotation


# virtual methods
.method public abstract getIsPayloadEncrypted()Z
.end method

.method public abstract getOperation()Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
.end method

.method public abstract getOperationValue()I
.end method

.method public abstract getPacketNumber()I
.end method

.method public abstract getPayload()Lcom/android/car/protobuf/ByteString;
.end method

.method public abstract getTotalPackets()I
.end method

.method public abstract getVersion()I
.end method
