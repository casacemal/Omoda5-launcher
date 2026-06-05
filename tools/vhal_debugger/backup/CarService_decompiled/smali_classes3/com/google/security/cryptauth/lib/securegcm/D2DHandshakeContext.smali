.class public interface abstract Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext;
.super Ljava/lang/Object;
.source "D2DHandshakeContext.java"


# virtual methods
.method public abstract canSendPayloadInHandshakeMessage()Z
.end method

.method public abstract getNextHandshakeMessage()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation
.end method

.method public abstract getNextHandshakeMessage([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation
.end method

.method public abstract isHandshakeComplete()Z
.end method

.method public abstract parseHandshakeMessage([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation
.end method

.method public abstract toConnectionContext()Lcom/google/security/cryptauth/lib/securegcm/D2DConnectionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/HandshakeException;
        }
    .end annotation
.end method
