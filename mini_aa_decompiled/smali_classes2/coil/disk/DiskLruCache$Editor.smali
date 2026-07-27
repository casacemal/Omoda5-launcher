.class public final Lcoil/disk/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/disk/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\ncoil/disk/DiskLruCache$Editor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,869:1\n1#2:870\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0018\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014J\u000c\u0010\u0016\u001a\u0008\u0018\u00010\u0017R\u00020\u0004J\u0006\u0010\u0018\u001a\u00020\u0014J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\nH\u0002R\u0015\u0010\u0002\u001a\u00060\u0003R\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcoil/disk/DiskLruCache$Editor;",
        "",
        "entry",
        "Lcoil/disk/DiskLruCache$Entry;",
        "Lcoil/disk/DiskLruCache;",
        "<init>",
        "(Lcoil/disk/DiskLruCache;Lcoil/disk/DiskLruCache$Entry;)V",
        "getEntry",
        "()Lcoil/disk/DiskLruCache$Entry;",
        "closed",
        "",
        "written",
        "",
        "getWritten",
        "()[Z",
        "file",
        "Lokio/Path;",
        "index",
        "",
        "detach",
        "",
        "commit",
        "commitAndGet",
        "Lcoil/disk/DiskLruCache$Snapshot;",
        "abort",
        "complete",
        "success",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private closed:Z

.field private final entry:Lcoil/disk/DiskLruCache$Entry;

.field final synthetic this$0:Lcoil/disk/DiskLruCache;

.field private final written:[Z


# direct methods
.method public constructor <init>(Lcoil/disk/DiskLruCache;Lcoil/disk/DiskLruCache$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/disk/DiskLruCache$Entry;",
            ")V"
        }
    .end annotation

    .line 708
    iput-object p1, p0, Lcoil/disk/DiskLruCache$Editor;->this$0:Lcoil/disk/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcoil/disk/DiskLruCache$Editor;->entry:Lcoil/disk/DiskLruCache$Entry;

    .line 715
    invoke-static {p1}, Lcoil/disk/DiskLruCache;->access$getValueCount$p(Lcoil/disk/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcoil/disk/DiskLruCache$Editor;->written:[Z

    return-void
.end method

.method private final complete(Z)V
    .locals 2

    .line 765
    iget-object v0, p0, Lcoil/disk/DiskLruCache$Editor;->this$0:Lcoil/disk/DiskLruCache;

    monitor-enter v0

    .line 766
    :try_start_0
    iget-boolean v1, p0, Lcoil/disk/DiskLruCache$Editor;->closed:Z

    if-nez v1, :cond_1

    .line 767
    iget-object v1, p0, Lcoil/disk/DiskLruCache$Editor;->entry:Lcoil/disk/DiskLruCache$Entry;

    invoke-virtual {v1}, Lcoil/disk/DiskLruCache$Entry;->getCurrentEditor()Lcoil/disk/DiskLruCache$Editor;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    invoke-static {v0, p0, p1}, Lcoil/disk/DiskLruCache;->access$completeEdit(Lcoil/disk/DiskLruCache;Lcoil/disk/DiskLruCache$Editor;Z)V

    :cond_0
    const/4 p1, 0x1

    .line 770
    iput-boolean p1, p0, Lcoil/disk/DiskLruCache$Editor;->closed:Z

    .line 771
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    monitor-exit v0

    return-void

    .line 766
    :cond_1
    :try_start_1
    const-string p0, "editor is closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 765
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final abort()V
    .locals 1

    const/4 v0, 0x0

    .line 759
    invoke-direct {p0, v0}, Lcoil/disk/DiskLruCache$Editor;->complete(Z)V

    return-void
.end method

.method public final commit()V
    .locals 1

    const/4 v0, 0x1

    .line 743
    invoke-direct {p0, v0}, Lcoil/disk/DiskLruCache$Editor;->complete(Z)V

    return-void
.end method

.method public final commitAndGet()Lcoil/disk/DiskLruCache$Snapshot;
    .locals 1

    .line 749
    iget-object v0, p0, Lcoil/disk/DiskLruCache$Editor;->this$0:Lcoil/disk/DiskLruCache;

    monitor-enter v0

    .line 750
    :try_start_0
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache$Editor;->commit()V

    .line 751
    iget-object p0, p0, Lcoil/disk/DiskLruCache$Editor;->entry:Lcoil/disk/DiskLruCache$Entry;

    invoke-virtual {p0}, Lcoil/disk/DiskLruCache$Entry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcoil/disk/DiskLruCache;->get(Ljava/lang/String;)Lcoil/disk/DiskLruCache$Snapshot;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final detach()V
    .locals 1

    .line 734
    iget-object v0, p0, Lcoil/disk/DiskLruCache$Editor;->entry:Lcoil/disk/DiskLruCache$Entry;

    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->getCurrentEditor()Lcoil/disk/DiskLruCache$Editor;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object p0, p0, Lcoil/disk/DiskLruCache$Editor;->entry:Lcoil/disk/DiskLruCache$Entry;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcoil/disk/DiskLruCache$Entry;->setZombie(Z)V

    :cond_0
    return-void
.end method

.method public final file(I)Lokio/Path;
    .locals 3

    .line 722
    iget-object v0, p0, Lcoil/disk/DiskLruCache$Editor;->this$0:Lcoil/disk/DiskLruCache;

    monitor-enter v0

    .line 723
    :try_start_0
    iget-boolean v1, p0, Lcoil/disk/DiskLruCache$Editor;->closed:Z

    if-nez v1, :cond_0

    .line 724
    iget-object v1, p0, Lcoil/disk/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 725
    iget-object p0, p0, Lcoil/disk/DiskLruCache$Editor;->entry:Lcoil/disk/DiskLruCache$Entry;

    invoke-virtual {p0}, Lcoil/disk/DiskLruCache$Entry;->getDirtyFiles()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0}, Lcoil/disk/DiskLruCache;->access$getFileSystem$p(Lcoil/disk/DiskLruCache;)Lcoil/disk/DiskLruCache$fileSystem$1;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lokio/Path;

    check-cast p1, Lokio/FileSystem;

    invoke-static {p1, v1}, Lcoil/util/-FileSystems;->createFile(Lokio/FileSystem;Lokio/Path;)V

    check-cast p0, Lokio/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 723
    :cond_0
    :try_start_1
    const-string p0, "editor is closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 725
    monitor-exit v0

    throw p0
.end method

.method public final getEntry()Lcoil/disk/DiskLruCache$Entry;
    .locals 0

    .line 708
    iget-object p0, p0, Lcoil/disk/DiskLruCache$Editor;->entry:Lcoil/disk/DiskLruCache$Entry;

    return-object p0
.end method

.method public final getWritten()[Z
    .locals 0

    .line 715
    iget-object p0, p0, Lcoil/disk/DiskLruCache$Editor;->written:[Z

    return-object p0
.end method
