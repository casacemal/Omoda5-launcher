.class public Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHPublicKeyShim;
.super Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHKeyShim;
.source "PublicKeyProtoUtil.java"

# interfaces
.implements Ljavax/crypto/interfaces/DHPublicKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DHPublicKeyShim"
.end annotation


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V
    .locals 0
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "params"    # Ljavax/crypto/spec/DHParameterSpec;

    .line 610
    invoke-direct {p0, p1, p2}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHKeyShim;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    .line 611
    return-void
.end method
