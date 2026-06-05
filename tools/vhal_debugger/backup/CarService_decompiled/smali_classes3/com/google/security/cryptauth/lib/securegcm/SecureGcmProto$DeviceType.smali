.class public final enum Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
.super Ljava/lang/Enum;
.source "SecureGcmProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

.field public static final enum ANDROID:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

.field public static final ANDROID_VALUE:I = 0x1

.field public static final enum BROWSER:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

.field public static final BROWSER_VALUE:I = 0x4

.field public static final enum CHROME:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

.field public static final CHROME_VALUE:I = 0x2

.field public static final enum IOS:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

.field public static final IOS_VALUE:I = 0x3

.field public static final enum OSX:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

.field public static final OSX_VALUE:I = 0x5

.field public static final enum UNKNOWN:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

.field public static final UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 111
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->UNKNOWN:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    .line 115
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    const/4 v2, 0x1

    const-string v3, "ANDROID"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->ANDROID:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    .line 119
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    const/4 v3, 0x2

    const-string v4, "CHROME"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->CHROME:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    .line 123
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    const/4 v4, 0x3

    const-string v5, "IOS"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->IOS:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    .line 127
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    const/4 v5, 0x4

    const-string v6, "BROWSER"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->BROWSER:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    .line 131
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    const/4 v6, 0x5

    const-string v7, "OSX"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->OSX:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    .line 106
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    sget-object v7, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->UNKNOWN:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->ANDROID:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->CHROME:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->IOS:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->BROWSER:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->OSX:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    .line 189
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType$1;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType$1;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 199
    iput p3, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->value:I

    .line 200
    return-void
.end method

.method public static forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
    .locals 1
    .param p0, "value"    # I

    .line 173
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->OSX:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    return-object v0

    .line 178
    :cond_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->BROWSER:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    return-object v0

    .line 177
    :cond_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->IOS:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    return-object v0

    .line 176
    :cond_3
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->CHROME:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    return-object v0

    .line 175
    :cond_4
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->ANDROID:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    return-object v0

    .line 174
    :cond_5
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->UNKNOWN:Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;",
            ">;"
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 106
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;
    .locals 1

    .line 106
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/SecureGcmProto$DeviceType;->value:I

    return v0
.end method
