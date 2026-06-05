.class public final Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SecureGcmProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7200
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->access$9200()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7201
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$1;

    .line 7193
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;
    .locals 1

    .line 7228
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->copyOnWrite()V

    .line 7229
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->access$9400(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;)V

    .line 7230
    return-object p0
.end method

.method public clearVersion()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->copyOnWrite()V

    .line 7258
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->access$9600(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;)V

    .line 7259
    return-object p0
.end method

.method public getType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;
    .locals 1

    .line 7214
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->getType()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 7243
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .line 7208
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .line 7237
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->hasVersion()Z

    move-result v0

    return v0
.end method

.method public setType(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;

    .line 7220
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->copyOnWrite()V

    .line 7221
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->access$9300(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Type;)V

    .line 7222
    return-object p0
.end method

.method public setVersion(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 7249
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->copyOnWrite()V

    .line 7250
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;->access$9500(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmMetadata;I)V

    .line 7251
    return-object p0
.end method
