.class public final Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3504
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->access$4200()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3505
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;

    .line 3497
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearE()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;
    .locals 1

    .line 3577
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->copyOnWrite()V

    .line 3578
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->access$4600(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)V

    .line 3579
    return-object p0
.end method

.method public clearN()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;
    .locals 1

    .line 3548
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->copyOnWrite()V

    .line 3549
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->access$4400(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)V

    .line 3550
    return-object p0
.end method

.method public getE()I
    .locals 1

    .line 3563
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->getE()I

    move-result v0

    return v0
.end method

.method public getN()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3526
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->getN()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasE()Z
    .locals 1

    .line 3557
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->hasE()Z

    move-result v0

    return v0
.end method

.method public hasN()Z
    .locals 1

    .line 3516
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->hasN()Z

    move-result v0

    return v0
.end method

.method public setE(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 3569
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->copyOnWrite()V

    .line 3570
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->access$4500(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;I)V

    .line 3571
    return-object p0
.end method

.method public setN(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3536
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->copyOnWrite()V

    .line 3537
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;->access$4300(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;Lcom/google/protobuf/ByteString;)V

    .line 3538
    return-object p0
.end method
