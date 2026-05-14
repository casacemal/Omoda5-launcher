.class public Lcom/chery/media/util/GlideMediaFileLoader;
.super Ljava/lang/Object;
.source "GlideMediaFileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/util/GlideMediaFileLoader$UriFetcher;,
        Lcom/chery/media/util/GlideMediaFileLoader$GlideMediaFileLoaderFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Lcom/chery/media/util/GlideMediaFileData;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-class v0, Lcom/chery/media/util/GlideMediaFileLoader;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/util/GlideMediaFileLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildLoadData(Lcom/chery/media/util/GlideMediaFileData;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chery/media/util/GlideMediaFileData;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance p0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance p2, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-virtual {p1}, Lcom/chery/media/util/GlideMediaFileData;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance p3, Lcom/chery/media/util/GlideMediaFileLoader$UriFetcher;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p4}, Lcom/chery/media/util/GlideMediaFileLoader$UriFetcher;-><init>(Lcom/chery/media/util/GlideMediaFileData;Lcom/chery/media/util/GlideMediaFileLoader$1;)V

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p0
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0

    .line 20
    check-cast p1, Lcom/chery/media/util/GlideMediaFileData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chery/media/util/GlideMediaFileLoader;->buildLoadData(Lcom/chery/media/util/GlideMediaFileData;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p0

    return-object p0
.end method

.method public handles(Lcom/chery/media/util/GlideMediaFileData;)Z
    .locals 1

    .line 46
    invoke-virtual {p1}, Lcom/chery/media/util/GlideMediaFileData;->getType()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 20
    check-cast p1, Lcom/chery/media/util/GlideMediaFileData;

    invoke-virtual {p0, p1}, Lcom/chery/media/util/GlideMediaFileLoader;->handles(Lcom/chery/media/util/GlideMediaFileData;)Z

    move-result p0

    return p0
.end method
