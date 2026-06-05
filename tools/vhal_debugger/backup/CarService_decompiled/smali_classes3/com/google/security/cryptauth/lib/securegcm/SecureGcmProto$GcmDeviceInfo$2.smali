.class Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$2;
.super Ljava/lang/Object;
.source "SecureGcmProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$ListAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
        "Ljava/lang/Integer;",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Integer;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    .locals 2
    .param p1, "from"    # Ljava/lang/Integer;

    .line 3799
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    move-result-object v0

    .line 3800
    .local v0, "result":Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;->UNKNOWN_FEATURE:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3797
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$GcmDeviceInfo$2;->convert(Ljava/lang/Integer;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$SoftwareFeature;

    move-result-object p1

    return-object p1
.end method
