.class public final Lcoil/size/-Dimensions;
.super Ljava/lang/Object;
.source "Dimension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007H\u0086\u0008\u00a8\u0006\u0008"
    }
    d2 = {
        "Dimension",
        "Lcoil/size/Dimension$Pixels;",
        "px",
        "",
        "pxOrElse",
        "Lcoil/size/Dimension;",
        "block",
        "Lkotlin/Function0;",
        "coil-base_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final Dimension(I)Lcoil/size/Dimension$Pixels;
    .locals 1

    .line 50
    new-instance v0, Lcoil/size/Dimension$Pixels;

    invoke-direct {v0, p0}, Lcoil/size/Dimension$Pixels;-><init>(I)V

    return-object v0
.end method

.method public static final pxOrElse(Lcoil/size/Dimension;Lkotlin/jvm/functions/Function0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/size/Dimension;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 57
    instance-of v0, p0, Lcoil/size/Dimension$Pixels;

    if-eqz v0, :cond_0

    check-cast p0, Lcoil/size/Dimension$Pixels;

    iget p0, p0, Lcoil/size/Dimension$Pixels;->px:I

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method
