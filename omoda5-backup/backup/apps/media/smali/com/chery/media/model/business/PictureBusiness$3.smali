.class Lcom/chery/media/model/business/PictureBusiness$3;
.super Landroid/database/ContentObserver;
.source "PictureBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/PictureBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/PictureBusiness;

.field final synthetic val$vehicleSpeedLimitUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/PictureBusiness;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/chery/media/model/business/PictureBusiness$3;->this$0:Lcom/chery/media/model/business/PictureBusiness;

    iput-object p3, p0, Lcom/chery/media/model/business/PictureBusiness$3;->val$vehicleSpeedLimitUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 181
    iget-object p1, p0, Lcom/chery/media/model/business/PictureBusiness$3;->val$vehicleSpeedLimitUri:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness$3;->this$0:Lcom/chery/media/model/business/PictureBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/PictureBusiness;->access$400(Lcom/chery/media/model/business/PictureBusiness;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "video_speed_limited"

    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "close"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->access$500(Lcom/chery/media/model/business/PictureBusiness;Z)V

    :cond_0
    return-void
.end method
