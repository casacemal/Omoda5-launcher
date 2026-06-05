.class public final Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UkeyProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitmentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitmentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1608
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;->access$1300()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1609
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;

    .line 1601
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCommitment()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;
    .locals 1

    .line 1665
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->copyOnWrite()V

    .line 1666
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;->access$1700(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)V

    .line 1667
    return-object p0
.end method

.method public clearHandshakeCipher()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;
    .locals 1

    .line 1636
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->copyOnWrite()V

    .line 1637
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;->access$1500(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)V

    .line 1638
    return-object p0
.end method

.method public getCommitment()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1651
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;->getCommitment()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeCipher()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;
    .locals 1

    .line 1622
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;->getHandshakeCipher()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    move-result-object v0

    return-object v0
.end method

.method public hasCommitment()Z
    .locals 1

    .line 1645
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;->hasCommitment()Z

    move-result v0

    return v0
.end method

.method public hasHandshakeCipher()Z
    .locals 1

    .line 1616
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;->hasHandshakeCipher()Z

    move-result v0

    return v0
.end method

.method public setCommitment(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1657
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->copyOnWrite()V

    .line 1658
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;->access$1600(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;Lcom/google/protobuf/ByteString;)V

    .line 1659
    return-object p0
.end method

.method public setHandshakeCipher(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    .line 1628
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->copyOnWrite()V

    .line 1629
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;->access$1400(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;)V

    .line 1630
    return-object p0
.end method
