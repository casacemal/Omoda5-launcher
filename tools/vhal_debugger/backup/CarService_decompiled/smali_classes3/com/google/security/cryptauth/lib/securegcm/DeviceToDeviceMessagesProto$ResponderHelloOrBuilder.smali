.class public interface abstract Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$ResponderHelloOrBuilder;
.super Ljava/lang/Object;
.source "DeviceToDeviceMessagesProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponderHelloOrBuilder"
.end annotation


# virtual methods
.method public abstract getProtocolVersion()I
.end method

.method public abstract getPublicDhKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
.end method

.method public abstract hasProtocolVersion()Z
.end method

.method public abstract hasPublicDhKey()Z
.end method
