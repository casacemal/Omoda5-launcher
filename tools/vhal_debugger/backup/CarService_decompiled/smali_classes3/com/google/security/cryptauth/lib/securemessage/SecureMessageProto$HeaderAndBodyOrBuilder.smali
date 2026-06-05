.class public interface abstract Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyOrBuilder;
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
    name = "HeaderAndBodyOrBuilder"
.end annotation


# virtual methods
.method public abstract getBody()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
.end method

.method public abstract hasBody()Z
.end method

.method public abstract hasHeader()Z
.end method
