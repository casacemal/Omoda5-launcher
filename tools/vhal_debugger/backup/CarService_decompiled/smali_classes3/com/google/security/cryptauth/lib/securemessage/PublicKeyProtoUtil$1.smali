.class synthetic Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$1;
.super Ljava/lang/Object;
.source "PublicKeyProtoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$security$cryptauth$lib$securemessage$SecureMessageProto$PublicKeyType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 239
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->values()[Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$1;->$SwitchMap$com$google$security$cryptauth$lib$securemessage$SecureMessageProto$PublicKeyType:[I

    :try_start_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$1;->$SwitchMap$com$google$security$cryptauth$lib$securemessage$SecureMessageProto$PublicKeyType:[I

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->EC_P256:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$1;->$SwitchMap$com$google$security$cryptauth$lib$securemessage$SecureMessageProto$PublicKeyType:[I

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->RSA2048:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securemessage/PublicKeyProtoUtil$1;->$SwitchMap$com$google$security$cryptauth$lib$securemessage$SecureMessageProto$PublicKeyType:[I

    sget-object v1, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->DH2048_MODP:Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$PublicKeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
