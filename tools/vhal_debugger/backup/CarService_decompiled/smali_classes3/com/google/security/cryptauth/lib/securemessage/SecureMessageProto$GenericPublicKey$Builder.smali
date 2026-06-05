.class public final Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4454
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->access$5200()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4455
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;

    .line 4447
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDh2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    .locals 1

    .line 4641
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->copyOnWrite()V

    .line 4642
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->access$6600(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V

    .line 4643
    return-object p0
.end method

.method public clearEcP256PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    .locals 1

    .line 4527
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->copyOnWrite()V

    .line 4528
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->access$5800(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V

    .line 4529
    return-object p0
.end method

.method public clearRsa2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    .locals 1

    .line 4572
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->copyOnWrite()V

    .line 4573
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->access$6200(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V

    .line 4574
    return-object p0
.end method

.method public clearType()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    .locals 1

    .line 4482
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->copyOnWrite()V

    .line 4483
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->access$5400(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V

    .line 4484
    return-object p0
.end method

.method public getDh2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;
    .locals 1

    .line 4595
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getDh2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getEcP256PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
    .locals 1

    .line 4497
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getEcP256PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getRsa2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
    .locals 1

    .line 4542
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getRsa2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;
    .locals 1

    .line 4468
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->getType()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    move-result-object v0

    return-object v0
.end method

.method public hasDh2048PublicKey()Z
    .locals 1

    .line 4585
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->hasDh2048PublicKey()Z

    move-result v0

    return v0
.end method

.method public hasEcP256PublicKey()Z
    .locals 1

    .line 4491
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->hasEcP256PublicKey()Z

    move-result v0

    return v0
.end method

.method public hasRsa2048PublicKey()Z
    .locals 1

    .line 4536
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->hasRsa2048PublicKey()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .line 4462
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->hasType()Z

    move-result v0

    return v0
.end method

.method public mergeDh2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    .line 4630
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->copyOnWrite()V

    .line 4631
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->access$6500(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;)V

    .line 4632
    return-object p0
.end method

.method public mergeEcP256PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 4520
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->copyOnWrite()V

    .line 4521
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->access$5700(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)V

    .line 4522
    return-object p0
.end method

.method public mergeRsa2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 4565
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->copyOnWrite()V

    .line 4566
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->access$6100(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)V

    .line 4567
    return-object p0
.end method

.method public setDh2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;

    .line 4618
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->copyOnWrite()V

    .line 4619
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->access$6400(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;)V

    .line 4620
    return-object p0
.end method

.method public setDh2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    .line 4605
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->copyOnWrite()V

    .line 4606
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->access$6300(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;)V

    .line 4607
    return-object p0
.end method

.method public setEcP256PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;

    .line 4512
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->copyOnWrite()V

    .line 4513
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->access$5600(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;)V

    .line 4514
    return-object p0
.end method

.method public setEcP256PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    .line 4503
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->copyOnWrite()V

    .line 4504
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->access$5500(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)V

    .line 4505
    return-object p0
.end method

.method public setRsa2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;

    .line 4557
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->copyOnWrite()V

    .line 4558
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->access$6000(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey$Builder;)V

    .line 4559
    return-object p0
.end method

.method public setRsa2048PublicKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;

    .line 4548
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->copyOnWrite()V

    .line 4549
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->access$5900(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;)V

    .line 4550
    return-object p0
.end method

.method public setType(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    .line 4474
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->copyOnWrite()V

    .line 4475
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;->access$5300(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;)V

    .line 4476
    return-object p0
.end method
