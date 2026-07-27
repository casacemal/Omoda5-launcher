.class final Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;
.super Landroidx/datastore/preferences/protobuf/ListFieldSchema;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/ListFieldSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListFieldSchemaLite"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;-><init>(Landroidx/datastore/preferences/protobuf/ListFieldSchema$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/ListFieldSchema$1;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;-><init>()V

    return-void
.end method

.method static getProtobufList(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 188
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-object p0
.end method


# virtual methods
.method makeImmutableListAt(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .line 164
    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object p0

    .line 165
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-void
.end method

.method mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "otherMsg",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 170
    invoke-static {p1, p3, p4}, Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object p0

    .line 171
    invoke-static {p2, p3, p4}, Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object p2

    .line 173
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    .line 174
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 176
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 177
    invoke-interface {p0, v1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object p0

    .line 179
    :cond_0
    invoke-interface {p0, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p0

    .line 183
    :cond_2
    invoke-static {p1, p3, p4, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object p0

    .line 152
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 155
    :goto_0
    invoke-interface {p0, v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object p0

    .line 157
    invoke-static {p1, p2, p3, p0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    return-object p0
.end method
