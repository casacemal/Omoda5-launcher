.class Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;
.super Ljava/util/AbstractList;
.source "LazyStringArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/protobuf/LazyStringArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteStringListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/android/car/protobuf/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final list:Lcom/android/car/protobuf/LazyStringArrayList;


# direct methods
.method constructor <init>(Lcom/android/car/protobuf/LazyStringArrayList;)V
    .locals 0
    .param p1, "list"    # Lcom/android/car/protobuf/LazyStringArrayList;

    .line 375
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 376
    iput-object p1, p0, Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/android/car/protobuf/LazyStringArrayList;

    .line 377
    return-void
.end method


# virtual methods
.method public add(ILcom/android/car/protobuf/ByteString;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/android/car/protobuf/ByteString;

    .line 398
    iget-object v0, p0, Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/android/car/protobuf/LazyStringArrayList;

    invoke-static {v0, p1, p2}, Lcom/android/car/protobuf/LazyStringArrayList;->access$500(Lcom/android/car/protobuf/LazyStringArrayList;ILcom/android/car/protobuf/ByteString;)V

    .line 399
    iget v0, p0, Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 400
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 371
    check-cast p2, Lcom/android/car/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;->add(ILcom/android/car/protobuf/ByteString;)V

    return-void
.end method

.method public get(I)Lcom/android/car/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 381
    iget-object v0, p0, Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/android/car/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/android/car/protobuf/LazyStringArrayList;->getByteString(I)Lcom/android/car/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;->get(I)Lcom/android/car/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lcom/android/car/protobuf/ByteString;
    .locals 2
    .param p1, "index"    # I

    .line 404
    iget-object v0, p0, Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/android/car/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/android/car/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 406
    invoke-static {v0}, Lcom/android/car/protobuf/LazyStringArrayList;->access$400(Ljava/lang/Object;)Lcom/android/car/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;->remove(I)Lcom/android/car/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public set(ILcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/ByteString;
    .locals 2
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/android/car/protobuf/ByteString;

    .line 391
    iget-object v0, p0, Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/android/car/protobuf/LazyStringArrayList;

    invoke-static {v0, p1, p2}, Lcom/android/car/protobuf/LazyStringArrayList;->access$300(Lcom/android/car/protobuf/LazyStringArrayList;ILcom/android/car/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    .line 392
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;->modCount:I

    .line 393
    invoke-static {v0}, Lcom/android/car/protobuf/LazyStringArrayList;->access$400(Ljava/lang/Object;)Lcom/android/car/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 371
    check-cast p2, Lcom/android/car/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;->set(ILcom/android/car/protobuf/ByteString;)Lcom/android/car/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/android/car/protobuf/LazyStringArrayList$ByteStringListView;->list:Lcom/android/car/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Lcom/android/car/protobuf/LazyStringArrayList;->size()I

    move-result v0

    return v0
.end method
