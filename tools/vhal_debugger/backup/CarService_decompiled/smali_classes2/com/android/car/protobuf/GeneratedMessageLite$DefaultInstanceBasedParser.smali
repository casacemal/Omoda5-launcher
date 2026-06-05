.class public Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;
.super Lcom/android/car/protobuf/AbstractParser;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DefaultInstanceBasedParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/car/protobuf/GeneratedMessageLite<",
        "TT;*>;>",
        "Lcom/android/car/protobuf/AbstractParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private defaultInstance:Lcom/android/car/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/car/protobuf/GeneratedMessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1306
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;, "Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser<TT;>;"
    .local p1, "defaultInstance":Lcom/android/car/protobuf/GeneratedMessageLite;, "TT;"
    invoke-direct {p0}, Lcom/android/car/protobuf/AbstractParser;-><init>()V

    .line 1307
    iput-object p1, p0, Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->defaultInstance:Lcom/android/car/protobuf/GeneratedMessageLite;

    .line 1308
    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Lcom/android/car/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/android/car/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 1313
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;, "Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser<TT;>;"
    iget-object v0, p0, Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->defaultInstance:Lcom/android/car/protobuf/GeneratedMessageLite;

    invoke-static {v0, p1, p2}, Lcom/android/car/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/car/protobuf/GeneratedMessageLite;Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1301
    .local p0, "this":Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;, "Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->parsePartialFrom(Lcom/android/car/protobuf/CodedInputStream;Lcom/android/car/protobuf/ExtensionRegistryLite;)Lcom/android/car/protobuf/GeneratedMessageLite;

    move-result-object p1

    return-object p1
.end method
