.class Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve$1;
.super Ljava/lang/Object;
.source "DeviceToDeviceMessagesProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve$1;->findValueByNumber(I)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;
    .locals 1
    .param p1, "number"    # I

    .line 59
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/DeviceToDeviceMessagesProto$Curve;

    move-result-object v0

    return-object v0
.end method
