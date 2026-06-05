.class public interface abstract Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInitOrBuilder;
.super Ljava/lang/Object;
.source "UkeyProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/UkeyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ukey2ClientInitOrBuilder"
.end annotation


# virtual methods
.method public abstract getCipherCommitments(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;
.end method

.method public abstract getCipherCommitmentsCount()I
.end method

.method public abstract getCipherCommitmentsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNextProtocol()Ljava/lang/String;
.end method

.method public abstract getNextProtocolBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRandom()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getVersion()I
.end method

.method public abstract hasNextProtocol()Z
.end method

.method public abstract hasRandom()Z
.end method

.method public abstract hasVersion()Z
.end method
