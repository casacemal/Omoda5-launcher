.class final Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ZipFiles.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->invoke(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "attributeId",
        "",
        "attributeSize",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $ntfsCreatedAtFiletime:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ntfsLastAccessedAtFiletime:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ntfsLastModifiedAtFiletime:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_readCentralDirectoryZipEntry:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;",
            "Lokio/BufferedSource;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1$1;->$ntfsLastModifiedAtFiletime:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1$1;->$this_readCentralDirectoryZipEntry:Lokio/BufferedSource;

    iput-object p3, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1$1;->$ntfsLastAccessedAtFiletime:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1$1;->$ntfsCreatedAtFiletime:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 259
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1$1;->invoke(IJ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(IJ)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 262
    iget-object p1, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1$1;->$ntfsLastModifiedAtFiletime:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p1, :cond_1

    const-wide/16 v0, 0x18

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    .line 270
    iget-object p1, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1$1;->$ntfsLastModifiedAtFiletime:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1$1;->$this_readCentralDirectoryZipEntry:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 271
    iget-object p1, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1$1;->$ntfsLastAccessedAtFiletime:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1$1;->$this_readCentralDirectoryZipEntry:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 272
    iget-object p1, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1$1;->$ntfsCreatedAtFiletime:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1$1;->$this_readCentralDirectoryZipEntry:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    .line 267
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: NTFS extra attribute tag 0x0001 size != 24"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 263
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: NTFS extra attribute tag 0x0001 repeated"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
