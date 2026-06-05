.class public final Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1315
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->access$600()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1316
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;

    .line 1308
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAssociatedDataLength()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    .locals 1

    .line 1601
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->copyOnWrite()V

    .line 1602
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->access$2000(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V

    .line 1603
    return-object p0
.end method

.method public clearDecryptionKeyId()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    .locals 1

    .line 1462
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->copyOnWrite()V

    .line 1463
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->access$1400(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V

    .line 1464
    return-object p0
.end method

.method public clearEncryptionScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    .locals 1

    .line 1372
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->copyOnWrite()V

    .line 1373
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->access$1000(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V

    .line 1374
    return-object p0
.end method

.method public clearIv()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    .locals 1

    .line 1507
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->copyOnWrite()V

    .line 1508
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->access$1600(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V

    .line 1509
    return-object p0
.end method

.method public clearPublicMetadata()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    .locals 1

    .line 1552
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->copyOnWrite()V

    .line 1553
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->access$1800(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V

    .line 1554
    return-object p0
.end method

.method public clearSignatureScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    .locals 1

    .line 1343
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->copyOnWrite()V

    .line 1344
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->access$800(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V

    .line 1345
    return-object p0
.end method

.method public clearVerificationKeyId()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    .locals 1

    .line 1417
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->copyOnWrite()V

    .line 1418
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->access$1200(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V

    .line 1419
    return-object p0
.end method

.method public getAssociatedDataLength()I
    .locals 1

    .line 1577
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getAssociatedDataLength()I

    move-result v0

    return v0
.end method

.method public getDecryptionKeyId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1440
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getDecryptionKeyId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;
    .locals 1

    .line 1358
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getEncryptionScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    move-result-object v0

    return-object v0
.end method

.method public getIv()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1485
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getIv()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPublicMetadata()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1530
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getPublicMetadata()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;
    .locals 1

    .line 1329
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getSignatureScheme()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    move-result-object v0

    return-object v0
.end method

.method public getVerificationKeyId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1395
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->getVerificationKeyId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAssociatedDataLength()Z
    .locals 1

    .line 1566
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasAssociatedDataLength()Z

    move-result v0

    return v0
.end method

.method public hasDecryptionKeyId()Z
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasDecryptionKeyId()Z

    move-result v0

    return v0
.end method

.method public hasEncryptionScheme()Z
    .locals 1

    .line 1352
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasEncryptionScheme()Z

    move-result v0

    return v0
.end method

.method public hasIv()Z
    .locals 1

    .line 1475
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasIv()Z

    move-result v0

    return v0
.end method

.method public hasPublicMetadata()Z
    .locals 1

    .line 1520
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasPublicMetadata()Z

    move-result v0

    return v0
.end method

.method public hasSignatureScheme()Z
    .locals 1

    .line 1323
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasSignatureScheme()Z

    move-result v0

    return v0
.end method

.method public hasVerificationKeyId()Z
    .locals 1

    .line 1385
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->hasVerificationKeyId()Z

    move-result v0

    return v0
.end method

.method public setAssociatedDataLength(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 1588
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->copyOnWrite()V

    .line 1589
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->access$1900(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;I)V

    .line 1590
    return-object p0
.end method

.method public setDecryptionKeyId(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1450
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->copyOnWrite()V

    .line 1451
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->access$1300(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;Lcom/google/protobuf/ByteString;)V

    .line 1452
    return-object p0
.end method

.method public setEncryptionScheme(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;

    .line 1364
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->copyOnWrite()V

    .line 1365
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->access$900(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$EncScheme;)V

    .line 1366
    return-object p0
.end method

.method public setIv(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1495
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->copyOnWrite()V

    .line 1496
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->access$1500(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;Lcom/google/protobuf/ByteString;)V

    .line 1497
    return-object p0
.end method

.method public setPublicMetadata(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1540
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->copyOnWrite()V

    .line 1541
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->access$1700(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;Lcom/google/protobuf/ByteString;)V

    .line 1542
    return-object p0
.end method

.method public setSignatureScheme(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    .line 1335
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->copyOnWrite()V

    .line 1336
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->access$700(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;)V

    .line 1337
    return-object p0
.end method

.method public setVerificationKeyId(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1405
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->copyOnWrite()V

    .line 1406
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;->access$1100(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;Lcom/google/protobuf/ByteString;)V

    .line 1407
    return-object p0
.end method
