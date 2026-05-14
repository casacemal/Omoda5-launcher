.class Lcom/chery/media/view/fragment/DabPlayerFragment$22;
.super Ljava/lang/Object;
.source "DabPlayerFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/view/fragment/DabPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lsw/com/dabdrmradio/DabImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 433
    check-cast p1, Lsw/com/dabdrmradio/DabImage;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/DabPlayerFragment$22;->onChanged(Lsw/com/dabdrmradio/DabImage;)V

    return-void
.end method

.method public onChanged(Lsw/com/dabdrmradio/DabImage;)V
    .locals 2

    .line 436
    invoke-virtual {p1}, Lsw/com/dabdrmradio/DabImage;->getImagearray()[B

    move-result-object p1

    .line 437
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 438
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0xd2

    .line 440
    invoke-static {p1, v1, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 442
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$800(Lcom/chery/media/view/fragment/DabPlayerFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chery/media/view/fragment/DabPlayerFragment$22$1;

    invoke-direct {v1, p0, p1}, Lcom/chery/media/view/fragment/DabPlayerFragment$22$1;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment$22;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
