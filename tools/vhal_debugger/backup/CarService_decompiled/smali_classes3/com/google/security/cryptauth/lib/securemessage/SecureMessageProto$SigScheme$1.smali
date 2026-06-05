.class Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme$1;
.super Ljava/lang/Object;
.source "SecureMessageProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme$1;->findValueByNumber(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;
    .locals 1
    .param p1, "number"    # I

    .line 85
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;->forNumber(I)Lcom/google/security/cryptauth/lib/securemessage/SecureMessageProto$SigScheme;

    move-result-object v0

    return-object v0
.end method
