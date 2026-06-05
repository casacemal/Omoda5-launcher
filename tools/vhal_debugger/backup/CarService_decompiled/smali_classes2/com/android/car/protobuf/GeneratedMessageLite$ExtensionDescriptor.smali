.class final Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/android/car/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtensionDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/car/protobuf/FieldSet$FieldDescriptorLite<",
        "Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final enumTypeMap:Lcom/android/car/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation
.end field

.field final isPacked:Z

.field final isRepeated:Z

.field final number:I

.field final type:Lcom/android/car/protobuf/WireFormat$FieldType;


# direct methods
.method constructor <init>(Lcom/android/car/protobuf/Internal$EnumLiteMap;ILcom/android/car/protobuf/WireFormat$FieldType;ZZ)V
    .locals 0
    .param p2, "number"    # I
    .param p3, "type"    # Lcom/android/car/protobuf/WireFormat$FieldType;
    .param p4, "isRepeated"    # Z
    .param p5, "isPacked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/android/car/protobuf/WireFormat$FieldType;",
            "ZZ)V"
        }
    .end annotation

    .line 924
    .local p1, "enumTypeMap":Lcom/android/car/protobuf/Internal$EnumLiteMap;, "Lcom/android/car/protobuf/Internal$EnumLiteMap<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    iput-object p1, p0, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/android/car/protobuf/Internal$EnumLiteMap;

    .line 926
    iput p2, p0, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    .line 927
    iput-object p3, p0, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/android/car/protobuf/WireFormat$FieldType;

    .line 928
    iput-boolean p4, p0, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    .line 929
    iput-boolean p5, p0, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    .line 930
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I
    .locals 2
    .param p1, "other"    # Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 977
    iget v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iget v1, p1, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 916
    check-cast p1, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;->compareTo(Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I

    move-result p1

    return p1
.end method

.method public getEnumType()Lcom/android/car/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/car/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation

    .line 965
    iget-object v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/android/car/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public getLiteJavaType()Lcom/android/car/protobuf/WireFormat$JavaType;
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/android/car/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/android/car/protobuf/WireFormat$FieldType;->getJavaType()Lcom/android/car/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getLiteType()Lcom/android/car/protobuf/WireFormat$FieldType;
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/android/car/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 940
    iget v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    return v0
.end method

.method public internalMergeFrom(Lcom/android/car/protobuf/MessageLite$Builder;Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite$Builder;
    .locals 2
    .param p1, "to"    # Lcom/android/car/protobuf/MessageLite$Builder;
    .param p2, "from"    # Lcom/android/car/protobuf/MessageLite;

    .line 971
    move-object v0, p1

    check-cast v0, Lcom/android/car/protobuf/GeneratedMessageLite$Builder;

    move-object v1, p2

    check-cast v1, Lcom/android/car/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1}, Lcom/android/car/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/car/protobuf/GeneratedMessageLite;)Lcom/android/car/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isPacked()Z
    .locals 1

    .line 960
    iget-boolean v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return v0
.end method

.method public isRepeated()Z
    .locals 1

    .line 955
    iget-boolean v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    return v0
.end method
