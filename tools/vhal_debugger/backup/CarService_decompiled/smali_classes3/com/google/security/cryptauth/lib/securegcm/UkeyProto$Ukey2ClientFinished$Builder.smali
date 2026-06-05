.class public final Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UkeyProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinishedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinishedOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3434
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->access$4700()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3435
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;

    .line 3427
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPublicKey()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;
    .locals 1

    .line 3478
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;->copyOnWrite()V

    .line 3479
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->access$4900(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;)V

    .line 3480
    return-object p0
.end method

.method public getPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3456
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasPublicKey()Z
    .locals 1

    .line 3446
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->hasPublicKey()Z

    move-result v0

    return v0
.end method

.method public setPublicKey(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3466
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;->copyOnWrite()V

    .line 3467
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;->access$4800(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2ClientFinished;Lcom/google/protobuf/ByteString;)V

    .line 3468
    return-object p0
.end method
