.class public final Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UkeyProto.java"

# interfaces
.implements Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2AlertOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/security/cryptauth/lib/securegcm/UkeyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ukey2Alert"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;,
        Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;",
        ">;",
        "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2AlertOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

.field public static final ERROR_MESSAGE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private errorMessage_:Ljava/lang/String;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1284
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;-><init>()V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    .line 1285
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->makeImmutable()V

    .line 1286
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 692
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 693
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->type_:I

    .line 694
    const-string v0, ""

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->errorMessage_:Ljava/lang/String;

    .line 695
    return-void
.end method

.method static synthetic access$1000(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    .line 687
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->clearErrorMessage()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 687
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->setErrorMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .locals 1

    .line 687
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .param p1, "x1"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    .line 687
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->setType(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    .line 687
    invoke-direct {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->clearType()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .param p1, "x1"    # Ljava/lang/String;

    .line 687
    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method private clearErrorMessage()V
    .locals 1

    .line 984
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    .line 985
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->errorMessage_:Ljava/lang/String;

    .line 986
    return-void
.end method

.method private clearType()V
    .locals 1

    .line 944
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    .line 945
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->type_:I

    .line 946
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .locals 1

    .line 1289
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;
    .locals 1

    .line 1090
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    .line 1093
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;

    invoke-virtual {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1067
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-static {v0, p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1073
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-static {v0, p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1031
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1038
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1078
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1085
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1055
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1062
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1043
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1050
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;",
            ">;"
        }
    .end annotation

    .line 1295
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setErrorMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 974
    if-eqz p1, :cond_0

    .line 977
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    .line 978
    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->errorMessage_:Ljava/lang/String;

    .line 979
    return-void

    .line 975
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setErrorMessageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 992
    if-eqz p1, :cond_0

    .line 995
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    .line 996
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->errorMessage_:Ljava/lang/String;

    .line 997
    return-void

    .line 993
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setType(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;)V
    .locals 1
    .param p1, "value"    # Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    .line 934
    if-eqz p1, :cond_0

    .line 937
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    .line 938
    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->type_:I

    .line 939
    return-void

    .line 935
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1190
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1268
    :pswitch_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    monitor-enter v0

    .line 1269
    :try_start_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 1270
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->PARSER:Lcom/google/protobuf/Parser;

    .line 1272
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1274
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 1218
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 1220
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 1223
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v2, 0x0

    .line 1224
    .local v2, "done":Z
    :goto_1
    if-nez v2, :cond_7

    .line 1225
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1226
    .local v3, "tag":I
    if-eqz v3, :cond_5

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_2

    .line 1231
    invoke-virtual {p0, v3, v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1232
    const/4 v2, 0x1

    goto :goto_2

    .line 1248
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1249
    .local v4, "s":Ljava/lang/String;
    iget v5, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    .line 1250
    iput-object v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->errorMessage_:Ljava/lang/String;

    .line 1251
    goto :goto_2

    .line 1237
    .end local v4    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 1238
    .local v4, "rawValue":I
    invoke-static {v4}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    move-result-object v5

    .line 1239
    .local v5, "value":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;
    const/4 v6, 0x1

    if-nez v5, :cond_4

    .line 1240
    invoke-super {p0, v6, v4}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_2

    .line 1242
    :cond_4
    iget v7, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    .line 1243
    iput v4, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->type_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1245
    goto :goto_2

    .line 1228
    .end local v4    # "rawValue":I
    .end local v5    # "value":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;
    :cond_5
    const/4 v2, 0x1

    .line 1229
    nop

    .line 1254
    .end local v3    # "tag":I
    :cond_6
    :goto_2
    goto :goto_1

    .line 1261
    .end local v2    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 1257
    :catch_0
    move-exception v2

    .line 1258
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1260
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 1255
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 1256
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1261
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p0    # "this":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_3
    throw v2

    .line 1262
    :cond_7
    nop

    .line 1265
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    return-object v0

    .line 1204
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1205
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v1, p3

    check-cast v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    .line 1206
    .local v1, "other":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->hasType()Z

    move-result v2

    iget v3, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->type_:I

    .line 1207
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->hasType()Z

    move-result v4

    iget v5, v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->type_:I

    .line 1206
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->type_:I

    .line 1208
    nop

    .line 1209
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->hasErrorMessage()Z

    move-result v2

    iget-object v3, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->errorMessage_:Ljava/lang/String;

    .line 1210
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->hasErrorMessage()Z

    move-result v4

    iget-object v5, v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->errorMessage_:Ljava/lang/String;

    .line 1208
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->errorMessage_:Ljava/lang/String;

    .line 1211
    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_8

    .line 1213
    iget v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    iget v3, v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    .line 1215
    :cond_8
    return-object p0

    .line 1201
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v1    # "other":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;
    :pswitch_4
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;

    invoke-direct {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$Builder;-><init>(Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$1;)V

    return-object v0

    .line 1198
    :pswitch_5
    return-object v1

    .line 1195
    :pswitch_6
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->DEFAULT_INSTANCE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    return-object v0

    .line 1192
    :pswitch_7
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;

    invoke-direct {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->errorMessage_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1011
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->memoizedSerializedSize:I

    .line 1012
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1014
    :cond_0
    const/4 v0, 0x0

    .line 1015
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1016
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->type_:I

    .line 1017
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1019
    :cond_1
    iget v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 1020
    nop

    .line 1021
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1023
    :cond_2
    iget-object v1, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1024
    iput v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->memoizedSerializedSize:I

    .line 1025
    return v0
.end method

.method public getType()Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;
    .locals 2

    .line 927
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->type_:I

    invoke-static {v0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->forNumber(I)Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    move-result-object v0

    .line 928
    .local v0, "result":Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;->BAD_MESSAGE:Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert$AlertType;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public hasErrorMessage()Z
    .locals 2

    .line 954
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    .line 921
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1001
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1002
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->type_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1004
    :cond_0
    iget v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1005
    invoke-virtual {p0}, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1007
    :cond_1
    iget-object v0, p0, Lcom/google/security/cryptauth/lib/securegcm/UkeyProto$Ukey2Alert;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1008
    return-void
.end method
