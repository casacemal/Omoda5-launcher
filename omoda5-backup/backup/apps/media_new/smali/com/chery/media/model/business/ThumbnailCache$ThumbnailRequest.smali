.class public Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;
.super Ljava/lang/Object;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/ThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailRequest"
.end annotation


# instance fields
.field public opt:Ljava/lang/Object;

.field public path:Ljava/lang/String;

.field public response:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;

.field public size:Landroid/util/Size;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;-><init>(Ljava/lang/String;Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;Landroid/util/Size;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;Landroid/util/Size;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;-><init>(Ljava/lang/String;Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;Landroid/util/Size;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;Landroid/util/Size;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->path:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->response:Lcom/chery/media/model/business/ThumbnailCache$ThumbnailResponse;

    .line 61
    iput-object p3, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->size:Landroid/util/Size;

    .line 62
    iput-object p4, p0, Lcom/chery/media/model/business/ThumbnailCache$ThumbnailRequest;->opt:Ljava/lang/Object;

    return-void
.end method
