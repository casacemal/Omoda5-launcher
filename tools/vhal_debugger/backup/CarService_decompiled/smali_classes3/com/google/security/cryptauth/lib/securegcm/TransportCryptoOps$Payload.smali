.class public Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;
.super Ljava/lang/Object;
.source "TransportCryptoOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Payload"
.end annotation


# instance fields
.field private final message:[B

.field private final payloadType:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;


# direct methods
.method public constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;[B)V
    .locals 1
    .param p1, "payloadType"    # Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;
    .param p2, "message"    # [B

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 97
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;->payloadType:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    .line 98
    iput-object p2, p0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;->message:[B

    .line 99
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getMessage()[B
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;->message:[B

    return-object v0
.end method

.method public getPayloadType()Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$Payload;->payloadType:Lcom/google/security/cryptauth/lib/securegcm/TransportCryptoOps$PayloadType;

    return-object v0
.end method
