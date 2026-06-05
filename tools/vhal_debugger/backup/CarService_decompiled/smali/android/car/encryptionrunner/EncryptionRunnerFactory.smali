.class public Landroid/car/encryptionrunner/EncryptionRunnerFactory;
.super Ljava/lang/Object;
.source "EncryptionRunnerFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static newDummyRunner()Landroid/car/encryptionrunner/EncryptionRunner;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 43
    new-instance v0, Landroid/car/encryptionrunner/DummyEncryptionRunner;

    invoke-direct {v0}, Landroid/car/encryptionrunner/DummyEncryptionRunner;-><init>()V

    return-object v0
.end method

.method public static newRunner()Landroid/car/encryptionrunner/EncryptionRunner;
    .locals 1

    .line 34
    new-instance v0, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;

    invoke-direct {v0}, Landroid/car/encryptionrunner/Ukey2EncryptionRunner;-><init>()V

    return-object v0
.end method
