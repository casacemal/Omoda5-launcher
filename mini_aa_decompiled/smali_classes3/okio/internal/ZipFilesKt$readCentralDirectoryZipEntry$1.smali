.class final Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ZipFiles.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ZipFilesKt;->readCentralDirectoryZipEntry(Lokio/BufferedSource;)Lokio/internal/ZipEntry;
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
        "headerId",
        "",
        "dataSize",
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
.field final synthetic $compressedSize:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $hasZip64Extra:Lkotlin/jvm/internal/Ref$BooleanRef;

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

.field final synthetic $offset:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $requiredZip64ExtraSize:J

.field final synthetic $size:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $this_readCentralDirectoryZipEntry:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;JLkotlin/jvm/internal/Ref$LongRef;Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "J",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lokio/BufferedSource;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$hasZip64Extra:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-wide p2, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$requiredZip64ExtraSize:J

    iput-object p4, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$size:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p5, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$this_readCentralDirectoryZipEntry:Lokio/BufferedSource;

    iput-object p6, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$compressedSize:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p7, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$offset:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p8, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$ntfsLastModifiedAtFiletime:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p9, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$ntfsLastAccessedAtFiletime:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p10, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$ntfsCreatedAtFiletime:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 233
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->invoke(IJ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(IJ)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-wide/16 v0, 0x4

    cmp-long p1, p2, v0

    if-ltz p1, :cond_1

    .line 255
    iget-object p1, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$this_readCentralDirectoryZipEntry:Lokio/BufferedSource;

    invoke-interface {p1, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 259
    iget-object p1, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$this_readCentralDirectoryZipEntry:Lokio/BufferedSource;

    sub-long/2addr p2, v0

    long-to-int p2, p2

    new-instance p3, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1$1;

    iget-object v0, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$ntfsLastModifiedAtFiletime:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$this_readCentralDirectoryZipEntry:Lokio/BufferedSource;

    iget-object v2, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$ntfsLastAccessedAtFiletime:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$ntfsCreatedAtFiletime:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3, v0, v1, v2, p0}, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, p2, p3}, Lokio/internal/ZipFilesKt;->access$readExtra(Lokio/BufferedSource;ILkotlin/jvm/functions/Function2;)V

    goto :goto_2

    .line 253
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: NTFS extra too short"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 236
    :cond_2
    iget-object p1, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$hasZip64Extra:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_7

    .line 239
    iget-object p1, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$hasZip64Extra:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 241
    iget-wide v0, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$requiredZip64ExtraSize:J

    cmp-long p1, p2, v0

    if-ltz p1, :cond_6

    .line 246
    iget-object p1, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$size:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide p2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide v0, 0xffffffffL

    cmp-long p2, p2, v0

    if-nez p2, :cond_3

    iget-object p2, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$this_readCentralDirectoryZipEntry:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p2

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$size:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide p2, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    :goto_0
    iput-wide p2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 247
    iget-object p1, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$compressedSize:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide p2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long p2, p2, v0

    const-wide/16 v2, 0x0

    if-nez p2, :cond_4

    iget-object p2, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$this_readCentralDirectoryZipEntry:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p2

    goto :goto_1

    :cond_4
    move-wide p2, v2

    :goto_1
    iput-wide p2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 248
    iget-object p1, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$offset:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide p2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_5

    iget-object p0, p0, Lokio/internal/ZipFilesKt$readCentralDirectoryZipEntry$1;->$this_readCentralDirectoryZipEntry:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v2

    :cond_5
    iput-wide v2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    :goto_2
    return-void

    .line 242
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: zip64 extra too short"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 237
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: zip64 extra repeated"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
