.class public Lcom/chery/media/util/GlideMediaFileData;
.super Ljava/lang/Object;
.source "GlideMediaFileData.java"


# static fields
.field public static final TYPE_IMAGE:I = 0x3

.field public static final TYPE_MUSIC:I = 0x1

.field public static final TYPE_OTHER:I = 0x0

.field public static final TYPE_VIDEO:I = 0x2


# instance fields
.field private final path:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/chery/media/util/GlideMediaFileData;->type:I

    .line 14
    iput-object p1, p0, Lcom/chery/media/util/GlideMediaFileData;->path:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/chery/media/util/GlideMediaFileData;->type:I

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/media/util/GlideMediaFileData;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/media/util/GlideMediaFileData;->type:I

    return p0
.end method
