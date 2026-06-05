.class public final Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3897
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;->access$4800()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3898
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;

    .line 3890
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearY()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;
    .locals 1

    .line 3941
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;->copyOnWrite()V

    .line 3942
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;->access$5000(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;)V

    .line 3943
    return-object p0
.end method

.method public getY()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3919
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;->getY()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasY()Z
    .locals 1

    .line 3909
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;->hasY()Z

    move-result v0

    return v0
.end method

.method public setY(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3929
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;->copyOnWrite()V

    .line 3930
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;->access$4900(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;Lcom/google/protobuf/ByteString;)V

    .line 3931
    return-object p0
.end method
