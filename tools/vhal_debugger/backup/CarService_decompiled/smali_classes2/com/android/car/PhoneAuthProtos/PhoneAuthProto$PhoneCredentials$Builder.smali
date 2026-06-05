.class public final Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;
.super Lcom/android/car/protobuf/GeneratedMessageLite$Builder;
.source "PhoneAuthProto.java"

# interfaces
.implements Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentialsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;",
        "Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;",
        ">;",
        "Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentialsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 230
    invoke-static {}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->access$000()Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/car/protobuf/GeneratedMessageLite;)V

    .line 231
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$1;

    .line 223
    invoke-direct {p0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEscrowToken()Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;
    .locals 1

    .line 264
    invoke-virtual {p0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;->copyOnWrite()V

    .line 265
    iget-object v0, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-static {v0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->access$200(Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;)V

    .line 266
    return-object p0
.end method

.method public clearHandle()Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;->copyOnWrite()V

    .line 303
    iget-object v0, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-static {v0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->access$400(Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;)V

    .line 304
    return-object p0
.end method

.method public getEscrowToken()Lcom/android/car/protobuf/ByteString;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-virtual {v0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->getEscrowToken()Lcom/android/car/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHandle()Lcom/android/car/protobuf/ByteString;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-virtual {v0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->getHandle()Lcom/android/car/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEscrowToken(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/car/protobuf/ByteString;

    .line 252
    invoke-virtual {p0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;->copyOnWrite()V

    .line 253
    iget-object v0, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-static {v0, p1}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->access$100(Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;Lcom/android/car/protobuf/ByteString;)V

    .line 254
    return-object p0
.end method

.method public setHandle(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/car/protobuf/ByteString;

    .line 289
    invoke-virtual {p0}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;->copyOnWrite()V

    .line 290
    iget-object v0, p0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials$Builder;->instance:Lcom/android/car/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;

    invoke-static {v0, p1}, Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;->access$300(Lcom/android/car/PhoneAuthProtos/PhoneAuthProto$PhoneCredentials;Lcom/android/car/protobuf/ByteString;)V

    .line 291
    return-object p0
.end method
