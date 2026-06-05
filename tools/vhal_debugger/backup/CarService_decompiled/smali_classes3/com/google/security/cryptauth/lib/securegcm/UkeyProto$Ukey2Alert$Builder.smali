.class public final Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UkeyProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2AlertOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2AlertOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1106
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->access$600()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1107
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;

    .line 1099
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearErrorMessage()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;
    .locals 1

    .line 1171
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->copyOnWrite()V

    .line 1172
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->access$1000(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;)V

    .line 1173
    return-object p0
.end method

.method public clearType()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->copyOnWrite()V

    .line 1135
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->access$800(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;)V

    .line 1136
    return-object p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->getErrorMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->getType()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    move-result-object v0

    return-object v0
.end method

.method public hasErrorMessage()Z
    .locals 1

    .line 1143
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->hasErrorMessage()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .line 1114
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->hasType()Z

    move-result v0

    return v0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1163
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->copyOnWrite()V

    .line 1164
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->access$900(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;Ljava/lang/String;)V

    .line 1165
    return-object p0
.end method

.method public setErrorMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1180
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->copyOnWrite()V

    .line 1181
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->access$1100(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;Lcom/google/protobuf/ByteString;)V

    .line 1182
    return-object p0
.end method

.method public setType(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    .line 1126
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->copyOnWrite()V

    .line 1127
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->access$700(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;)V

    .line 1128
    return-object p0
.end method
