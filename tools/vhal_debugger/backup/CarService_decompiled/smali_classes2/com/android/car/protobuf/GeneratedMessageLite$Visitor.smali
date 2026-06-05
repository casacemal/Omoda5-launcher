.class public interface abstract Lcom/android/car/protobuf/GeneratedMessageLite$Visitor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Visitor"
.end annotation


# virtual methods
.method public abstract visitBoolean(ZZZZ)Z
.end method

.method public abstract visitBooleanList(Lcom/android/car/protobuf/Internal$BooleanList;Lcom/android/car/protobuf/Internal$BooleanList;)Lcom/android/car/protobuf/Internal$BooleanList;
.end method

.method public abstract visitByteString(ZLcom/android/car/protobuf/ByteString;ZLcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/ByteString;
.end method

.method public abstract visitDouble(ZDZD)D
.end method

.method public abstract visitDoubleList(Lcom/android/car/protobuf/Internal$DoubleList;Lcom/android/car/protobuf/Internal$DoubleList;)Lcom/android/car/protobuf/Internal$DoubleList;
.end method

.method public abstract visitExtensions(Lcom/android/car/protobuf/FieldSet;Lcom/android/car/protobuf/FieldSet;)Lcom/android/car/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/protobuf/FieldSet<",
            "Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;",
            "Lcom/android/car/protobuf/FieldSet<",
            "Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)",
            "Lcom/android/car/protobuf/FieldSet<",
            "Lcom/android/car/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract visitFloat(ZFZF)F
.end method

.method public abstract visitFloatList(Lcom/android/car/protobuf/Internal$FloatList;Lcom/android/car/protobuf/Internal$FloatList;)Lcom/android/car/protobuf/Internal$FloatList;
.end method

.method public abstract visitInt(ZIZI)I
.end method

.method public abstract visitIntList(Lcom/android/car/protobuf/Internal$IntList;Lcom/android/car/protobuf/Internal$IntList;)Lcom/android/car/protobuf/Internal$IntList;
.end method

.method public abstract visitLazyMessage(ZLcom/android/car/protobuf/LazyFieldLite;ZLcom/android/car/protobuf/LazyFieldLite;)Lcom/android/car/protobuf/LazyFieldLite;
.end method

.method public abstract visitList(Lcom/android/car/protobuf/Internal$ProtobufList;Lcom/android/car/protobuf/Internal$ProtobufList;)Lcom/android/car/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/car/protobuf/Internal$ProtobufList<",
            "TT;>;",
            "Lcom/android/car/protobuf/Internal$ProtobufList<",
            "TT;>;)",
            "Lcom/android/car/protobuf/Internal$ProtobufList<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract visitLong(ZJZJ)J
.end method

.method public abstract visitLongList(Lcom/android/car/protobuf/Internal$LongList;Lcom/android/car/protobuf/Internal$LongList;)Lcom/android/car/protobuf/Internal$LongList;
.end method

.method public abstract visitMap(Lcom/android/car/protobuf/MapFieldLite;Lcom/android/car/protobuf/MapFieldLite;)Lcom/android/car/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/car/protobuf/MapFieldLite<",
            "TK;TV;>;",
            "Lcom/android/car/protobuf/MapFieldLite<",
            "TK;TV;>;)",
            "Lcom/android/car/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract visitMessage(Lcom/android/car/protobuf/MessageLite;Lcom/android/car/protobuf/MessageLite;)Lcom/android/car/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/car/protobuf/MessageLite;",
            ">(TT;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract visitOneofBoolean(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofDouble(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofFloat(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofLazyMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofLong(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofNotSet(Z)V
.end method

.method public abstract visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract visitUnknownFields(Lcom/android/car/protobuf/UnknownFieldSetLite;Lcom/android/car/protobuf/UnknownFieldSetLite;)Lcom/android/car/protobuf/UnknownFieldSetLite;
.end method
