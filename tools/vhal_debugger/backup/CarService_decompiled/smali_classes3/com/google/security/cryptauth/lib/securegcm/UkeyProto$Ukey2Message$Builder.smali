.class public final Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UkeyProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2MessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 450
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->access$000()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 451
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;

    .line 443
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMessageData()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;->copyOnWrite()V

    .line 540
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->access$400(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;)V

    .line 541
    return-object p0
.end method

.method public clearMessageType()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;->copyOnWrite()V

    .line 495
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->access$200(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;)V

    .line 496
    return-object p0
.end method

.method public getMessageData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->getMessageData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->getMessageType()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    move-result-object v0

    return-object v0
.end method

.method public hasMessageData()Z
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->hasMessageData()Z

    move-result v0

    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->hasMessageType()Z

    move-result v0

    return v0
.end method

.method public setMessageData(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 527
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;->copyOnWrite()V

    .line 528
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->access$300(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;Lcom/google/protobuf/ByteString;)V

    .line 529
    return-object p0
.end method

.method public setMessageType(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;

    .line 482
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;->copyOnWrite()V

    .line 483
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;->access$100(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message;Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Message$Type;)V

    .line 484
    return-object p0
.end method
