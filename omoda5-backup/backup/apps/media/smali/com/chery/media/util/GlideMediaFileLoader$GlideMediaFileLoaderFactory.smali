.class public Lcom/chery/media/util/GlideMediaFileLoader$GlideMediaFileLoaderFactory;
.super Ljava/lang/Object;
.source "GlideMediaFileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/util/GlideMediaFileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlideMediaFileLoaderFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lcom/chery/media/util/GlideMediaFileData;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/chery/media/util/GlideMediaFileData;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance p0, Lcom/chery/media/util/GlideMediaFileLoader;

    invoke-direct {p0}, Lcom/chery/media/util/GlideMediaFileLoader;-><init>()V

    return-object p0
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
