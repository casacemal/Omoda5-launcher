.class public final Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UkeyProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInitOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2956
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->access$3700()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2957
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;

    .line 2949
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHandshakeCipher()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;
    .locals 1

    .line 3090
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->copyOnWrite()V

    .line 3091
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->access$4300(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;)V

    .line 3092
    return-object p0
.end method

.method public clearPublicKey()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;
    .locals 1

    .line 3119
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->copyOnWrite()V

    .line 3120
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->access$4500(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;)V

    .line 3121
    return-object p0
.end method

.method public clearRandom()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;
    .locals 1

    .line 3045
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->copyOnWrite()V

    .line 3046
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->access$4100(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;)V

    .line 3047
    return-object p0
.end method

.method public clearVersion()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;
    .locals 1

    .line 3000
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->copyOnWrite()V

    .line 3001
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->access$3900(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;)V

    .line 3002
    return-object p0
.end method

.method public getHandshakeCipher()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;
    .locals 1

    .line 3068
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->getHandshakeCipher()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3105
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRandom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3023
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->getRandom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 2978
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasHandshakeCipher()Z
    .locals 1

    .line 3058
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->hasHandshakeCipher()Z

    move-result v0

    return v0
.end method

.method public hasPublicKey()Z
    .locals 1

    .line 3099
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->hasPublicKey()Z

    move-result v0

    return v0
.end method

.method public hasRandom()Z
    .locals 1

    .line 3013
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->hasRandom()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .line 2968
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->hasVersion()Z

    move-result v0

    return v0
.end method

.method public setHandshakeCipher(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;

    .line 3078
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->copyOnWrite()V

    .line 3079
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->access$4200(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2HandshakeCipher;)V

    .line 3080
    return-object p0
.end method

.method public setPublicKey(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3111
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->copyOnWrite()V

    .line 3112
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->access$4400(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;Lcom/google/protobuf/ByteString;)V

    .line 3113
    return-object p0
.end method

.method public setRandom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3033
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->copyOnWrite()V

    .line 3034
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->access$4000(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;Lcom/google/protobuf/ByteString;)V

    .line 3035
    return-object p0
.end method

.method public setVersion(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 2988
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->copyOnWrite()V

    .line 2989
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;->access$3800(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ServerInit;I)V

    .line 2990
    return-object p0
.end method
