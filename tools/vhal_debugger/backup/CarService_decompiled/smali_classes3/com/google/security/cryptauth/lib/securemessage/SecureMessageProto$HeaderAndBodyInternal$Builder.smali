.class public final Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternalOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternalOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2593
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->access$3000()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2594
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;

    .line 2586
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBody()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;
    .locals 1

    .line 2682
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;->copyOnWrite()V

    .line 2683
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->access$3400(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;)V

    .line 2684
    return-object p0
.end method

.method public clearHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;
    .locals 1

    .line 2637
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;->copyOnWrite()V

    .line 2638
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->access$3200(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;)V

    .line 2639
    return-object p0
.end method

.method public getBody()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2660
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2615
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->getHeader()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    .line 2650
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->hasBody()Z

    move-result v0

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    .line 2605
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->hasHeader()Z

    move-result v0

    return v0
.end method

.method public setBody(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2670
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;->copyOnWrite()V

    .line 2671
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->access$3300(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;Lcom/google/protobuf/ByteString;)V

    .line 2672
    return-object p0
.end method

.method public setHeader(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2625
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;->copyOnWrite()V

    .line 2626
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;->access$3100(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyInternal;Lcom/google/protobuf/ByteString;)V

    .line 2627
    return-object p0
.end method
