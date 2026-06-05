.class public Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHPrivateKeyShim;
.super Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHKeyShim;
.source "PublicKeyProtoUtil.java"

# interfaces
.implements Ljavax/crypto/interfaces/DHPrivateKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DHPrivateKeyShim"
.end annotation


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V
    .locals 0
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "params"    # Ljavax/crypto/spec/DHParameterSpec;

    .line 621
    invoke-direct {p0, p1, p2}, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHKeyShim;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    .line 622
    return-void
.end method
