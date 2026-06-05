.class public final Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SecureGcmProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$TickleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$TickleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7567
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->access$9800()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7568
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$1;

    .line 7560
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearExpiryTime()Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;
    .locals 1

    .line 7611
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;->copyOnWrite()V

    .line 7612
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->access$10000(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;)V

    .line 7613
    return-object p0
.end method

.method public getExpiryTime()J
    .locals 2

    .line 7589
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->getExpiryTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasExpiryTime()Z
    .locals 1

    .line 7579
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->hasExpiryTime()Z

    move-result v0

    return v0
.end method

.method public setExpiryTime(J)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 7599
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;->copyOnWrite()V

    .line 7600
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;

    invoke-static {v0, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;->access$9900(Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$Tickle;J)V

    .line 7601
    return-object p0
.end method
