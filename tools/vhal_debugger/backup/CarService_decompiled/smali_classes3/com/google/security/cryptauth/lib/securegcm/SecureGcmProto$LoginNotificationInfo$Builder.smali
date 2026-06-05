.class public final Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SecureGcmProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8330
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->access$10200()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8331
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$1;

    .line 8323
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCreationTime()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    .locals 1

    .line 8374
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->copyOnWrite()V

    .line 8375
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->access$10400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;)V

    .line 8376
    return-object p0
.end method

.method public clearEmail()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    .locals 1

    .line 8431
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->copyOnWrite()V

    .line 8432
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->access$10600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;)V

    .line 8433
    return-object p0
.end method

.method public clearEventType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    .locals 1

    .line 8641
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->copyOnWrite()V

    .line 8642
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->access$11500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;)V

    .line 8643
    return-object p0
.end method

.method public clearHost()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    .locals 1

    .line 8501
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->copyOnWrite()V

    .line 8502
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->access$10900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;)V

    .line 8503
    return-object p0
.end method

.method public clearSource()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    .locals 1

    .line 8571
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->copyOnWrite()V

    .line 8572
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->access$11200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;)V

    .line 8573
    return-object p0
.end method

.method public getCreationTime()J
    .locals 2

    .line 8352
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 8397
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8408
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 8607
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getEventType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8618
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getEventTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 8467
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8478
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getHostBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 8537
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8548
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCreationTime()Z
    .locals 1

    .line 8342
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->hasCreationTime()Z

    move-result v0

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .line 8387
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->hasEmail()Z

    move-result v0

    return v0
.end method

.method public hasEventType()Z
    .locals 1

    .line 8597
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->hasEventType()Z

    move-result v0

    return v0
.end method

.method public hasHost()Z
    .locals 1

    .line 8457
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->hasHost()Z

    move-result v0

    return v0
.end method

.method public hasSource()Z
    .locals 1

    .line 8527
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->hasSource()Z

    move-result v0

    return v0
.end method

.method public setCreationTime(J)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 8362
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->copyOnWrite()V

    .line 8363
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->access$10300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;J)V

    .line 8364
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8419
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->copyOnWrite()V

    .line 8420
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->access$10500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;Ljava/lang/String;)V

    .line 8421
    return-object p0
.end method

.method public setEmailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8444
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->copyOnWrite()V

    .line 8445
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->access$10700(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;Lcom/google/protobuf/ByteString;)V

    .line 8446
    return-object p0
.end method

.method public setEventType(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8629
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->copyOnWrite()V

    .line 8630
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->access$11400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;Ljava/lang/String;)V

    .line 8631
    return-object p0
.end method

.method public setEventTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8654
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->copyOnWrite()V

    .line 8655
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->access$11600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;Lcom/google/protobuf/ByteString;)V

    .line 8656
    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8489
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->copyOnWrite()V

    .line 8490
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->access$10800(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;Ljava/lang/String;)V

    .line 8491
    return-object p0
.end method

.method public setHostBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8514
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->copyOnWrite()V

    .line 8515
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->access$11000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;Lcom/google/protobuf/ByteString;)V

    .line 8516
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8559
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->copyOnWrite()V

    .line 8560
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->access$11100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;Ljava/lang/String;)V

    .line 8561
    return-object p0
.end method

.method public setSourceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8584
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->copyOnWrite()V

    .line 8585
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;->access$11300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$LoginNotificationInfo;Lcom/google/protobuf/ByteString;)V

    .line 8586
    return-object p0
.end method
