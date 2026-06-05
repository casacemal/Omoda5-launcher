.class Landroid/car/encryptionrunner/DummyEncryptionRunner$DummyKey;
.super Ljava/lang/Object;
.source "DummyEncryptionRunner.java"

# interfaces
.implements Landroid/car/encryptionrunner/Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/encryptionrunner/DummyEncryptionRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyKey"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/encryptionrunner/DummyEncryptionRunner;


# direct methods
.method private constructor <init>(Landroid/car/encryptionrunner/DummyEncryptionRunner;)V
    .locals 0

    .line 140
    iput-object p1, p0, Landroid/car/encryptionrunner/DummyEncryptionRunner$DummyKey;->this$0:Landroid/car/encryptionrunner/DummyEncryptionRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/encryptionrunner/DummyEncryptionRunner;Landroid/car/encryptionrunner/DummyEncryptionRunner$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/car/encryptionrunner/DummyEncryptionRunner;
    .param p2, "x1"    # Landroid/car/encryptionrunner/DummyEncryptionRunner$1;

    .line 140
    invoke-direct {p0, p1}, Landroid/car/encryptionrunner/DummyEncryptionRunner$DummyKey;-><init>(Landroid/car/encryptionrunner/DummyEncryptionRunner;)V

    return-void
.end method


# virtual methods
.method public asBytes()[B
    .locals 1

    .line 144
    const-string v0, "key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public decryptData([B)[B
    .locals 0
    .param p1, "encryptedData"    # [B

    .line 154
    return-object p1
.end method

.method public encryptData([B)[B
    .locals 0
    .param p1, "data"    # [B

    .line 149
    return-object p1
.end method
