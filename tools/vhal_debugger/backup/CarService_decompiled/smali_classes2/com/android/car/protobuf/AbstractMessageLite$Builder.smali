.class public abstract Lcom/android/car/protobuf/AbstractMessageLite$Builder;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/android/car/protobuf/MessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/protobuf/AbstractMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/protobuf/AbstractMessageLite$Builder$LimitedInputStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/car/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/car/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/android/car/protobuf/MessageLite$Builder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .line 357
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    if-eqz p0, :cond_4

    .line 360
    instance-of v0, p0, Lcom/android/car/protobuf/LazyStringList;

    if-eqz v0, :cond_0

    .line 363
    move-object v0, p0

    check-cast v0, Lcom/android/car/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/android/car/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->checkForNullValues(Ljava/lang/Iterable;)V

    .line 364
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 365
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 366
    invoke-static {p0}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->checkForNullValues(Ljava/lang/Iterable;)V

    .line 367
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 369
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 370
    .local v1, "value":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_2

    .line 373
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 374
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 371
    .restart local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 376
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_3
    :goto_1
    return-void

    .line 358
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static checkForNullValues(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 379
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 380
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 383
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 381
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 384
    .end local v1    # "value":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method protected static newUninitializedMessageException(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/UninitializedMessageException;
    .locals 1
    .param p0, "message"    # Lcom/android/car/protobuf/MessageLite;

    .line 344
    new-instance v0, Lcom/android/car/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/android/car/protobuf/UninitializedMessageException;-><init>(Lcom/android/car/protobuf/MessageLite;)V

    return-object v0
.end method


# virtual methods
.method public abstract clone()Lcom/android/car/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Lcom/android/car/protobuf/MessageLite$Builder;
    .locals 1

    .line 129
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->clone()Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->clone()Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract internalMergeFrom(Lcom/android/car/protobuf/AbstractMessageLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    nop

    .line 322
    invoke-static {}, Lcom/android/car/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/car/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 321
    invoke-virtual {p0, p1, v0}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Z
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 310
    .local v0, "firstByte":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 311
    const/4 v1, 0x0

    return v1

    .line 313
    :cond_0
    invoke-static {v0, p1}, Lcom/android/car/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1

    .line 314
    .local v1, "size":I
    new-instance v2, Lcom/android/car/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v2, p1, v1}, Lcom/android/car/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 315
    .local v2, "limitedInput":Ljava/io/InputStream;
    invoke-virtual {p0, v2, p2}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    .line 316
    const/4 v3, 0x1

    return v3
.end method

.method public mergeFrom(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;
    .locals 3
    .param p1, "data"    # Lcom/android/car/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/protobuf/ByteString;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/android/car/protobuf/ByteString;->newCodedInput()Lcom/android/car/protobuf/CodedInputStream;

    move-result-object v0

    .line 153
    .local v0, "input":Lcom/android/car/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    .line 154
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    return-object p0

    .line 158
    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public mergeFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;
    .locals 3
    .param p1, "data"    # Lcom/android/car/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/protobuf/ByteString;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/android/car/protobuf/ByteString;->newCodedInput()Lcom/android/car/protobuf/CodedInputStream;

    move-result-object v0

    .line 171
    .local v0, "input":Lcom/android/car/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    .line 172
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    return-object p0

    .line 176
    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 174
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 175
    .local v0, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public mergeFrom(Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/protobuf/CodedInputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/android/car/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/car/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public abstract mergeFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/protobuf/CodedInputStream;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public mergeFrom(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .param p1, "other"    # Lcom/android/car/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/protobuf/MessageLite;",
            ")TBuilderType;"
        }
    .end annotation

    .line 328
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->getDefaultInstanceForType()Lcom/android/car/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    move-object v0, p1

    check-cast v0, Lcom/android/car/protobuf/AbstractMessageLite;

    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->internalMergeFrom(Lcom/android/car/protobuf/AbstractMessageLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {p1}, Lcom/android/car/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/car/protobuf/CodedInputStream;

    move-result-object v0

    .line 237
    .local v0, "codedInput":Lcom/android/car/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    .line 238
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 239
    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {p1}, Lcom/android/car/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/car/protobuf/CodedInputStream;

    move-result-object v0

    .line 246
    .local v0, "codedInput":Lcom/android/car/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 248
    return-object p0
.end method

.method public mergeFrom([B)Lcom/android/car/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 185
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom([BII)Lcom/android/car/protobuf/AbstractMessageLite$Builder;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    nop

    .line 193
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/car/protobuf/CodedInputStream;->newInstance([BII)Lcom/android/car/protobuf/CodedInputStream;

    move-result-object v0

    .line 194
    .local v0, "input":Lcom/android/car/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-object p0

    .line 199
    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 198
    .local v0, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public mergeFrom([BIILcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 220
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    nop

    .line 221
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/car/protobuf/CodedInputStream;->newInstance([BII)Lcom/android/car/protobuf/CodedInputStream;

    move-result-object v0

    .line 222
    .local v0, "input":Lcom/android/car/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p4}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    .line 223
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/android/car/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    return-object p0

    .line 227
    .end local v0    # "input":Lcom/android/car/protobuf/CodedInputStream;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 225
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 226
    .local v0, "e":Lcom/android/car/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public mergeFrom([BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/car/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 209
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/car/protobuf/ByteString;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/car/protobuf/CodedInputStream;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite$Builder;
    .locals 0

    .line 129
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/android/car/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/android/car/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/android/car/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/android/car/protobuf/AbstractMessageLite$Builder;, "Lcom/android/car/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/AbstractMessageLite$Builder;->mergeFrom([BLcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method
