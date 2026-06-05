.class public final Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SecureGcmPasswordlessAuthProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 356
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->access$000()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 357
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$1;

    .line 349
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBrowserDataHash()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;
    .locals 1

    .line 400
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->copyOnWrite()V

    .line 401
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->access$200(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;)V

    .line 402
    return-object p0
.end method

.method public clearCounter()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->copyOnWrite()V

    .line 446
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->access$400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;)V

    .line 447
    return-object p0
.end method

.method public clearUserApproval()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;
    .locals 1

    .line 506
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->copyOnWrite()V

    .line 507
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->access$600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;)V

    .line 508
    return-object p0
.end method

.method public getBrowserDataHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->getBrowserDataHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCounter()J
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->getCounter()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserApproval()I
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->getUserApproval()I

    move-result v0

    return v0
.end method

.method public hasBrowserDataHash()Z
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->hasBrowserDataHash()Z

    move-result v0

    return v0
.end method

.method public hasCounter()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->hasCounter()Z

    move-result v0

    return v0
.end method

.method public hasUserApproval()Z
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->hasUserApproval()Z

    move-result v0

    return v0
.end method

.method public setBrowserDataHash(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 388
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->copyOnWrite()V

    .line 389
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->access$100(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;Lcom/google/protobuf/ByteString;)V

    .line 390
    return-object p0
.end method

.method public setCounter(J)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 433
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->copyOnWrite()V

    .line 434
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-static {v0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->access$300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;J)V

    .line 435
    return-object p0
.end method

.method public setUserApproval(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 490
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->copyOnWrite()V

    .line 491
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;->access$500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmPasswordlessAuthProto$IdentityAssertion;I)V

    .line 492
    return-object p0
.end method
