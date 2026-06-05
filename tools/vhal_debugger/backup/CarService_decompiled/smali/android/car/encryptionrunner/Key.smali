.class public interface abstract Landroid/car/encryptionrunner/Key;
.super Ljava/lang/Object;
.source "Key.java"


# virtual methods
.method public abstract asBytes()[B
.end method

.method public abstract decryptData([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public abstract encryptData([B)[B
.end method
