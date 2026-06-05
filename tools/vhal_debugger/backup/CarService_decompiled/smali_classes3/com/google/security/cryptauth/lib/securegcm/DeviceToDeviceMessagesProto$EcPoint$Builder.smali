.class public final Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DeviceToDeviceMessagesProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPointOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1899
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->access$2200()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1900
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$1;

    .line 1892
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCurve()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;
    .locals 1

    .line 1927
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->copyOnWrite()V

    .line 1928
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->access$2400(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)V

    .line 1929
    return-object p0
.end method

.method public clearX()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;
    .locals 1

    .line 1976
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->copyOnWrite()V

    .line 1977
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->access$2600(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)V

    .line 1978
    return-object p0
.end method

.method public clearY()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;
    .locals 1

    .line 2005
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->copyOnWrite()V

    .line 2006
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->access$2800(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;)V

    .line 2007
    return-object p0
.end method

.method public getCurve()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;
    .locals 1

    .line 1913
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->getCurve()Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;

    move-result-object v0

    return-object v0
.end method

.method public getX()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1952
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->getX()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getY()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1991
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->getY()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCurve()Z
    .locals 1

    .line 1907
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->hasCurve()Z

    move-result v0

    return v0
.end method

.method public hasX()Z
    .locals 1

    .line 1941
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->hasX()Z

    move-result v0

    return v0
.end method

.method public hasY()Z
    .locals 1

    .line 1985
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->hasY()Z

    move-result v0

    return v0
.end method

.method public setCurve(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;

    .line 1919
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->copyOnWrite()V

    .line 1920
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->access$2300(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;)V

    .line 1921
    return-object p0
.end method

.method public setX(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1963
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->copyOnWrite()V

    .line 1964
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->access$2500(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;Lcom/google/protobuf/ByteString;)V

    .line 1965
    return-object p0
.end method

.method public setY(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1997
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->copyOnWrite()V

    .line 1998
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;

    invoke-static {v0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;->access$2700(Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$EcPoint;Lcom/google/protobuf/ByteString;)V

    .line 1999
    return-object p0
.end method
