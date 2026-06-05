.class public final Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBodyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2065
    invoke-static {}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->access$2200()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2066
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$1;

    .line 2058
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBody()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;
    .locals 1

    .line 2178
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->copyOnWrite()V

    .line 2179
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->access$2800(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;)V

    .line 2180
    return-object p0
.end method

.method public clearHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;
    .locals 1

    .line 2133
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->copyOnWrite()V

    .line 2134
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->access$2600(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;)V

    .line 2135
    return-object p0
.end method

.method public getBody()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2156
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;
    .locals 1

    .line 2087
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->getHeader()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    move-result-object v0

    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    .line 2146
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->hasBody()Z

    move-result v0

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    .line 2077
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->hasHeader()Z

    move-result v0

    return v0
.end method

.method public mergeHeader(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 2122
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->copyOnWrite()V

    .line 2123
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->access$2500(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V

    .line 2124
    return-object p0
.end method

.method public setBody(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2166
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->copyOnWrite()V

    .line 2167
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->access$2700(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;Lcom/google/protobuf/ByteString;)V

    .line 2168
    return-object p0
.end method

.method public setHeader(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;

    .line 2110
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->copyOnWrite()V

    .line 2111
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->access$2400(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header$Builder;)V

    .line 2112
    return-object p0
.end method

.method public setHeader(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;

    .line 2097
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->copyOnWrite()V

    .line 2098
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;->access$2300(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$HeaderAndBody;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$Header;)V

    .line 2099
    return-object p0
.end method
