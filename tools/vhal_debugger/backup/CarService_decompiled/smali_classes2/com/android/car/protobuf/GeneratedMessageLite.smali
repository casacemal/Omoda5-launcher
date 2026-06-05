.class public abstract Lcom/android/car/protobuf/GeneratedMessageLite;
.super Lcom/android/car/protobuf/AbstractMessageLite;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/protobuf/GeneratedMessageLite$MergeFromVisitor;,
        Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;,
        Lcom/android/car/protobuf/GeneratedMessageLite$EqualsVisitor;,
        Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;,
        Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;,
        Lcom/android/car/protobuf/GeneratedMessageLite$SerializedForm;,
        Lcom/android/car/protobuf/GeneratedMessageLite$GeneratedExtension;,
        Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;,
        Lcom/android/car/protobuf/GeneratedMessageLite$ExtendableBuilder;,
        Lcom/android/car/protobuf/GeneratedMessageLite$ExtendableMessage;,
        Lcom/android/car/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;,
        Lcom/android/car/protobuf/GeneratedMessageLite$Builder;,
        Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/car/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/car/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/android/car/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected memoizedSerializedSize:I

.field protected unknownFields:Lcom/android/car/protobuf/UnknownFieldSetLite;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/android/car/protobuf/AbstractMessageLite;-><init>()V

    .line 66
    invoke-static {}, Lcom/android/car/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/car/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/car/protobuf/UnknownFieldSetLite;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/protobuf/ExtensionLite;)Lcom/android/car/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/protobuf/ExtensionLite;

    .line 60
    invoke-static {p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/android/car/protobuf/ExtensionLite;)Lcom/android/car/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    return-object v0
.end method

.method private static checkIsLite(Lcom/android/car/protobuf/ExtensionLite;)Lcom/android/car/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/android/car/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/android/car/protobuf/GeneratedMessageLite$ExtendableBuilder<",
            "TMessageType;TBuilderType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/car/protobuf/ExtensionLite<",
            "TMessageType;TT;>;)",
            "Lcom/android/car/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 1215
    .local p0, "extension":Lcom/android/car/protobuf/ExtensionLite;, "Lcom/android/car/protobuf/ExtensionLite<TMessageType;TT;>;"
    invoke-virtual {p0}, Lcom/android/car/protobuf/ExtensionLite;->isLite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    move-object v0, p0

    check-cast v0, Lcom/android/car/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object v0

    .line 1216
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected a lite extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkMessageInitialized(Lcom/android/car/protobuf/GeneratedMessageLite;)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1354
    .local p0, "message":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1355
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->newUninitializedMessageException()Lcom/android/car/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 1356
    invoke-virtual {v0}, Lcom/android/car/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/android/car/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 1357
    invoke-virtual {v0, p0}, Lcom/android/car/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1359
    :cond_1
    :goto_0
    return-object p0
.end method

.method protected static emptyBooleanList()Lcom/android/car/protobuf/Internal$BooleanList;
    .locals 1

    .line 1277
    invoke-static {}, Lcom/android/car/protobuf/BooleanArrayList;->emptyList()Lcom/android/car/protobuf/BooleanArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyDoubleList()Lcom/android/car/protobuf/Internal$DoubleList;
    .locals 1

    .line 1267
    invoke-static {}, Lcom/android/car/protobuf/DoubleArrayList;->emptyList()Lcom/android/car/protobuf/DoubleArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyFloatList()Lcom/android/car/protobuf/Internal$FloatList;
    .locals 1

    .line 1257
    invoke-static {}, Lcom/android/car/protobuf/FloatArrayList;->emptyList()Lcom/android/car/protobuf/FloatArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyIntList()Lcom/android/car/protobuf/Internal$IntList;
    .locals 1

    .line 1237
    invoke-static {}, Lcom/android/car/protobuf/IntArrayList;->emptyList()Lcom/android/car/protobuf/IntArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyLongList()Lcom/android/car/protobuf/Internal$LongList;
    .locals 1

    .line 1247
    invoke-static {}, Lcom/android/car/protobuf/LongArrayList;->emptyList()Lcom/android/car/protobuf/LongArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyProtobufList()Lcom/android/car/protobuf/Internal$ProtobufList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/car/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1287
    invoke-static {}, Lcom/android/car/protobuf/ProtobufArrayList;->emptyList()Lcom/android/car/protobuf/ProtobufArrayList;

    move-result-object v0

    return-object v0
.end method

.method private final ensureUnknownFieldsInitialized()V
    .locals 2

    .line 173
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/car/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/android/car/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/car/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 174
    invoke-static {}, Lcom/android/car/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/car/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/car/protobuf/UnknownFieldSetLite;

    .line 176
    :cond_0
    return-void
.end method

.method static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Class;

    .line 987
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated message class \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" missing method \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 998
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1005
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 1007
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_0

    .line 1008
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 1010
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected exception thrown by generated accessor method."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1006
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 999
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static final isInitialized(Lcom/android/car/protobuf/GeneratedMessageLite;Z)Z
    .locals 2
    .param p1, "shouldMemoize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1229
    .local p0, "message":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    sget-object v0, Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;->IS_INITIALIZED:Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/car/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static final makeImmutable(Lcom/android/car/protobuf/GeneratedMessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;)V"
        }
    .end annotation

    .line 1233
    .local p0, "message":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    sget-object v0, Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;->MAKE_IMMUTABLE:Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 1234
    return-void
.end method

.method protected static mutableCopy(Lcom/android/car/protobuf/Internal$BooleanList;)Lcom/android/car/protobuf/Internal$BooleanList;
    .locals 2
    .param p0, "list"    # Lcom/android/car/protobuf/Internal$BooleanList;

    .line 1281
    invoke-interface {p0}, Lcom/android/car/protobuf/Internal$BooleanList;->size()I

    move-result v0

    .line 1282
    .local v0, "size":I
    nop

    .line 1283
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1282
    :goto_0
    invoke-interface {p0, v1}, Lcom/android/car/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/android/car/protobuf/Internal$BooleanList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/android/car/protobuf/Internal$DoubleList;)Lcom/android/car/protobuf/Internal$DoubleList;
    .locals 2
    .param p0, "list"    # Lcom/android/car/protobuf/Internal$DoubleList;

    .line 1271
    invoke-interface {p0}, Lcom/android/car/protobuf/Internal$DoubleList;->size()I

    move-result v0

    .line 1272
    .local v0, "size":I
    nop

    .line 1273
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1272
    :goto_0
    invoke-interface {p0, v1}, Lcom/android/car/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/android/car/protobuf/Internal$DoubleList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/android/car/protobuf/Internal$FloatList;)Lcom/android/car/protobuf/Internal$FloatList;
    .locals 2
    .param p0, "list"    # Lcom/android/car/protobuf/Internal$FloatList;

    .line 1261
    invoke-interface {p0}, Lcom/android/car/protobuf/Internal$FloatList;->size()I

    move-result v0

    .line 1262
    .local v0, "size":I
    nop

    .line 1263
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1262
    :goto_0
    invoke-interface {p0, v1}, Lcom/android/car/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/android/car/protobuf/Internal$FloatList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/android/car/protobuf/Internal$IntList;)Lcom/android/car/protobuf/Internal$IntList;
    .locals 2
    .param p0, "list"    # Lcom/android/car/protobuf/Internal$IntList;

    .line 1241
    invoke-interface {p0}, Lcom/android/car/protobuf/Internal$IntList;->size()I

    move-result v0

    .line 1242
    .local v0, "size":I
    nop

    .line 1243
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1242
    :goto_0
    invoke-interface {p0, v1}, Lcom/android/car/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/android/car/protobuf/Internal$IntList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/android/car/protobuf/Internal$LongList;)Lcom/android/car/protobuf/Internal$LongList;
    .locals 2
    .param p0, "list"    # Lcom/android/car/protobuf/Internal$LongList;

    .line 1251
    invoke-interface {p0}, Lcom/android/car/protobuf/Internal$LongList;->size()I

    move-result v0

    .line 1252
    .local v0, "size":I
    nop

    .line 1253
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1252
    :goto_0
    invoke-interface {p0, v1}, Lcom/android/car/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/android/car/protobuf/Internal$LongList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/android/car/protobuf/Internal$ProtobufList;)Lcom/android/car/protobuf/Internal$ProtobufList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/car/protobuf/Internal$ProtobufList<",
            "TE;>;)",
            "Lcom/android/car/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1291
    .local p0, "list":Lcom/android/car/protobuf/Internal$ProtobufList;, "Lcom/android/car/protobuf/Internal$ProtobufList<TE;>;"
    invoke-interface {p0}, Lcom/android/car/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    .line 1292
    .local v0, "size":I
    nop

    .line 1293
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1292
    :goto_0
    invoke-interface {p0, v1}, Lcom/android/car/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/car/protobuf/Internal$ProtobufList;

    move-result-object v1

    return-object v1
.end method

.method public static newRepeatedGeneratedExtension(Lcom/android/car/protobuf/MessageLite;Lcom/android/car/protobuf/MessageLite;Lcom/android/car/protobuf/Internal$EnumLiteMap;ILcom/android/car/protobuf/WireFormat$FieldType;ZLjava/lang/Class;)Lcom/android/car/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 9
    .param p1, "messageDefaultInstance"    # Lcom/android/car/protobuf/MessageLite;
    .param p3, "number"    # I
    .param p4, "type"    # Lcom/android/car/protobuf/WireFormat$FieldType;
    .param p5, "isPacked"    # Z
    .param p6, "singularType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/android/car/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/android/car/protobuf/MessageLite;",
            "Lcom/android/car/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/android/car/protobuf/WireFormat$FieldType;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/android/car/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 906
    .local p0, "containingTypeDefaultInstance":Lcom/android/car/protobuf/MessageLite;, "TContainingType;"
    .local p2, "enumTypeMap":Lcom/android/car/protobuf/Internal$EnumLiteMap;, "Lcom/android/car/protobuf/Internal$EnumLiteMap<*>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 907
    .local v6, "emptyList":Ljava/lang/Object;, "TType;"
    new-instance v7, Lcom/android/car/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v8, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x1

    move-object v0, v8

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/android/car/protobuf/Internal$EnumLiteMap;ILcom/android/car/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, v8

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/car/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/android/car/protobuf/MessageLite;Ljava/lang/Object;Lcom/android/car/protobuf/MessageLite;Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v7
.end method

.method public static newSingularGeneratedExtension(Lcom/android/car/protobuf/MessageLite;Ljava/lang/Object;Lcom/android/car/protobuf/MessageLite;Lcom/android/car/protobuf/Internal$EnumLiteMap;ILcom/android/car/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/android/car/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 8
    .param p2, "messageDefaultInstance"    # Lcom/android/car/protobuf/MessageLite;
    .param p4, "number"    # I
    .param p5, "type"    # Lcom/android/car/protobuf/WireFormat$FieldType;
    .param p6, "singularType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/android/car/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/android/car/protobuf/MessageLite;",
            "Lcom/android/car/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/android/car/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/android/car/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 884
    .local p0, "containingTypeDefaultInstance":Lcom/android/car/protobuf/MessageLite;, "TContainingType;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TType;"
    .local p3, "enumTypeMap":Lcom/android/car/protobuf/Internal$EnumLiteMap;, "Lcom/android/car/protobuf/Internal$EnumLiteMap<*>;"
    new-instance v6, Lcom/android/car/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v7, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/android/car/protobuf/Internal$EnumLiteMap;ILcom/android/car/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/car/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/android/car/protobuf/MessageLite;Ljava/lang/Object;Lcom/android/car/protobuf/MessageLite;Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v6
.end method

.method protected static parseDelimitedFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1468
    .local p0, "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1470
    invoke-static {}, Lcom/android/car/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/car/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 1469
    invoke-static {p0, p1, v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1468
    invoke-static {v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/car/protobuf/GeneratedMessageLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseDelimitedFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1477
    .local p0, "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1478
    invoke-static {p0, p1, p2}, Lcom/android/car/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1477
    invoke-static {v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/car/protobuf/GeneratedMessageLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "data"    # Lcom/android/car/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/car/protobuf/ByteString;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1366
    .local p0, "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1367
    invoke-static {}, Lcom/android/car/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/car/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1366
    invoke-static {v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/car/protobuf/GeneratedMessageLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "data"    # Lcom/android/car/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/car/protobuf/ByteString;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1374
    .local p0, "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/android/car/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/car/protobuf/GeneratedMessageLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/car/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1453
    .local p0, "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {}, Lcom/android/car/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/car/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/car/protobuf/CodedInputStream;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1460
    .local p0, "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1461
    invoke-static {p0, p1, p2}, Lcom/android/car/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1460
    invoke-static {v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/car/protobuf/GeneratedMessageLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1436
    .local p0, "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1437
    invoke-static {p1}, Lcom/android/car/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/car/protobuf/CodedInputStream;

    move-result-object v0

    .line 1438
    invoke-static {}, Lcom/android/car/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/car/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 1437
    invoke-static {p0, v0, v1}, Lcom/android/car/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1436
    invoke-static {v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/car/protobuf/GeneratedMessageLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1445
    .local p0, "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1446
    invoke-static {p1}, Lcom/android/car/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/car/protobuf/CodedInputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/car/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1445
    invoke-static {v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/car/protobuf/GeneratedMessageLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;[B)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1421
    .local p0, "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1422
    invoke-static {}, Lcom/android/car/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/car/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/car/protobuf/GeneratedMessageLite;[BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1421
    invoke-static {v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/car/protobuf/GeneratedMessageLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/android/car/protobuf/GeneratedMessageLite;[BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1429
    .local p0, "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/android/car/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/car/protobuf/GeneratedMessageLite;[BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/car/protobuf/GeneratedMessageLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method private static parsePartialDelimitedFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 6
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1488
    .local p0, "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1489
    .local v0, "firstByte":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1490
    const/4 v1, 0x0

    return-object v1

    .line 1492
    :cond_0
    invoke-static {v0, p1}, Lcom/android/car/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 1495
    .local v0, "size":I
    nop

    .line 1496
    new-instance v1, Lcom/android/car/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v1, p1, v0}, Lcom/android/car/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1497
    .local v1, "limitedInput":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/android/car/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/car/protobuf/CodedInputStream;

    move-result-object v2

    .line 1498
    .local v2, "codedInput":Lcom/android/car/protobuf/CodedInputStream;
    invoke-static {p0, v2, p2}, Lcom/android/car/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v3

    .line 1500
    .local v3, "message":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Lcom/android/car/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1503
    nop

    .line 1504
    return-object v3

    .line 1501
    :catch_0
    move-exception v4

    .line 1502
    .local v4, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v4, v3}, Lcom/android/car/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5

    .line 1493
    .end local v0    # "size":I
    .end local v1    # "limitedInput":Ljava/io/InputStream;
    .end local v2    # "codedInput":Lcom/android/car/protobuf/CodedInputStream;
    .end local v3    # "message":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    .end local v4    # "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    :catch_1
    move-exception v0

    .line 1494
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/car/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/car/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parsePartialFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 4
    .param p1, "data"    # Lcom/android/car/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/car/protobuf/ByteString;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1384
    .local p0, "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Lcom/android/car/protobuf/ByteString;->newCodedInput()Lcom/android/car/protobuf/CodedInputStream;

    move-result-object v0

    .line 1385
    .local v0, "input":Lcom/android/car/protobuf/CodedInputStream;
    invoke-static {p0, v0, p2}, Lcom/android/car/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1387
    .local v1, "message":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/android/car/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1390
    nop

    .line 1391
    return-object v1

    .line 1388
    :catch_0
    move-exception v2

    .line 1389
    .local v2, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/android/car/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local p0    # "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    .end local p1    # "data":Lcom/android/car/protobuf/ByteString;
    .end local p2    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_2
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1392
    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .end local v1    # "message":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    .end local v2    # "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    .restart local p0    # "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    .restart local p1    # "data":Lcom/android/car/protobuf/ByteString;
    .restart local p2    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    :catch_1
    move-exception v0

    .line 1393
    .local v0, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method protected static parsePartialFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/car/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1343
    .local p0, "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {}, Lcom/android/car/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/car/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method static parsePartialFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 3
    .param p1, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/car/protobuf/CodedInputStream;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1326
    .local p0, "instance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    sget-object v0, Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/protobuf/GeneratedMessageLite;

    .line 1328
    .local v0, "result":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    sget-object v1, Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;->MERGE_FROM_STREAM:Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/car/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    invoke-virtual {v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->makeImmutable()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    nop

    .line 1336
    return-object v0

    .line 1330
    :catch_0
    move-exception v1

    .line 1331
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/car/protobuf/InvalidProtocolBufferException;

    if-eqz v2, :cond_0

    .line 1332
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/android/car/protobuf/InvalidProtocolBufferException;

    throw v2

    .line 1334
    :cond_0
    throw v1
.end method

.method private static parsePartialFrom(Lcom/android/car/protobuf/GeneratedMessageLite;[BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 4
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/car/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1404
    .local p0, "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-static {p1}, Lcom/android/car/protobuf/CodedInputStream;->newInstance([B)Lcom/android/car/protobuf/CodedInputStream;

    move-result-object v0

    .line 1405
    .local v0, "input":Lcom/android/car/protobuf/CodedInputStream;
    invoke-static {p0, v0, p2}, Lcom/android/car/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1407
    .local v1, "message":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/android/car/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1410
    nop

    .line 1411
    return-object v1

    .line 1408
    :catch_0
    move-exception v2

    .line 1409
    .local v2, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/android/car/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local p0    # "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    .end local p1    # "data":[B
    .end local p2    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_2
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1412
    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    .end local v1    # "message":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    .end local v2    # "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    .restart local p0    # "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    .restart local p1    # "data":[B
    .restart local p2    # "extensionRegistry":Lcom/android/car/protobuf/ExtensionRegistryLite;
    :catch_1
    move-exception v0

    .line 1413
    .local v0, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    throw v0
.end method


# virtual methods
.method protected dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 1
    .param p1, "method"    # Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 288
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "method"    # Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;

    .line 281
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method equals(Lcom/android/car/protobuf/GeneratedMessageLite$EqualsVisitor;Lcom/android/car/protobuf/MessageLite;)Z
    .locals 2
    .param p1, "visitor"    # Lcom/android/car/protobuf/GeneratedMessageLite$EqualsVisitor;
    .param p2, "other"    # Lcom/android/car/protobuf/MessageLite;

    .line 153
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x1

    if-ne p0, p2, :cond_0

    .line 154
    return v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_1
    move-object v1, p2

    check-cast v1, Lcom/android/car/protobuf/GeneratedMessageLite;

    invoke-virtual {p0, p1, v1}, Lcom/android/car/protobuf/GeneratedMessageLite;->visit(Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;Lcom/android/car/protobuf/GeneratedMessageLite;)V

    .line 162
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 132
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 133
    return v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 137
    return v2

    .line 141
    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/car/protobuf/GeneratedMessageLite$EqualsVisitor;->INSTANCE:Lcom/android/car/protobuf/GeneratedMessageLite$EqualsVisitor;

    move-object v3, p1

    check-cast v3, Lcom/android/car/protobuf/GeneratedMessageLite;

    invoke-virtual {p0, v1, v3}, Lcom/android/car/protobuf/GeneratedMessageLite;->visit(Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;Lcom/android/car/protobuf/GeneratedMessageLite;)V
    :try_end_0
    .catch Lcom/android/car/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    nop

    .line 145
    return v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Lcom/android/car/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;
    return v2
.end method

.method public final getDefaultInstanceForType()Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/car/protobuf/MessageLite;
    .locals 1

    .line 60
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/android/car/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/car/protobuf/Parser<",
            "TMessageType;>;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/protobuf/Parser;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 109
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;-><init>(Lcom/android/car/protobuf/GeneratedMessageLite$1;)V

    .line 111
    .local v0, "visitor":Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;
    invoke-virtual {p0, v0, p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->visit(Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;Lcom/android/car/protobuf/GeneratedMessageLite;)V

    .line 112
    invoke-static {v0}, Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;->access$100(Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;)I

    move-result v1

    iput v1, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    .line 114
    .end local v0    # "visitor":Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;
    :cond_0
    iget v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return v0
.end method

.method hashCode(Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;)I
    .locals 2
    .param p1, "visitor"    # Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;

    .line 119
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    if-nez v0, :cond_0

    .line 120
    invoke-static {p1}, Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;->access$100(Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;)I

    move-result v0

    .line 121
    .local v0, "inProgressHashCode":I
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;->access$102(Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;I)I

    .line 122
    invoke-virtual {p0, p1, p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->visit(Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;Lcom/android/car/protobuf/GeneratedMessageLite;)V

    .line 123
    invoke-static {p1}, Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;->access$100(Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;)I

    move-result v1

    iput v1, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    .line 124
    invoke-static {p1, v0}, Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;->access$102(Lcom/android/car/protobuf/GeneratedMessageLite$HashCodeVisitor;I)I

    .line 126
    .end local v0    # "inProgressHashCode":I
    :cond_0
    iget v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 220
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;->IS_INITIALIZED:Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/android/car/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected makeImmutable()V
    .locals 1

    .line 213
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;->MAKE_IMMUTABLE:Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/car/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Lcom/android/car/protobuf/UnknownFieldSetLite;->makeImmutable()V

    .line 216
    return-void
.end method

.method protected mergeLengthDelimitedField(ILcom/android/car/protobuf/ByteString;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/android/car/protobuf/ByteString;

    .line 205
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 206
    iget-object v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/car/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/protobuf/UnknownFieldSetLite;->mergeLengthDelimitedField(ILcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/UnknownFieldSetLite;

    .line 207
    return-void
.end method

.method protected final mergeUnknownFields(Lcom/android/car/protobuf/UnknownFieldSetLite;)V
    .locals 1
    .param p1, "unknownFields"    # Lcom/android/car/protobuf/UnknownFieldSetLite;

    .line 303
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/car/protobuf/UnknownFieldSetLite;

    invoke-static {v0, p1}, Lcom/android/car/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/android/car/protobuf/UnknownFieldSetLite;Lcom/android/car/protobuf/UnknownFieldSetLite;)Lcom/android/car/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/car/protobuf/UnknownFieldSetLite;

    .line 304
    return-void
.end method

.method protected mergeVarintField(II)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .line 197
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 198
    iget-object v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/car/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/protobuf/UnknownFieldSetLite;->mergeVarintField(II)Lcom/android/car/protobuf/UnknownFieldSetLite;

    .line 199
    return-void
.end method

.method public final newBuilderForType()Lcom/android/car/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/android/car/protobuf/MessageLite$Builder;
    .locals 1

    .line 60
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/android/car/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected parseUnknownField(ILcom/android/car/protobuf/CodedInputStream;)Z
    .locals 2
    .param p1, "tag"    # I
    .param p2, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {p1}, Lcom/android/car/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 186
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 190
    iget-object v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/car/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/android/car/protobuf/CodedInputStream;)Z

    move-result v0

    return v0
.end method

.method public final toBuilder()Lcom/android/car/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/protobuf/GeneratedMessageLite$Builder;

    .line 226
    .local v0, "builder":Lcom/android/car/protobuf/GeneratedMessageLite$Builder;, "TBuilderType;"
    invoke-virtual {v0, p0}, Lcom/android/car/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/car/protobuf/GeneratedMessageLite;)Lcom/android/car/protobuf/GeneratedMessageLite$Builder;

    .line 227
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/android/car/protobuf/MessageLite$Builder;
    .locals 1

    .line 60
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/car/protobuf/GeneratedMessageLite;->toBuilder()Lcom/android/car/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 103
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/car/protobuf/MessageLiteToString;->toString(Lcom/android/car/protobuf/MessageLite;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method visit(Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;Lcom/android/car/protobuf/GeneratedMessageLite;)V
    .locals 2
    .param p1, "visitor"    # Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;",
            "TMessageType;)V"
        }
    .end annotation

    .line 292
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite;, "Lcom/android/car/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    .local p2, "other":Lcom/android/car/protobuf/GeneratedMessageLite;, "TMessageType;"
    sget-object v0, Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;->VISIT:Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/car/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/car/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/car/protobuf/UnknownFieldSetLite;

    iget-object v1, p2, Lcom/android/car/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/car/protobuf/UnknownFieldSetLite;

    invoke-interface {p1, v0, v1}, Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;->visitUnknownFields(Lcom/android/car/protobuf/UnknownFieldSetLite;Lcom/android/car/protobuf/UnknownFieldSetLite;)Lcom/android/car/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/car/protobuf/UnknownFieldSetLite;

    .line 294
    return-void
.end method
