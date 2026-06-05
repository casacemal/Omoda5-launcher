.class public final Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DeviceToDeviceMessagesProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHelloOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHelloOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 821
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->access$600()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 822
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$1;

    .line 814
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearProtocolVersion()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;
    .locals 1

    .line 934
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->copyOnWrite()V

    .line 935
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->access$1200(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;)V

    .line 936
    return-object p0
.end method

.method public clearPublicDhKey()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;
    .locals 1

    .line 889
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->copyOnWrite()V

    .line 890
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->access$1000(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;)V

    .line 891
    return-object p0
.end method

.method public getProtocolVersion()I
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->getProtocolVersion()I

    move-result v0

    return v0
.end method

.method public getPublicDhKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->getPublicDhKey()Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public hasProtocolVersion()Z
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->hasProtocolVersion()Z

    move-result v0

    return v0
.end method

.method public hasPublicDhKey()Z
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->hasPublicDhKey()Z

    move-result v0

    return v0
.end method

.method public mergePublicDhKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 878
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->copyOnWrite()V

    .line 879
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->access$900(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V

    .line 880
    return-object p0
.end method

.method public setProtocolVersion(I)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 922
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->copyOnWrite()V

    .line 923
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->access$1100(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;I)V

    .line 924
    return-object p0
.end method

.method public setPublicDhKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;

    .line 866
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->copyOnWrite()V

    .line 867
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->access$800(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey$Builder;)V

    .line 868
    return-object p0
.end method

.method public setPublicDhKey(Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;

    .line 853
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->copyOnWrite()V

    .line 854
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;->access$700(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$InitiatorHello;Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$GenericPublicKey;)V

    .line 855
    return-object p0
.end method
