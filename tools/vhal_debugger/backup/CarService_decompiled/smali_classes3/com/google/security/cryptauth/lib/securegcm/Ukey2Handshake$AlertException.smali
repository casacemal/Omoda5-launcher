.class public Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$AlertException;
.super Ljava/lang/Exception;
.source "Ukey2Handshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertException"
.end annotation


# instance fields
.field private final alertMessageToSend:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;)V
    .locals 0
    .param p1, "alertMessageToLog"    # Ljava/lang/String;
    .param p2, "alertMessageToSend"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    .line 214
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 215
    iput-object p2, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$AlertException;->alertMessageToSend:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    .line 216
    return-void
.end method


# virtual methods
.method public getAlertMessageToSend()[B
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/Ukey2Handshake$AlertException;->alertMessageToSend:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
