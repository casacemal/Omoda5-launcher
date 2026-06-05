.class public final enum Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;
.super Ljava/lang/Enum;
.source "UkeyProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlertType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

.field public static final enum BAD_HANDSHAKE_CIPHER:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

.field public static final BAD_HANDSHAKE_CIPHER_VALUE:I = 0x66

.field public static final enum BAD_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

.field public static final enum BAD_MESSAGE_DATA:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

.field public static final BAD_MESSAGE_DATA_VALUE:I = 0x4

.field public static final enum BAD_MESSAGE_TYPE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

.field public static final BAD_MESSAGE_TYPE_VALUE:I = 0x2

.field public static final BAD_MESSAGE_VALUE:I = 0x1

.field public static final enum BAD_NEXT_PROTOCOL:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

.field public static final BAD_NEXT_PROTOCOL_VALUE:I = 0x67

.field public static final enum BAD_PUBLIC_KEY:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

.field public static final BAD_PUBLIC_KEY_VALUE:I = 0x68

.field public static final enum BAD_RANDOM:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

.field public static final BAD_RANDOM_VALUE:I = 0x65

.field public static final enum BAD_VERSION:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

.field public static final BAD_VERSION_VALUE:I = 0x64

.field public static final enum INCORRECT_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

.field public static final INCORRECT_MESSAGE_VALUE:I = 0x3

.field public static final enum INTERNAL_ERROR:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

.field public static final INTERNAL_ERROR_VALUE:I = 0xc8

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 708
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "BAD_MESSAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    .line 716
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const/4 v3, 0x2

    const-string v4, "BAD_MESSAGE_TYPE"

    invoke-direct {v0, v4, v2, v3}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE_TYPE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    .line 724
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const/4 v4, 0x3

    const-string v5, "INCORRECT_MESSAGE"

    invoke-direct {v0, v5, v3, v4}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->INCORRECT_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    .line 732
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const/4 v5, 0x4

    const-string v6, "BAD_MESSAGE_DATA"

    invoke-direct {v0, v6, v4, v5}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE_DATA:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    .line 740
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const-string v6, "BAD_VERSION"

    const/16 v7, 0x64

    invoke-direct {v0, v6, v5, v7}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_VERSION:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    .line 748
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const/4 v6, 0x5

    const-string v7, "BAD_RANDOM"

    const/16 v8, 0x65

    invoke-direct {v0, v7, v6, v8}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_RANDOM:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    .line 756
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const/4 v7, 0x6

    const-string v8, "BAD_HANDSHAKE_CIPHER"

    const/16 v9, 0x66

    invoke-direct {v0, v8, v7, v9}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_HANDSHAKE_CIPHER:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    .line 764
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const/4 v8, 0x7

    const-string v9, "BAD_NEXT_PROTOCOL"

    const/16 v10, 0x67

    invoke-direct {v0, v9, v8, v10}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_NEXT_PROTOCOL:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    .line 772
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const/16 v9, 0x8

    const-string v10, "BAD_PUBLIC_KEY"

    const/16 v11, 0x68

    invoke-direct {v0, v10, v9, v11}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_PUBLIC_KEY:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    .line 780
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    const/16 v10, 0x9

    const-string v11, "INTERNAL_ERROR"

    const/16 v12, 0xc8

    invoke-direct {v0, v11, v10, v12}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->INTERNAL_ERROR:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    .line 699
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    sget-object v11, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    aput-object v11, v0, v1

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE_TYPE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->INCORRECT_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE_DATA:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_VERSION:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_RANDOM:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_HANDSHAKE_CIPHER:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_NEXT_PROTOCOL:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_PUBLIC_KEY:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->INTERNAL_ERROR:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    .line 898
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType$1;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType$1;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 907
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 908
    iput p3, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->value:I

    .line 909
    return-void
.end method

.method public static forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;
    .locals 1
    .param p0, "value"    # I

    .line 878
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 889
    const/4 v0, 0x0

    return-object v0

    .line 887
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_PUBLIC_KEY:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    return-object v0

    .line 886
    :pswitch_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_NEXT_PROTOCOL:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    return-object v0

    .line 885
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_HANDSHAKE_CIPHER:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    return-object v0

    .line 884
    :pswitch_3
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_RANDOM:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    return-object v0

    .line 883
    :pswitch_4
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_VERSION:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    return-object v0

    .line 888
    :cond_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->INTERNAL_ERROR:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    return-object v0

    .line 882
    :cond_1
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE_DATA:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    return-object v0

    .line 881
    :cond_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->INCORRECT_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    return-object v0

    .line 880
    :cond_3
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE_TYPE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    return-object v0

    .line 879
    :cond_4
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;",
            ">;"
        }
    .end annotation

    .line 895
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 874
    invoke-static {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 699
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    return-object v0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;
    .locals 1

    .line 699
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 866
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->value:I

    return v0
.end method
