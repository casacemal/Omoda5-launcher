.class public interface abstract Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessageOrBuilder;
.super Ljava/lang/Object;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SecureMessageOrBuilder"
.end annotation


# virtual methods
.method public abstract getHeaderAndBody()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSignature()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasHeaderAndBody()Z
.end method

.method public abstract hasSignature()Z
.end method
