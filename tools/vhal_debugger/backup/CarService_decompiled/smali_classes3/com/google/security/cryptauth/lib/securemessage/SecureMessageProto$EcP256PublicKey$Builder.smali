.class public final Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3059
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->access$3600()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3060
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;

    .line 3052
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearX()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;
    .locals 1

    .line 3107
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->copyOnWrite()V

    .line 3108
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->access$3800(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)V

    .line 3109
    return-object p0
.end method

.method public clearY()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;
    .locals 1

    .line 3136
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->copyOnWrite()V

    .line 3137
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->access$4000(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;)V

    .line 3138
    return-object p0
.end method

.method public getX()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3083
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->getX()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getY()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3122
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->getY()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasX()Z
    .locals 1

    .line 3072
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->hasX()Z

    move-result v0

    return v0
.end method

.method public hasY()Z
    .locals 1

    .line 3116
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->hasY()Z

    move-result v0

    return v0
.end method

.method public setX(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3094
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->copyOnWrite()V

    .line 3095
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->access$3700(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;Lcom/google/protobuf/ByteString;)V

    .line 3096
    return-object p0
.end method

.method public setY(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3128
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->copyOnWrite()V

    .line 3129
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;->access$3900(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;Lcom/google/protobuf/ByteString;)V

    .line 3130
    return-object p0
.end method
