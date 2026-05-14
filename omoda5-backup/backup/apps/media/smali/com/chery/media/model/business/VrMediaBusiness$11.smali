.class Lcom/chery/media/model/business/VrMediaBusiness$11;
.super Ljava/lang/Object;
.source "VrMediaBusiness.java"

# interfaces
.implements Lcom/chery/media/model/business/MediaBusiness$OnAudioSourceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/VrMediaBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/VrMediaBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VrMediaBusiness;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness$11;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioSourceChanged(II)V
    .locals 0

    const/16 p1, 0xc

    if-eq p2, p1, :cond_0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    .line 237
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness$11;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-static {p0, p2}, Lcom/chery/media/model/business/VrMediaBusiness;->access$700(Lcom/chery/media/model/business/VrMediaBusiness;I)V

    :cond_1
    return-void
.end method
