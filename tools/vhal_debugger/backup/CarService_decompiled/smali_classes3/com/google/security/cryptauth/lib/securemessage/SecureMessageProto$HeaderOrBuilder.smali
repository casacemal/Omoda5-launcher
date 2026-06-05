.class public interface abstract Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderOrBuilder;
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
    name = "HeaderOrBuilder"
.end annotation


# virtual methods
.method public abstract getAssociatedDataLength()I
.end method

.method public abstract getDecryptionKeyId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getEncryptionScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;
.end method

.method public abstract getIv()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPublicMetadata()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSignatureScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;
.end method

.method public abstract getVerificationKeyId()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAssociatedDataLength()Z
.end method

.method public abstract hasDecryptionKeyId()Z
.end method

.method public abstract hasEncryptionScheme()Z
.end method

.method public abstract hasIv()Z
.end method

.method public abstract hasPublicMetadata()Z
.end method

.method public abstract hasSignatureScheme()Z
.end method

.method public abstract hasVerificationKeyId()Z
.end method
