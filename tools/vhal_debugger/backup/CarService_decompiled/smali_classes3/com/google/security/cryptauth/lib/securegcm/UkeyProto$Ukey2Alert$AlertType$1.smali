.class Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType$1;
.super Ljava/lang/Object;
.source "UkeyProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 899
    invoke-virtual {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType$1;->findValueByNumber(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;
    .locals 1
    .param p1, "number"    # I

    .line 901
    invoke-static {p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    move-result-object v0

    return-object v0
.end method
