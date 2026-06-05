.class final enum Lcom/android/car/protobuf/WireFormat$Utf8Validation$3;
.super Lcom/android/car/protobuf/WireFormat$Utf8Validation;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/protobuf/WireFormat$Utf8Validation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/protobuf/WireFormat$Utf8Validation;-><init>(Ljava/lang/String;ILcom/android/car/protobuf/WireFormat$1;)V

    return-void
.end method


# virtual methods
.method readString(Lcom/android/car/protobuf/CodedInputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p1}, Lcom/android/car/protobuf/CodedInputStream;->readBytes()Lcom/android/car/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
