.class public interface abstract Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitmentOrBuilder;
.super Ljava/lang/Object;
.source "UkeyProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CipherCommitmentOrBuilder"
.end annotation


# virtual methods
.method public abstract getCommitment()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getHandshakeCipher()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;
.end method

.method public abstract hasCommitment()Z
.end method

.method public abstract hasHandshakeCipher()Z
.end method
