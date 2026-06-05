.class public Lcom/android/car/protobuf/LazyFieldLite;
.super Ljava/lang/Object;
.source "LazyFieldLite.java"


# static fields
.field private static final EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;


# instance fields
.field private delayedBytes:Lcom/android/car/protobuf/ByteString;

.field private extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

.field private volatile memoizedBytes:Lcom/android/car/protobuf/ByteString;

.field protected volatile value:Lcom/android/car/protobuf/MessageLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    invoke-static {}, Lcom/android/car/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/car/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/android/car/protobuf/LazyFieldLite;->EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/android/car/protobuf/ExtensionRegistryLite;Lcom/android/car/protobuf/ByteString;)V
    .locals 0
    .param p1, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .param p2, "bytes"    # Lcom/android/car/protobuf/ByteString;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-static {p1, p2}, Lcom/android/car/protobuf/LazyFieldLite;->checkArguments(Lcom/android/car/protobuf/ExtensionRegistryLite;Lcom/android/car/protobuf/ByteString;)V

    .line 118
    iput-object p1, p0, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    .line 119
    iput-object p2, p0, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    .line 120
    return-void
.end method

.method private static checkArguments(Lcom/android/car/protobuf/ExtensionRegistryLite;Lcom/android/car/protobuf/ByteString;)V
    .locals 2
    .param p0, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .param p1, "bytes"    # Lcom/android/car/protobuf/ByteString;

    .line 451
    if-eqz p0, :cond_1

    .line 454
    if-eqz p1, :cond_0

    .line 457
    return-void

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "found null ByteString"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "found null ExtensionRegistry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromValue(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/LazyFieldLite;
    .locals 1
    .param p0, "value"    # Lcom/android/car/protobuf/MessageLite;

    .line 133
    new-instance v0, Lcom/android/car/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/android/car/protobuf/LazyFieldLite;-><init>()V

    .line 134
    .local v0, "lf":Lcom/android/car/protobuf/LazyFieldLite;
    invoke-virtual {v0, p0}, Lcom/android/car/protobuf/LazyFieldLite;->setValue(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;

    .line 135
    return-object v0
.end method

.method private static mergeValueAndBytes(Lcom/android/car/protobuf/MessageLite;Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p0, "value"    # Lcom/android/car/protobuf/MessageLite;
    .param p1, "otherBytes"    # Lcom/android/car/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;

    .line 355
    :try_start_0
    invoke-interface {p0}, Lcom/android/car/protobuf/MessageLite;->toBuilder()Lcom/android/car/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/car/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/car/protobuf/MessageLite$Builder;->build()Lcom/android/car/protobuf/MessageLite;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 356
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    .line 194
    iput-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    .line 195
    iput-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    .line 196
    return-void
.end method

.method public containsDefaultInstance()Z
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    sget-object v1, Lcom/android/car/protobuf/ByteString;->EMPTY:Lcom/android/car/protobuf/ByteString;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/car/protobuf/ByteString;->EMPTY:Lcom/android/car/protobuf/ByteString;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected ensureInitialized(Lcom/android/car/protobuf/MessageLite;)V
    .locals 3
    .param p1, "defaultInstance"    # Lcom/android/car/protobuf/MessageLite;

    .line 422
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    if-eqz v0, :cond_0

    .line 423
    return-void

    .line 425
    :cond_0
    monitor-enter p0

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    if-eqz v0, :cond_1

    .line 427
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 430
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 432
    invoke-interface {p1}, Lcom/android/car/protobuf/MessageLite;->getParserForType()Lcom/android/car/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    iget-object v2, p0, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    .line 433
    invoke-interface {v0, v1, v2}, Lcom/android/car/protobuf/Parser;->parseFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/protobuf/MessageLite;

    .line 434
    .local v0, "parsedValue":Lcom/android/car/protobuf/MessageLite;
    iput-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    .line 435
    iget-object v1, p0, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    iput-object v1, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    .line 436
    .end local v0    # "parsedValue":Lcom/android/car/protobuf/MessageLite;
    goto :goto_0

    .line 437
    :cond_2
    iput-object p1, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    .line 438
    sget-object v0, Lcom/android/car/protobuf/ByteString;->EMPTY:Lcom/android/car/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;
    :try_end_1
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    :goto_0
    goto :goto_1

    .line 440
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    :try_start_2
    iput-object p1, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    .line 444
    sget-object v1, Lcom/android/car/protobuf/ByteString;->EMPTY:Lcom/android/car/protobuf/ByteString;

    iput-object v1, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    .line 446
    .end local v0    # "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    :goto_1
    monitor-exit p0

    .line 447
    return-void

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 140
    if-ne p0, p1, :cond_0

    .line 141
    const/4 v0, 0x1

    return v0

    .line 144
    :cond_0
    instance-of v0, p1, Lcom/android/car/protobuf/LazyFieldLite;

    if-nez v0, :cond_1

    .line 145
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/car/protobuf/LazyFieldLite;

    .line 154
    .local v0, "other":Lcom/android/car/protobuf/LazyFieldLite;
    iget-object v1, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    .line 155
    .local v1, "value1":Lcom/android/car/protobuf/MessageLite;
    iget-object v2, v0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    .line 156
    .local v2, "value2":Lcom/android/car/protobuf/MessageLite;
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/android/car/protobuf/LazyFieldLite;->toByteString()Lcom/android/car/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/car/protobuf/LazyFieldLite;->toByteString()Lcom/android/car/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/car/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 158
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 160
    :cond_3
    if-eqz v1, :cond_4

    .line 161
    invoke-interface {v1}, Lcom/android/car/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/android/car/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/car/protobuf/LazyFieldLite;->getValue(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 163
    :cond_4
    invoke-interface {v2}, Lcom/android/car/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/android/car/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/car/protobuf/LazyFieldLite;->getValue(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public getSerializedSize()I
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/car/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {v0}, Lcom/android/car/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/car/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    .line 389
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getValue(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;
    .locals 1
    .param p1, "defaultInstance"    # Lcom/android/car/protobuf/MessageLite;

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/LazyFieldLite;->ensureInitialized(Lcom/android/car/protobuf/MessageLite;)V

    .line 225
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public merge(Lcom/android/car/protobuf/LazyFieldLite;)V
    .locals 3
    .param p1, "other"    # Lcom/android/car/protobuf/LazyFieldLite;

    .line 251
    invoke-virtual {p1}, Lcom/android/car/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/LazyFieldLite;->set(Lcom/android/car/protobuf/LazyFieldLite;)V

    .line 257
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p1, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    iput-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    if-eqz v1, :cond_3

    .line 272
    invoke-virtual {v0, v1}, Lcom/android/car/protobuf/ByteString;->concat(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    .line 273
    return-void

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    if-eqz v0, :cond_4

    .line 280
    iget-object v0, p1, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    iget-object v1, p0, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    iget-object v2, p0, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/android/car/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/android/car/protobuf/MessageLite;Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/LazyFieldLite;->setValue(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;

    .line 281
    return-void

    .line 282
    :cond_4
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    if-nez v0, :cond_5

    .line 283
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    iget-object v1, p1, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    iget-object v2, p1, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/android/car/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/android/car/protobuf/MessageLite;Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/LazyFieldLite;->setValue(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;

    .line 284
    return-void

    .line 299
    :cond_5
    iget-object v0, p1, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    if-eqz v0, :cond_6

    .line 300
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    invoke-virtual {p1}, Lcom/android/car/protobuf/LazyFieldLite;->toByteString()Lcom/android/car/protobuf/ByteString;

    move-result-object v1

    iget-object v2, p1, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/android/car/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/android/car/protobuf/MessageLite;Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/LazyFieldLite;->setValue(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;

    .line 301
    return-void

    .line 302
    :cond_6
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    if-eqz v0, :cond_7

    .line 303
    iget-object v0, p1, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    invoke-virtual {p0}, Lcom/android/car/protobuf/LazyFieldLite;->toByteString()Lcom/android/car/protobuf/ByteString;

    move-result-object v1

    iget-object v2, p0, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/android/car/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/android/car/protobuf/MessageLite;Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/LazyFieldLite;->setValue(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;

    .line 304
    return-void

    .line 307
    :cond_7
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    invoke-virtual {p1}, Lcom/android/car/protobuf/LazyFieldLite;->toByteString()Lcom/android/car/protobuf/ByteString;

    move-result-object v1

    sget-object v2, Lcom/android/car/protobuf/LazyFieldLite;->EMPTY_REGISTRY:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/android/car/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/android/car/protobuf/MessageLite;Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/LazyFieldLite;->setValue(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;

    .line 308
    return-void
.end method

.method public mergeFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .param p1, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/android/car/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p1}, Lcom/android/car/protobuf/CodedInputStream;->readBytes()Lcom/android/car/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/car/protobuf/LazyFieldLite;->setByteString(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)V

    .line 322
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_1

    .line 328
    iput-object p2, p0, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {p1}, Lcom/android/car/protobuf/CodedInputStream;->readBytes()Lcom/android/car/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/protobuf/ByteString;->concat(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/ByteString;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, v0, v1}, Lcom/android/car/protobuf/LazyFieldLite;->setByteString(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)V

    .line 338
    return-void

    .line 345
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/car/protobuf/MessageLite;->toBuilder()Lcom/android/car/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/car/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/car/protobuf/MessageLite$Builder;->build()Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/LazyFieldLite;->setValue(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;
    :try_end_0
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 350
    :goto_0
    return-void
.end method

.method public set(Lcom/android/car/protobuf/LazyFieldLite;)V
    .locals 1
    .param p1, "other"    # Lcom/android/car/protobuf/LazyFieldLite;

    .line 205
    iget-object v0, p1, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    .line 206
    iget-object v0, p1, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    iput-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    .line 207
    iget-object v0, p1, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    .line 212
    iget-object v0, p1, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    if-eqz v0, :cond_0

    .line 213
    iput-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    .line 215
    :cond_0
    return-void
.end method

.method public setByteString(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p1, "bytes"    # Lcom/android/car/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;

    .line 367
    invoke-static {p2, p1}, Lcom/android/car/protobuf/LazyFieldLite;->checkArguments(Lcom/android/car/protobuf/ExtensionRegistryLite;Lcom/android/car/protobuf/ByteString;)V

    .line 368
    iput-object p1, p0, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    .line 369
    iput-object p2, p0, Lcom/android/car/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/car/protobuf/ExtensionRegistryLite;

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    .line 371
    iput-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    .line 372
    return-void
.end method

.method public setValue(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;
    .locals 2
    .param p1, "value"    # Lcom/android/car/protobuf/MessageLite;

    .line 235
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    .line 236
    .local v0, "originalValue":Lcom/android/car/protobuf/MessageLite;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    .line 237
    iput-object v1, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    .line 238
    iput-object p1, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    .line 239
    return-object v0
.end method

.method public toByteString()Lcom/android/car/protobuf/ByteString;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    return-object v0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/car/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 403
    return-object v0

    .line 405
    :cond_1
    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    if-nez v0, :cond_3

    .line 410
    sget-object v0, Lcom/android/car/protobuf/ByteString;->EMPTY:Lcom/android/car/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    goto :goto_0

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->value:Lcom/android/car/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/car/protobuf/MessageLite;->toByteString()Lcom/android/car/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    .line 414
    :goto_0
    iget-object v0, p0, Lcom/android/car/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/car/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
