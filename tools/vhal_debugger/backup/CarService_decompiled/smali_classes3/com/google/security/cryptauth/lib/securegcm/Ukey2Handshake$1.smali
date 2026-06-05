.class synthetic Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;
.super Ljava/lang/Object;
.source "Ukey2Handshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$HandshakeCipher:[I

.field static final synthetic $SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

.field static final synthetic $SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Alert$AlertType:[I

.field static final synthetic $SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Message$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 958
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->values()[Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Alert$AlertType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Alert$AlertType:[I

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Alert$AlertType:[I

    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE_TYPE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    invoke-virtual {v3}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Alert$AlertType:[I

    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->INCORRECT_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    invoke-virtual {v4}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Alert$AlertType:[I

    sget-object v5, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE_DATA:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    invoke-virtual {v5}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    :goto_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Alert$AlertType:[I

    sget-object v6, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_VERSION:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    invoke-virtual {v6}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    :goto_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Alert$AlertType:[I

    sget-object v7, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_RANDOM:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    invoke-virtual {v7}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v6

    :goto_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Alert$AlertType:[I

    sget-object v8, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_HANDSHAKE_CIPHER:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    invoke-virtual {v8}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v7

    :goto_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Alert$AlertType:[I

    sget-object v9, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_NEXT_PROTOCOL:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    invoke-virtual {v9}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v8

    :goto_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Alert$AlertType:[I

    sget-object v10, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_PUBLIC_KEY:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    invoke-virtual {v10}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v9

    :goto_8
    const/16 v9, 0xa

    :try_start_9
    sget-object v10, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Alert$AlertType:[I

    sget-object v11, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->INTERNAL_ERROR:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    invoke-virtual {v11}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v10

    .line 929
    :goto_9
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->values()[Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Message$Type:[I

    :try_start_a
    sget-object v10, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Message$Type:[I

    sget-object v11, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->ALERT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    invoke-virtual {v11}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v10

    :goto_a
    :try_start_b
    sget-object v10, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Message$Type:[I

    sget-object v11, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->CLIENT_INIT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    invoke-virtual {v11}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v10

    :goto_b
    :try_start_c
    sget-object v10, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Message$Type:[I

    sget-object v11, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    invoke-virtual {v11}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v10

    :goto_c
    :try_start_d
    sget-object v10, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$UkeyProto$Ukey2Message$Type:[I

    sget-object v11, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->CLIENT_FINISH:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    invoke-virtual {v11}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;->ordinal()I

    move-result v11

    aput v3, v10, v11
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v10

    .line 588
    :goto_d
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->values()[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$HandshakeCipher:[I

    :try_start_e
    sget-object v10, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$HandshakeCipher:[I

    sget-object v11, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->P256_SHA512:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;

    invoke-virtual {v11}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$HandshakeCipher;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v10

    .line 293
    :goto_e
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->values()[Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    :try_start_f
    sget-object v10, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    sget-object v11, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->CLIENT_START:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v11}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    :goto_f
    :try_start_10
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    sget-object v10, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->SERVER_START:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v10}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->ordinal()I

    move-result v10

    aput v1, v0, v10
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    :goto_10
    :try_start_11
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->SERVER_AFTER_CLIENT_INIT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v0

    :goto_11
    :try_start_12
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->CLIENT_AFTER_SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    :goto_12
    :try_start_13
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->CLIENT_WAITING_FOR_SERVER_INIT:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v0

    :goto_13
    :try_start_14
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->SERVER_WAITING_FOR_CLIENT_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v0

    :goto_14
    :try_start_15
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_ERROR:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v0

    :goto_15
    :try_start_16
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_VERIFICATION_NEEDED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v0

    :goto_16
    :try_start_17
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_VERIFICATION_IN_PROGRESS:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v0

    :goto_17
    :try_start_18
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_FINISHED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v0

    :goto_18
    :try_start_19
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$1;->$SwitchMap$com$google$security$cryptauth$lib$securegcm$Ukey2Handshake$InternalState:[I

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->HANDSHAKE_ALREADY_USED:Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$InternalState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v0

    :goto_19
    return-void
.end method
