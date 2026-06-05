.class public final Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UkeyProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInitOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2193
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$1900()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2194
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;

    .line 2186
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCipherCommitments(Ljava/lang/Iterable;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;",
            ">;)",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;"
        }
    .end annotation

    .line 2363
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;>;"
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->copyOnWrite()V

    .line 2364
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$3000(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;Ljava/lang/Iterable;)V

    .line 2365
    return-object p0
.end method

.method public addCipherCommitments(ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;

    .line 2354
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->copyOnWrite()V

    .line 2355
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$2900(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;)V

    .line 2356
    return-object p0
.end method

.method public addCipherCommitments(ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    .line 2336
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->copyOnWrite()V

    .line 2337
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$2700(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)V

    .line 2338
    return-object p0
.end method

.method public addCipherCommitments(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;

    .line 2345
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->copyOnWrite()V

    .line 2346
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$2800(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;)V

    .line 2347
    return-object p0
.end method

.method public addCipherCommitments(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    .line 2327
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->copyOnWrite()V

    .line 2328
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$2600(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)V

    .line 2329
    return-object p0
.end method

.method public clearCipherCommitments()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1

    .line 2371
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->copyOnWrite()V

    .line 2372
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$3100(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;)V

    .line 2373
    return-object p0
.end method

.method public clearNextProtocol()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1

    .line 2436
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->copyOnWrite()V

    .line 2437
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$3400(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;)V

    .line 2438
    return-object p0
.end method

.method public clearRandom()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1

    .line 2282
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->copyOnWrite()V

    .line 2283
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$2300(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;)V

    .line 2284
    return-object p0
.end method

.method public clearVersion()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1

    .line 2237
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->copyOnWrite()V

    .line 2238
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$2100(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;)V

    .line 2239
    return-object p0
.end method

.method public getCipherCommitments(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;
    .locals 1
    .param p1, "index"    # I

    .line 2303
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-virtual {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getCipherCommitments(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    move-result-object v0

    return-object v0
.end method

.method public getCipherCommitmentsCount()I
    .locals 1

    .line 2298
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getCipherCommitmentsCount()I

    move-result v0

    return v0
.end method

.method public getCipherCommitmentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;",
            ">;"
        }
    .end annotation

    .line 2291
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    .line 2292
    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getCipherCommitmentsList()Ljava/util/List;

    move-result-object v0

    .line 2291
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNextProtocol()Ljava/lang/String;
    .locals 1

    .line 2402
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getNextProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2413
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getNextProtocolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRandom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2260
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getRandom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 2215
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasNextProtocol()Z
    .locals 1

    .line 2392
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->hasNextProtocol()Z

    move-result v0

    return v0
.end method

.method public hasRandom()Z
    .locals 1

    .line 2250
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->hasRandom()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .line 2205
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->hasVersion()Z

    move-result v0

    return v0
.end method

.method public removeCipherCommitments(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 2379
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->copyOnWrite()V

    .line 2380
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$3200(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;I)V

    .line 2381
    return-object p0
.end method

.method public setCipherCommitments(ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;

    .line 2319
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->copyOnWrite()V

    .line 2320
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$2500(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment$Builder;)V

    .line 2321
    return-object p0
.end method

.method public setCipherCommitments(ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;

    .line 2310
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->copyOnWrite()V

    .line 2311
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$2400(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;ILcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$CipherCommitment;)V

    .line 2312
    return-object p0
.end method

.method public setNextProtocol(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2424
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->copyOnWrite()V

    .line 2425
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$3300(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;Ljava/lang/String;)V

    .line 2426
    return-object p0
.end method

.method public setNextProtocolBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2449
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->copyOnWrite()V

    .line 2450
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$3500(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;Lcom/google/protobuf/ByteString;)V

    .line 2451
    return-object p0
.end method

.method public setRandom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2270
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->copyOnWrite()V

    .line 2271
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$2200(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;Lcom/google/protobuf/ByteString;)V

    .line 2272
    return-object p0
.end method

.method public setVersion(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 2225
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->copyOnWrite()V

    .line 2226
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;->access$2000(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientInit;I)V

    .line 2227
    return-object p0
.end method
