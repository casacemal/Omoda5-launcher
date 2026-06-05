.class public final enum Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
.super Ljava/lang/Enum;
.source "BLEOperationProto.java"

# interfaces
.implements Lcom/android/car/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BLEStreamProtos/BLEOperationProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;",
        ">;",
        "Lcom/android/car/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

.field public static final enum ACK:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

.field public static final ACK_VALUE:I = 0x3

.field public static final enum CLIENT_MESSAGE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

.field public static final CLIENT_MESSAGE_VALUE:I = 0x4

.field public static final enum ENCRYPTION_HANDSHAKE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

.field public static final ENCRYPTION_HANDSHAKE_VALUE:I = 0x2

.field public static final enum OPERATION_TYPE_UNKNOWN:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

.field public static final OPERATION_TYPE_UNKNOWN_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

.field private static final internalValueMap:Lcom/android/car/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 31
    new-instance v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    const/4 v1, 0x0

    const-string v2, "OPERATION_TYPE_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->OPERATION_TYPE_UNKNOWN:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    .line 39
    new-instance v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "ENCRYPTION_HANDSHAKE"

    invoke-direct {v0, v4, v2, v3}, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->ENCRYPTION_HANDSHAKE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    .line 48
    new-instance v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    const/4 v4, 0x3

    const-string v5, "ACK"

    invoke-direct {v0, v5, v3, v4}, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->ACK:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    .line 56
    new-instance v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    const/4 v5, 0x4

    const-string v6, "CLIENT_MESSAGE"

    invoke-direct {v0, v6, v4, v5}, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->CLIENT_MESSAGE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    .line 57
    new-instance v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    const-string v6, "UNRECOGNIZED"

    const/4 v7, -0x1

    invoke-direct {v0, v6, v5, v7}, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->UNRECOGNIZED:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    sget-object v6, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->OPERATION_TYPE_UNKNOWN:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->ENCRYPTION_HANDSHAKE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->ACK:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->CLIENT_MESSAGE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->UNRECOGNIZED:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->$VALUES:[Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    .line 124
    new-instance v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType$1;

    invoke-direct {v0}, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType$1;-><init>()V

    sput-object v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->internalValueMap:Lcom/android/car/protobuf/Internal$EnumLiteMap;

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

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 134
    iput p3, p0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->value:I

    .line 135
    return-void
.end method

.method public static forNumber(I)Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
    .locals 1
    .param p0, "value"    # I

    .line 110
    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->CLIENT_MESSAGE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    return-object v0

    .line 113
    :cond_1
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->ACK:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    return-object v0

    .line 112
    :cond_2
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->ENCRYPTION_HANDSHAKE:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    return-object v0

    .line 111
    :cond_3
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->OPERATION_TYPE_UNKNOWN:Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/android/car/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/car/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;",
            ">;"
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->internalValueMap:Lcom/android/car/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-static {p0}, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->forNumber(I)Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    return-object v0
.end method

.method public static values()[Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;
    .locals 1

    .line 20
    sget-object v0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->$VALUES:[Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    invoke-virtual {v0}, [Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/android/car/BLEStreamProtos/BLEOperationProto$OperationType;->value:I

    return v0
.end method
