.class public interface abstract Landroid/car/encryptionrunner/EncryptionRunner;
.super Ljava/lang/Object;
.source "EncryptionRunner.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EncryptionRunner"


# virtual methods
.method public abstract continueHandshake([B)Landroid/car/encryptionrunner/HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/encryptionrunner/HandshakeException;
        }
    .end annotation
.end method

.method public abstract initHandshake()Landroid/car/encryptionrunner/HandshakeMessage;
.end method

.method public abstract invalidPin()V
.end method

.method public abstract keyOf([B)Landroid/car/encryptionrunner/Key;
.end method

.method public abstract respondToInitRequest([B)Landroid/car/encryptionrunner/HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/encryptionrunner/HandshakeException;
        }
    .end annotation
.end method

.method public abstract verifyPin()Landroid/car/encryptionrunner/HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/encryptionrunner/HandshakeException;
        }
    .end annotation
.end method
