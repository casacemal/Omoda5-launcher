.class public final Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 517
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->access$000()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 518
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;

    .line 510
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHeaderAndBody()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;
    .locals 1

    .line 561
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;->copyOnWrite()V

    .line 562
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->access$200(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;)V

    .line 563
    return-object p0
.end method

.method public clearSignature()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;
    .locals 1

    .line 606
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;->copyOnWrite()V

    .line 607
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->access$400(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;)V

    .line 608
    return-object p0
.end method

.method public getHeaderAndBody()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->getHeaderAndBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasHeaderAndBody()Z
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->hasHeaderAndBody()Z

    move-result v0

    return v0
.end method

.method public hasSignature()Z
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->hasSignature()Z

    move-result v0

    return v0
.end method

.method public setHeaderAndBody(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 549
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;->copyOnWrite()V

    .line 550
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->access$100(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Lcom/google/protobuf/ByteString;)V

    .line 551
    return-object p0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 594
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;->copyOnWrite()V

    .line 595
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;->access$300(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SecureMessage;Lcom/google/protobuf/ByteString;)V

    .line 596
    return-object p0
.end method
