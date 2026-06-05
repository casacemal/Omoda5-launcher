.class public abstract Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHKeyShim;
.super Ljava/lang/Object;
.source "PublicKeyProtoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DHKeyShim"
.end annotation


# instance fields
.field private eitherXorY:Ljava/math/BigInteger;

.field private params:Ljavax/crypto/spec/DHParameterSpec;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V
    .locals 0
    .param p1, "eitherXorY"    # Ljava/math/BigInteger;
    .param p2, "params"    # Ljavax/crypto/spec/DHParameterSpec;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHKeyShim;->eitherXorY:Ljava/math/BigInteger;

    .line 575
    iput-object p2, p0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHKeyShim;->params:Ljavax/crypto/spec/DHParameterSpec;

    .line 576
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 583
    const-string v0, "DH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 591
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 587
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHKeyShim;->params:Ljavax/crypto/spec/DHParameterSpec;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHKeyShim;->eitherXorY:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$DHKeyShim;->eitherXorY:Ljava/math/BigInteger;

    return-object v0
.end method
