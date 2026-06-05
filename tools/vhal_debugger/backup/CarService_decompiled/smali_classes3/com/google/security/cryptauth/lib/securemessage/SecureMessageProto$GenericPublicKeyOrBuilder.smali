.class public interface abstract Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKeyOrBuilder;
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
    name = "GenericPublicKeyOrBuilder"
.end annotation


# virtual methods
.method public abstract getDh2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$DhPublicKey;
.end method

.method public abstract getEcP256PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EcP256PublicKey;
.end method

.method public abstract getRsa2048PublicKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SimpleRsaPublicKey;
.end method

.method public abstract getType()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;
.end method

.method public abstract hasDh2048PublicKey()Z
.end method

.method public abstract hasEcP256PublicKey()Z
.end method

.method public abstract hasRsa2048PublicKey()Z
.end method

.method public abstract hasType()Z
.end method
