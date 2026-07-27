.class public final Lcoil/decode/ResourceMetadata;
.super Lcoil/decode/ImageSource$Metadata;
.source "ImageSource.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcoil/decode/ResourceMetadata;",
        "Lcoil/decode/ImageSource$Metadata;",
        "packageName",
        "",
        "resId",
        "",
        "density",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getPackageName",
        "()Ljava/lang/String;",
        "getResId",
        "()I",
        "getDensity",
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
.field private final density:I

.field private final packageName:Ljava/lang/String;

.field private final resId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 201
    invoke-direct {p0}, Lcoil/decode/ImageSource$Metadata;-><init>()V

    .line 198
    iput-object p1, p0, Lcoil/decode/ResourceMetadata;->packageName:Ljava/lang/String;

    .line 199
    iput p2, p0, Lcoil/decode/ResourceMetadata;->resId:I

    .line 200
    iput p3, p0, Lcoil/decode/ResourceMetadata;->density:I

    return-void
.end method


# virtual methods
.method public final getDensity()I
    .locals 0

    .line 200
    iget p0, p0, Lcoil/decode/ResourceMetadata;->density:I

    return p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 198
    iget-object p0, p0, Lcoil/decode/ResourceMetadata;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getResId()I
    .locals 0

    .line 199
    iget p0, p0, Lcoil/decode/ResourceMetadata;->resId:I

    return p0
.end method
